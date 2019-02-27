.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:I = 0x20

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x14

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field public static final JOB_FRESHNESS_BUCKETS:[J

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x15

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field public static final UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc

.field private static final sClk_File:Ljava/lang/String; = "/d/clk/enabled_clocks"

.field private static final sClk_SDM845_File:Ljava/lang/String; = "/d/clk/clk_enabled_list"

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sRPMFile:Ljava/lang/String; = "/d/rpm_stats"

.field private static final sRPMMasterFile:Ljava/lang/String; = "/d/rpm_master_stats"

.field private static final sRPMMaster_SDM845_File:Ljava/lang/String; = "/d/rpmh/master_stats"

.field private static final sRPM_SDM845_File:Ljava/lang/String; = "/d/rpmh/stats"

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 45

    const-string v0, "l"

    const-string v1, "c"

    const-string/jumbo v2, "u"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "dark"

    const-string v2, "dim"

    const-string/jumbo v3, "medium"

    const-string v4, "light"

    const-string v5, "bright"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const-string/jumbo v2, "none"

    const-string v3, "gprs"

    const-string v4, "edge"

    const-string/jumbo v5, "umts"

    const-string v6, "cdma"

    const-string v7, "evdo_0"

    const-string v8, "evdo_A"

    const-string v9, "1xrtt"

    const-string v10, "hsdpa"

    const-string v11, "hsupa"

    const-string v12, "hspa"

    const-string v13, "iden"

    const-string v14, "evdo_b"

    const-string/jumbo v15, "lte"

    const-string v16, "ehrpd"

    const-string v17, "hspap"

    const-string v18, "gsm"

    const-string/jumbo v19, "td_scdma"

    const-string v20, "iwlan"

    const-string/jumbo v21, "lte_ca"

    const-string/jumbo v22, "other"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const-string v2, "invalid"

    const-string v3, "disconn"

    const-string v4, "disabled"

    const-string v5, "inactive"

    const-string/jumbo v6, "scanning"

    const-string v7, "authenticating"

    const-string v8, "associating"

    const-string v9, "associated"

    const-string v10, "4-way-handshake"

    const-string v11, "group-handshake"

    const-string v12, "completed"

    const-string v13, "dormant"

    const-string/jumbo v14, "uninit"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string v2, "inv"

    const-string v3, "dsc"

    const-string v4, "dis"

    const-string v5, "inact"

    const-string/jumbo v6, "scan"

    const-string v7, "auth"

    const-string v8, "ascing"

    const-string v9, "asced"

    const-string v10, "4-way"

    const-string v11, "group"

    const-string v12, "compl"

    const-string v13, "dorm"

    const-string/jumbo v14, "uninit"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v1, 0x12

    new-array v1, v1, [Landroid/os/BatteryStats$BitDescription;

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "running"

    const-string/jumbo v4, "r"

    const/high16 v5, -0x80000000

    invoke-direct {v2, v5, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v4, "wake_lock"

    const-string/jumbo v5, "w"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v2, v6, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "sensor"

    const-string/jumbo v6, "s"

    const/high16 v7, 0x800000

    invoke-direct {v2, v7, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "gps"

    const-string v7, "g"

    const/high16 v8, 0x20000000

    invoke-direct {v2, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "wifi_full_lock"

    const-string v8, "Wl"

    const/high16 v9, 0x10000000

    invoke-direct {v2, v9, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_scan"

    const-string v9, "Ws"

    const/high16 v10, 0x8000000

    invoke-direct {v2, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_multicast"

    const-string v9, "Wm"

    const/high16 v10, 0x10000

    invoke-direct {v2, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "wifi_radio"

    const-string v10, "Wr"

    const/high16 v11, 0x4000000

    invoke-direct {v2, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "mobile_radio"

    const-string v11, "Pr"

    const/high16 v12, 0x2000000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "phone_scanning"

    const-string v12, "Psc"

    const/high16 v13, 0x200000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v12, "audio"

    const-string v13, "a"

    const/high16 v14, 0x400000

    invoke-direct {v2, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "screen"

    const-string v14, "S"

    const/high16 v15, 0x100000

    invoke-direct {v2, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    const/high16 v13, 0x80000

    invoke-direct {v2, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xc

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen_doze"

    const-string v15, "Sd"

    const/high16 v13, 0x40000

    invoke-direct {v2, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xd

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v17, "data_conn"

    const-string v18, "Pcn"

    sget-object v19, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v20, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v15, 0x3e00

    const/16 v16, 0x9

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v2, v1, v14

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v18, "phone_state"

    const-string v19, "Pst"

    const-string v15, "in"

    const-string/jumbo v14, "out"

    const-string v13, "emergency"

    const-string/jumbo v12, "off"

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v20

    const-string v12, "in"

    const-string/jumbo v13, "out"

    const-string v14, "em"

    const-string/jumbo v15, "off"

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x1c0

    const/16 v17, 0x6

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v12, 0xf

    aput-object v2, v1, v12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v16, "phone_signal_strength"

    const-string v17, "Pss"

    sget-object v18, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const-string v12, "0"

    const-string v13, "1"

    const-string v14, "2"

    const-string v15, "3"

    const-string v11, "4"

    filled-new-array {v12, v13, v14, v15, v11}, [Ljava/lang/String;

    move-result-object v19

    const/16 v14, 0x38

    const/4 v15, 0x3

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x10

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v15, "brightness"

    const-string v16, "Sb"

    sget-object v17, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v18, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x11

    aput-object v2, v1, v11

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x10

    new-array v1, v1, [Landroid/os/BatteryStats$BitDescription;

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v12, "ps"

    const/high16 v13, -0x80000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v12, "v"

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v12, "Ww"

    const/high16 v13, 0x20000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v12, "W"

    const/high16 v13, 0x10000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v12, "fl"

    const/high16 v13, 0x8000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v17, "device_idle"

    const-string v18, "di"

    const-string/jumbo v11, "off"

    const-string v12, "light"

    const-string v13, "full"

    const-string v14, "???"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v11, "off"

    const-string v12, "light"

    const-string v13, "full"

    const-string v14, "???"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v20

    const/high16 v15, 0x6000000

    const/16 v16, 0x19

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "charging"

    const-string v12, "ch"

    const/high16 v13, 0x1000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "usb_data"

    const-string v12, "Ud"

    const/high16 v13, 0x40000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "phone_in_call"

    const-string v12, "Pcl"

    const/high16 v13, 0x800000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "bluetooth"

    const-string v12, "b"

    const/high16 v13, 0x400000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v15, "wifi_signal_strength"

    const-string v16, "Wss"

    const-string v11, "0"

    const-string v12, "1"

    const-string v13, "2"

    const-string v14, "3"

    const-string v10, "4"

    filled-new-array {v11, v12, v13, v14, v10}, [Ljava/lang/String;

    move-result-object v17

    const-string v10, "0"

    const-string v11, "1"

    const-string v12, "2"

    const-string v13, "3"

    const-string v14, "4"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v18

    const/16 v13, 0x70

    const/4 v14, 0x4

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_suppl"

    const-string v15, "Wsp"

    sget-object v16, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v17, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xb

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "camera"

    const-string v11, "ca"

    const/high16 v12, 0x200000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xc

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "ble_scan"

    const-string v11, "bles"

    const/high16 v12, 0x100000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "cellular_high_tx_power"

    const-string v11, "Chtp"

    const/high16 v12, 0x80000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xe

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "gps_signal_quality"

    const-string v15, "Gss"

    const-string/jumbo v10, "poor"

    const-string v11, "good"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v10, "poor"

    const-string v11, "good"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v12, 0x80

    const/4 v13, 0x7

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xf

    aput-object v2, v1, v10

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v23, "null"

    const-string/jumbo v24, "proc"

    const-string v25, "fg"

    const-string/jumbo v26, "top"

    const-string/jumbo v27, "sync"

    const-string/jumbo v28, "wake_lock_in"

    const-string v29, "job"

    const-string/jumbo v30, "user"

    const-string/jumbo v31, "userfg"

    const-string v32, "conn"

    const-string v33, "active"

    const-string/jumbo v34, "pkginst"

    const-string/jumbo v35, "pkgunin"

    const-string v36, "alarm"

    const-string/jumbo v37, "stats"

    const-string/jumbo v38, "pkginactive"

    const-string/jumbo v39, "pkgactive"

    const-string/jumbo v40, "tmpwhitelist"

    const-string/jumbo v41, "screenwake"

    const-string/jumbo v42, "wakeupap"

    const-string/jumbo v43, "longwake"

    const-string v44, "est_capacity"

    filled-new-array/range {v23 .. v44}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v23, "Enl"

    const-string v24, "Epr"

    const-string v25, "Efg"

    const-string v26, "Etp"

    const-string v27, "Esy"

    const-string v28, "Ewl"

    const-string v29, "Ejb"

    const-string v30, "Eur"

    const-string v31, "Euf"

    const-string v32, "Ecn"

    const-string v33, "Eac"

    const-string v34, "Epi"

    const-string v35, "Epu"

    const-string v36, "Eal"

    const-string v37, "Est"

    const-string v38, "Eai"

    const-string v39, "Eaa"

    const-string v40, "Etw"

    const-string v41, "Esw"

    const-string v42, "Ewa"

    const-string v43, "Elw"

    const-string v44, "Eec"

    filled-new-array/range {v23 .. v44}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    sget-object v1, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;->INSTANCE:Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    sget-object v1, Landroid/os/-$$Lambda$BatteryStats$q1UvBdLgHRZVzc68BxdksTmbuCw;->INSTANCE:Landroid/os/-$$Lambda$BatteryStats$q1UvBdLgHRZVzc68BxdksTmbuCw;

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v1, 0x16

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v5

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v6

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v0, v1, v8

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v0, v1, v9

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "scanning"

    const-string/jumbo v5, "no_net"

    const-string v6, "disconn"

    const-string/jumbo v7, "sta"

    const-string/jumbo v8, "p2p"

    const-string/jumbo v9, "sta_p2p"

    const-string/jumbo v10, "soft_ap"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v1, "screen off"

    const-string/jumbo v2, "screen off power save"

    const-string/jumbo v3, "screen off device idle"

    const-string/jumbo v4, "screen on"

    const-string/jumbo v5, "screen on power save"

    const-string/jumbo v6, "screen doze"

    const-string/jumbo v7, "screen doze power save"

    const-string/jumbo v8, "screen doze-suspend"

    const-string/jumbo v9, "screen doze-suspend power save"

    const-string/jumbo v10, "screen doze-suspend device idle"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/os/BatteryStats;->timeout:J

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
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

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_2

    return v2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 6

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 11

    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    aget-object v6, v2, v3

    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    const/4 v13, 0x0

    if-ltz v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " (from "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v13

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " steps)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    move v3, v13

    :goto_0
    move v8, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v8, v3, :cond_3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v8

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v8

    int-to-long v6, v3

    move-object/from16 v3, p4

    move v14, v8

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v14

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " (from "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v13

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " steps)"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v14, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_1

    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_0

    const/4 v10, 0x5

    goto :goto_1

    :pswitch_0
    const/4 v10, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v10, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v10, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v10, 0x2

    nop

    :cond_1
    :goto_1
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_3

    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v14, v18

    :goto_2
    move v11, v14

    :cond_3
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v12, 0x0

    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_5

    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/16 v18, 0x3

    :goto_3
    move/from16 v12, v18

    :cond_5
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_1

    return v3

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const/16 v24, 0x2

    if-nez v23, :cond_3

    move/from16 v25, v4

    and-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v3, v7

    packed-switch v3, :pswitch_data_0

    const-string v3, "?"

    aput-object v3, v5, v24

    goto :goto_1

    :pswitch_0
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v24

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v24

    goto :goto_1

    :pswitch_2
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v24

    goto :goto_1

    :pswitch_3
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v24

    goto :goto_1

    :cond_3
    move/from16 v25, v4

    const-string v3, ""

    aput-object v3, v5, v24

    :goto_1
    and-long v3, v13, v17

    cmp-long v3, v3, v21

    const/4 v4, 0x3

    if-nez v3, :cond_5

    and-long v17, v11, v17

    cmp-long v3, v17, v21

    if-eqz v3, :cond_4

    const-string/jumbo v3, "p+"

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "p-"

    :goto_2
    aput-object v3, v5, v4

    goto :goto_3

    :cond_5
    const-string v3, ""

    aput-object v3, v5, v4

    :goto_3
    and-long v3, v13, v15

    cmp-long v3, v3, v21

    const/4 v4, 0x4

    if-nez v3, :cond_7

    and-long/2addr v15, v11

    cmp-long v3, v15, v21

    if-eqz v3, :cond_6

    const-string v3, "i+"

    goto :goto_4

    :cond_6
    const-string v3, "i-"

    :goto_4
    aput-object v3, v5, v4

    goto :goto_5

    :cond_7
    const-string v3, ""

    aput-object v3, v5, v4

    :goto_5
    const-string v3, "i"

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_8
    move/from16 v25, v4

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x0

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    if-nez v23, :cond_9

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/2addr v1, v7

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    const/4 v4, 0x1

    :cond_9
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    if-nez v1, :cond_c

    if-eqz v4, :cond_a

    const-string v1, ", "

    goto :goto_7

    :cond_a
    const-string v1, " ("

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v17

    cmp-long v1, v1, v21

    if-eqz v1, :cond_b

    const-string/jumbo v1, "power-save-on"

    goto :goto_8

    :cond_b
    const-string/jumbo v1, "power-save-off"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_c
    and-long v1, v13, v15

    cmp-long v1, v1, v21

    if-nez v1, :cond_f

    if-eqz v4, :cond_d

    const-string v1, ", "

    goto :goto_9

    :cond_d
    const-string v1, " ("

    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_e

    const-string v1, "device-idle-on"

    goto :goto_a

    :cond_e
    const-string v1, "device-idle-off"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_f
    if-eqz v4, :cond_10

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    move/from16 v25, v4

    return v7

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 28

    move-object/from16 v8, p1

    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v11, v1

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    move-wide v4, v3

    move-wide v2, v1

    const/4 v1, 0x0

    :goto_0
    move-object v13, v1

    move-object/from16 v14, p0

    invoke-virtual {v14, v11}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    const-wide/16 v15, 0x0

    if-eqz v1, :cond_11

    iget-wide v2, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v4, v15

    if-gez v1, :cond_0

    move-wide v4, v2

    :cond_0
    move-wide/from16 v17, v4

    iget-wide v4, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v4, p3

    if-ltz v1, :cond_10

    cmp-long v1, p3, v15

    const/16 v19, 0x1

    const/4 v7, 0x0

    if-ltz v1, :cond_e

    if-nez v6, :cond_e

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v1, v4, :cond_4

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v1, v5, :cond_4

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    move-wide v15, v2

    move-object/from16 v20, v13

    goto :goto_2

    :cond_1
    move-object/from16 v20, v13

    iget-wide v12, v11, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v1, v12, v15

    if-eqz v1, :cond_3

    const/4 v12, 0x1

    iget-byte v13, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v4, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_2

    move/from16 v6, v19

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    move-object v1, v8

    move-wide v15, v2

    move-object v2, v11

    move-wide/from16 v3, v17

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v13, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v21, v12

    move v12, v7

    goto :goto_4

    :cond_3
    move-wide v15, v2

    move/from16 v21, v6

    move v12, v7

    goto :goto_4

    :cond_4
    move-wide v15, v2

    move-object/from16 v20, v13

    :goto_2
    const/4 v12, 0x1

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_5

    move/from16 v13, v19

    goto :goto_3

    :cond_5
    move v13, v7

    :goto_3
    move-object v1, v0

    move-object v2, v8

    move-object v3, v11

    move-wide/from16 v4, v17

    move/from16 v6, p5

    move/from16 v21, v12

    move v12, v7

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v12, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_4
    if-eqz v20, :cond_d

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_7

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_6

    move/from16 v7, v19

    goto :goto_5

    :cond_6
    move v7, v12

    :goto_5
    move-object v1, v0

    move-object v2, v8

    move-object v3, v11

    move-wide/from16 v4, v17

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v12, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_7
    iget v13, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v7, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    new-instance v1, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v1, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move v1, v12

    :goto_6
    move v6, v1

    const/16 v1, 0x16

    if-ge v6, v1, :cond_c

    nop

    move-object/from16 v4, v20

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v5

    if-nez v5, :cond_8

    nop

    move-object/from16 v24, v4

    move/from16 v26, v6

    move-object v9, v7

    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    move/from16 v20, v12

    :goto_8
    move/from16 v22, v20

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    move/from16 v14, v22

    if-ge v14, v12, :cond_a

    iput v6, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v12, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/String;

    iput-object v2, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v2, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    iput v12, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v2, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    iput v12, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_9

    move/from16 v12, v19

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v22, v23

    move-object v2, v8

    move-object/from16 v23, v3

    move-object v3, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-wide/from16 v4, v17

    move/from16 v26, v6

    move/from16 v6, p5

    move-object v9, v7

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v10, 0x0

    iput-object v10, v11, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, v11, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v1, v14, 0x1

    move-object v7, v9

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v6, v26

    const/4 v12, 0x0

    move-object/from16 v14, p0

    move-object/from16 v27, v20

    move/from16 v20, v1

    move-object/from16 v1, v27

    goto :goto_8

    :cond_a
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object v9, v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_7

    :cond_b
    move-object/from16 v24, v4

    move/from16 v26, v6

    move-object v9, v7

    const/4 v10, 0x0

    :goto_a
    add-int/lit8 v1, v26, 0x1

    move-object v7, v9

    move-object/from16 v20, v24

    const/4 v12, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_6

    :cond_c
    move-object v9, v7

    move-object/from16 v24, v20

    const/4 v10, 0x0

    iput v13, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v9, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_b

    :cond_d
    move-object/from16 v24, v20

    const/4 v10, 0x0

    goto :goto_b

    :cond_e
    move-wide v15, v2

    move-object/from16 v24, v13

    const/4 v10, 0x0

    move/from16 v21, v6

    :goto_b
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_f

    move/from16 v7, v19

    goto :goto_c

    :cond_f
    const/4 v7, 0x0

    :goto_c
    move-object v1, v0

    move-object v2, v8

    move-object v3, v11

    move-wide/from16 v4, v17

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide v2, v15

    move/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_0

    :cond_10
    move-wide v15, v2

    move-object/from16 v24, v13

    move-wide/from16 v4, v17

    move-object/from16 v1, v24

    goto/16 :goto_0

    :cond_11
    move-object/from16 v24, v13

    cmp-long v1, p3, v15

    if-ltz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_12

    const-string v7, "NEXT: "

    goto :goto_d

    :cond_12
    const-string v7, "  NEXT: "

    :goto_d
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x1

    add-long/2addr v12, v2

    invoke-virtual {v8, v12, v13}, Ljava/io/PrintWriter;->println(J)V

    :cond_13
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V
    .locals 90
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    mul-long v14, v12, v2

    move-object/from16 v6, p0

    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    if-nez v17, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object/from16 v8, v17

    :goto_1
    move/from16 v18, v1

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p3

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v19, v1

    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move/from16 v20, v9

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v1, v9, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v19

    move/from16 v9, v20

    goto :goto_2

    :cond_3
    move-object/from16 v19, v1

    move/from16 v20, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    if-ge v2, v1, :cond_26

    move/from16 v21, v1

    const-wide v0, 0x20b00000005L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroid/os/BatteryStats$Uid;

    move-wide/from16 v23, v0

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v26, v2

    move-object/from16 v25, v3

    const-wide v2, 0x10500000001L

    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move-object/from16 v3, v25

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    goto :goto_5

    :cond_4
    move-object v2, v0

    :goto_5
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v29, v1

    const/4 v1, 0x1

    add-int/lit8 v17, v17, -0x1

    :goto_6
    move/from16 v30, v17

    const-wide/16 v31, 0x0

    move-object/from16 v33, v2

    move/from16 v1, v30

    if-ltz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-nez v17, :cond_5

    nop

    move-object/from16 v44, v3

    move-wide/from16 v45, v4

    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v38, v9

    move-wide/from16 v36, v10

    move-wide/from16 v42, v12

    move-wide/from16 v39, v14

    move-object/from16 v50, v33

    goto/16 :goto_9

    :cond_5
    move-object/from16 v38, v9

    move-wide/from16 v36, v10

    move-wide/from16 v39, v14

    const-wide v9, 0x20b00000002L

    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v9, 0x10900000001L

    invoke-virtual {v7, v9, v10, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v9, v33

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_7
    if-ltz v10, :cond_7

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v41, v2

    move-wide/from16 v42, v12

    const/4 v2, 0x0

    invoke-virtual {v11, v4, v5, v2}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v12

    move-object/from16 v44, v3

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v3

    move-wide/from16 v45, v4

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v4

    cmp-long v5, v12, v31

    if-nez v5, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    nop

    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    goto :goto_8

    :cond_6
    move/from16 v47, v3

    move-object/from16 v48, v6

    const-wide v2, 0x20b00000002L

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    const-wide v8, 0x10900000001L

    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10300000002L

    invoke-virtual {v7, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000003L

    move/from16 v8, v47

    invoke-virtual {v7, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    invoke-virtual {v7, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_8
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, v41

    move-wide/from16 v12, v42

    move-object/from16 v3, v44

    move-wide/from16 v4, v45

    move-object/from16 v6, v48

    move-object/from16 v8, v49

    move-object/from16 v9, v50

    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_7
    move-object/from16 v41, v2

    move-object/from16 v44, v3

    move-wide/from16 v45, v4

    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-wide/from16 v42, v12

    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_9
    add-int/lit8 v17, v1, -0x1

    move-object/from16 v0, v35

    move-wide/from16 v10, v36

    move-object/from16 v9, v38

    move-wide/from16 v14, v39

    move-wide/from16 v12, v42

    move-object/from16 v3, v44

    move-wide/from16 v4, v45

    move-object/from16 v6, v48

    move-object/from16 v8, v49

    move-object/from16 v2, v50

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_8
    move-object/from16 v35, v0

    move-object/from16 v44, v3

    move-wide/from16 v45, v4

    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v38, v9

    move-wide/from16 v36, v10

    move-wide/from16 v42, v12

    move-wide/from16 v39, v14

    move-object/from16 v50, v33

    move-object/from16 v1, v50

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v8, 0x10900000001L

    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_a

    :cond_9
    const-wide v3, 0x20b00000002L

    const-wide v8, 0x10900000001L

    move-object/from16 v6, v48

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-wide v10, 0x10300000001L

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide/from16 v12, v42

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v16

    goto :goto_b

    :cond_a
    move-wide/from16 v16, v31

    :goto_b
    move-wide/from16 v51, v16

    const-wide v3, 0x10b00000018L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v7, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v8, v51

    const-wide v10, 0x10300000002L

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_c

    :cond_b
    move-wide/from16 v12, v42

    const-wide v10, 0x10300000002L

    :goto_c
    const-wide v2, 0x10b00000008L

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v8, 0x0

    move-wide/from16 v14, v23

    move-object/from16 v9, v35

    move-object v0, v7

    move-object/from16 v17, v1

    move-object/from16 v10, v19

    move/from16 v11, v21

    move/from16 v16, v26

    move/from16 v5, v29

    move-wide v1, v2

    move-object/from16 v18, v44

    move-object v3, v4

    move/from16 v53, v5

    move-wide/from16 v23, v45

    move-wide/from16 v4, v39

    move-object/from16 v54, v10

    move-object v10, v6

    move v6, v8

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000003L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v7, v0, v1, v2, v8}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    if-eqz v19, :cond_e

    const-wide v0, 0x10b00000006L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v3, v19

    move-wide/from16 v55, v4

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000002L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10500000005L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    goto :goto_d

    :cond_c
    move v2, v8

    :goto_d
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    goto :goto_e

    :cond_d
    move v2, v8

    :goto_e
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v0, v55

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_e
    const-wide v1, 0x10b00000009L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000007L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v1, v0

    array-length v2, v6

    if-ne v1, v2, :cond_10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v1

    if-nez v1, :cond_f

    array-length v2, v0

    new-array v1, v2, [J

    :cond_f
    move v2, v8

    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_10

    move-object/from16 v57, v9

    const-wide v8, 0x20b00000003L

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    add-int/lit8 v3, v2, 0x1

    move/from16 v60, v11

    move-wide/from16 v58, v12

    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v11, v0, v2

    move-wide/from16 v61, v14

    const-wide v13, 0x10300000002L

    invoke-virtual {v7, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v11, v1, v2

    const-wide v13, 0x10300000003L

    invoke-virtual {v7, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v57

    move-wide/from16 v12, v58

    move/from16 v11, v60

    move-wide/from16 v14, v61

    const/4 v8, 0x0

    goto :goto_f

    :cond_10
    move-object/from16 v57, v9

    move/from16 v60, v11

    move-wide/from16 v58, v12

    move-wide/from16 v61, v14

    const/4 v0, 0x0

    :goto_10
    const-wide v8, 0x10e00000001L

    const/4 v11, 0x7

    if-ge v0, v11, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v2

    if-eqz v2, :cond_13

    array-length v3, v2

    array-length v11, v6

    if-ne v3, v11, :cond_13

    invoke-virtual {v10, v1, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v3

    if-nez v3, :cond_11

    array-length v1, v2

    new-array v3, v1, [J

    :cond_11
    const-wide v11, 0x20b00000004L

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    invoke-virtual {v7, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    :goto_11
    array-length v8, v2

    if-ge v1, v8, :cond_12

    const-wide v13, 0x20b00000002L

    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    add-int/lit8 v15, v1, 0x1

    const-wide v13, 0x10500000001L

    invoke-virtual {v7, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v13, v2, v1

    move-wide/from16 v63, v4

    const-wide v4, 0x10300000002L

    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v13, v3, v1

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v63

    goto :goto_11

    :cond_12
    move-wide/from16 v63, v4

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_12

    :cond_13
    move-wide/from16 v63, v4

    const-wide v4, 0x10300000003L

    :goto_12
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v63

    goto :goto_10

    :cond_14
    move-wide/from16 v63, v4

    const-wide v4, 0x10300000003L

    move-wide/from16 v12, v63

    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v14, 0x0

    move-object v0, v7

    move-wide/from16 v65, v12

    const-wide v11, 0x10300000002L

    move-wide/from16 v21, v65

    move-wide/from16 v4, v39

    move-object v13, v6

    move v6, v14

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v14

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    move-object v15, v0

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-eqz v1, :cond_16

    const-wide v2, 0x20b00000010L

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v7, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    array-length v6, v15

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v6, :cond_15

    aget v12, v15, v11

    move-object/from16 v67, v13

    move-object/from16 v68, v14

    const-wide v4, 0x20b00000002L

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    invoke-virtual {v1, v12, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const-wide v8, 0x10500000002L

    invoke-virtual {v7, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v67

    move-object/from16 v14, v68

    const-wide v8, 0x10e00000001L

    goto :goto_14

    :cond_15
    move-object/from16 v67, v13

    move-object/from16 v68, v14

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_15

    :cond_16
    move-object/from16 v67, v13

    move-object/from16 v68, v14

    :goto_15
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, v67

    move-object/from16 v14, v68

    const-wide v8, 0x10e00000001L

    const-wide v11, 0x10300000002L

    goto :goto_13

    :cond_17
    move-object/from16 v67, v13

    move-object/from16 v68, v14

    const-wide v8, 0x10500000002L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    :goto_16
    move v13, v0

    if-ltz v13, :cond_18

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v25

    const-wide v0, 0x20b0000000fL

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, v14

    move-wide v8, v4

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v3, v25

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v13, -0x1

    const-wide v8, 0x10500000002L

    goto :goto_16

    :cond_18
    const-wide v0, 0x10b00000004L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b00000011L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    nop

    invoke-virtual {v10, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000001L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v10, v12, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000002L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v13, 0x2

    invoke-virtual {v10, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000004L

    const/4 v2, 0x3

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000005L

    const/4 v2, 0x4

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000006L

    const/4 v2, 0x5

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    invoke-virtual {v10, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000008L

    invoke-virtual {v10, v12, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000009L

    invoke-virtual {v10, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000aL

    const/4 v2, 0x3

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000bL

    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000cL

    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000dL

    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000eL

    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000fL

    const/4 v2, 0x6

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000010L

    const/4 v2, 0x7

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000011L

    const/16 v2, 0x8

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000012L

    const/16 v2, 0x9

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000013L

    const/4 v2, 0x6

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000014L

    const/4 v2, 0x7

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000015L

    const/16 v2, 0x8

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000016L

    const/16 v2, 0x9

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v14, v49

    move/from16 v6, v53

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    if-eqz v4, :cond_19

    const-wide v0, 0x10b00000012L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10100000001L

    move-object/from16 v69, v14

    iget-wide v13, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v7, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10800000002L

    iget-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v7, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10100000003L

    iget-wide v13, v4, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v7, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10100000004L

    iget-wide v13, v4, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v7, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_17

    :cond_19
    move-object/from16 v69, v14

    :goto_17
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_18
    if-ltz v0, :cond_1a

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v2, 0x20b00000013L

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v70, v13

    const-wide v12, 0x10900000001L

    invoke-virtual {v7, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v12

    move/from16 v71, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v7, v5, v6, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    const-wide v5, 0x10300000003L

    invoke-virtual {v7, v5, v6, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000004L

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v5

    invoke-virtual {v7, v12, v13, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000005L

    invoke-virtual {v1, v14}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v12

    invoke-virtual {v7, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000006L

    invoke-virtual {v1, v14}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v12

    invoke-virtual {v7, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000007L

    invoke-virtual {v1, v14}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v12

    invoke-virtual {v7, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v13, v70

    move/from16 v6, v71

    const/4 v12, 0x1

    goto :goto_18

    :cond_1a
    move/from16 v71, v6

    move-object/from16 v70, v13

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v12

    const/4 v0, 0x0

    :goto_19
    move v13, v0

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_1c

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v25

    if-nez v25, :cond_1b

    nop

    move-object/from16 v27, v4

    move/from16 v28, v71

    const-wide v33, 0x10500000001L

    goto :goto_1a

    :cond_1b
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v26

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v0, 0x20b00000015L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v72, v1

    const-wide v1, 0x10500000001L

    invoke-virtual {v7, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v27, 0x10b00000002L

    const/16 v29, 0x0

    move-object v0, v7

    move-wide/from16 v33, v1

    move-wide/from16 v74, v72

    move-wide/from16 v1, v27

    move-object/from16 v3, v25

    move-object/from16 v27, v4

    move-wide/from16 v4, v39

    move/from16 v30, v6

    move/from16 v28, v71

    move/from16 v6, v29

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v26

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v74

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1a
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v4, v27

    move/from16 v71, v28

    goto :goto_19

    :cond_1c
    move-object/from16 v27, v4

    move/from16 v28, v71

    const/4 v0, 0x0

    :goto_1b
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1e

    move-wide/from16 v13, v39

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v13, v14, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    cmp-long v4, v2, v31

    if-nez v4, :cond_1d

    nop

    move-wide/from16 v78, v8

    goto :goto_1c

    :cond_1d
    const-wide v4, 0x20b00000014L

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-wide/from16 v76, v2

    const-wide v1, 0x10e00000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v78, v8

    move-wide/from16 v1, v76

    const-wide v8, 0x10300000002L

    invoke-virtual {v7, v8, v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v39, v13

    move-wide/from16 v8, v78

    goto :goto_1b

    :cond_1e
    move-wide/from16 v78, v8

    move-wide/from16 v13, v39

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1d
    move v9, v0

    if-ltz v9, :cond_1f

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v25

    const-wide v0, 0x20b00000016L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/16 v26, 0x0

    move-object v0, v7

    move-object v3, v6

    move-wide/from16 v80, v4

    move-wide v4, v13

    move-object/from16 v29, v6

    move/from16 v6, v26

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v25

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v80

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v9, -0x1

    goto :goto_1d

    :cond_1f
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_1e
    const/4 v1, 0x4

    if-ge v0, v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_20

    const-wide v3, 0x20b00000017L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v82, v8

    const-wide v8, 0x10500000002L

    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1f

    :cond_20
    move-object/from16 v82, v8

    const-wide v5, 0x10e00000001L

    const-wide v8, 0x10500000002L

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v82

    goto :goto_1e

    :cond_21
    move-object/from16 v82, v8

    const-wide v8, 0x10500000002L

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v4, v13

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000eL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_20
    move v4, v0

    if-ltz v4, :cond_23

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v0, 0x20b00000019L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v8, 0x10900000001L

    invoke-virtual {v7, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x10b00000002L

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v25, 0x0

    move-object v0, v7

    move-wide/from16 v83, v1

    move-wide v1, v8

    move v8, v4

    move-object v9, v5

    move-wide v4, v13

    move-object/from16 v26, v6

    move/from16 v6, v25

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_22

    const-wide v1, 0x10b00000003L

    const/16 v25, 0x0

    move-object v0, v7

    move-object v3, v6

    move-wide v4, v13

    move-object/from16 v85, v11

    move-object v11, v6

    move/from16 v6, v25

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    goto :goto_21

    :cond_22
    move-object/from16 v85, v11

    move-object v11, v6

    :goto_21
    const-wide v1, 0x10b00000005L

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v25, 0x0

    move-object v0, v7

    move-wide v4, v13

    move/from16 v29, v6

    move/from16 v6, v25

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v83

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v8, -0x1

    move-object/from16 v6, v26

    move-object/from16 v11, v85

    const-wide v8, 0x10500000002L

    goto/16 :goto_20

    :cond_23
    move-object/from16 v26, v6

    move-object/from16 v85, v11

    const-wide v1, 0x10b0000001cL

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v4, v13

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-object/from16 v8, v57

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_22
    if-ltz v0, :cond_25

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_23
    if-ltz v3, :cond_24

    const-wide v5, 0x20b0000001aL

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-wide/from16 v86, v5

    const-wide v4, 0x10900000001L

    invoke-virtual {v7, v4, v5, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    const-wide v4, 0x10500000002L

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v4, v86

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    goto :goto_23

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_25
    const-wide v0, 0x10b00000005L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b0000001bL

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    nop

    invoke-virtual {v10, v13, v14, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-wide/from16 v88, v4

    move-wide v4, v13

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    const/4 v9, 0x0

    invoke-virtual {v10, v13, v14, v9}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v88

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v61

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v16, 0x1

    move-object/from16 v6, p0

    move-wide v14, v13

    move-object/from16 v3, v18

    move-wide/from16 v4, v23

    move-wide/from16 v10, v36

    move-object/from16 v9, v38

    move-object/from16 v19, v54

    move-wide/from16 v12, v58

    move/from16 v1, v60

    move-object/from16 v8, v69

    goto/16 :goto_4

    :cond_26
    move/from16 v60, v1

    move-object/from16 v18, v3

    move-wide/from16 v23, v4

    move-object/from16 v69, v8

    move-object/from16 v38, v9

    move-wide/from16 v36, v10

    move-wide/from16 v58, v12

    move-wide v13, v14

    move-object/from16 v54, v19

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x10500000001L

    const/16 v0, 0x20

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000002L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x10900000003L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10900000004L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v7

    if-ge v6, v7, :cond_1

    const-wide v7, 0x20b00000005L

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {v9, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v4, v5, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v3, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v11, v3

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-wide v13, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    invoke-virtual {v1, v11}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v3

    const-wide/16 v15, 0x0

    if-eqz v3, :cond_13

    iget-wide v0, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v13, v15

    if-gez v3, :cond_2

    move-wide v3, v0

    move-wide v13, v3

    :cond_2
    iget-wide v3, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v3, p3

    if-ltz v3, :cond_12

    cmp-long v3, p3, v15

    const/16 v18, 0x1

    if-ltz v3, :cond_10

    if-nez v7, :cond_10

    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v5, :cond_6

    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6

    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v5, v11, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v5, v15

    if-eqz v3, :cond_5

    const/4 v15, 0x1

    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v7, v3

    iput-byte v4, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_4

    move/from16 v16, v18

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    move-object v3, v9

    move-object v4, v11

    move-wide v5, v13

    move v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v12, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move-wide/from16 v19, v0

    move-object v0, v8

    move v12, v15

    goto :goto_5

    :cond_5
    move-wide/from16 v19, v0

    move v12, v7

    move-object v0, v8

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v12, 0x1

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_7

    move/from16 v15, v18

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    move-object v3, v2

    move-object v4, v9

    move-object v5, v11

    move-wide v6, v13

    move-wide/from16 v19, v0

    move-object v0, v8

    move v8, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v1, 0x0

    iput-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_5
    if-eqz v0, :cond_f

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_9

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_8

    move/from16 v8, v18

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    move-object v3, v2

    move-object v4, v9

    move-object v5, v11

    move-wide v6, v13

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v1, 0x0

    iput-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    iget v3, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v8, v3

    iget-object v3, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v6, v3

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move v3, v1

    :goto_8
    move v7, v3

    const/16 v3, 0x16

    if-ge v7, v3, :cond_e

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object v5, v3

    if-nez v5, :cond_a

    nop

    move-object/from16 v23, v0

    move-object v1, v6

    move/from16 v21, v7

    move v10, v8

    move/from16 v24, v12

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_a
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseIntArray;

    move-object/from16 v21, v15

    move v15, v1

    :goto_a
    move/from16 v22, v15

    move-object/from16 v23, v0

    move-object/from16 v1, v21

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    move/from16 v24, v12

    move/from16 v12, v22

    if-ge v12, v0, :cond_c

    iput v7, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v25, v3

    move-object v3, v15

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_b

    move/from16 v0, v18

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    move-object/from16 v15, v25

    move-object v3, v2

    move-object/from16 v16, v4

    move-object v4, v9

    move-object/from16 v17, v5

    move-object v5, v11

    move-object/from16 v26, v1

    move-object v1, v6

    move/from16 v21, v7

    move-wide v6, v13

    move v10, v8

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v0, 0x0

    iput-object v0, v11, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, v11, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v3, v12, 0x1

    move-object v6, v1

    move v8, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v7, v21

    move-object/from16 v0, v23

    move/from16 v12, v24

    move-object/from16 v21, v26

    const/4 v1, 0x0

    move-object/from16 v28, v15

    move v15, v3

    move-object/from16 v3, v28

    goto :goto_a

    :cond_c
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v1, v6

    move/from16 v21, v7

    move v10, v8

    const/4 v0, 0x0

    move-object/from16 v0, v23

    move/from16 v12, v24

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_d
    move-object/from16 v23, v0

    move-object v1, v6

    move/from16 v21, v7

    move v10, v8

    move/from16 v24, v12

    const/4 v0, 0x0

    :goto_c
    add-int/lit8 v3, v21, 0x1

    move-object v6, v1

    move v8, v10

    move-object/from16 v0, v23

    move/from16 v12, v24

    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_e
    move-object/from16 v23, v0

    move-object v1, v6

    move v10, v8

    move/from16 v24, v12

    const/4 v0, 0x0

    iput v10, v11, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v1, v11, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move-object/from16 v23, v1

    goto :goto_d

    :cond_f
    move-object/from16 v23, v0

    move/from16 v24, v12

    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    move-wide/from16 v19, v0

    move-object/from16 v23, v8

    const/4 v0, 0x0

    move/from16 v24, v7

    :goto_d
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_11

    move/from16 v8, v18

    goto :goto_e

    :cond_11
    const/4 v8, 0x0

    :goto_e
    move-object v3, v2

    move-object v4, v9

    move-object v5, v11

    move-wide v6, v13

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    move-wide/from16 v4, v19

    move-object/from16 v3, v23

    move/from16 v7, v24

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_12
    move-wide/from16 v19, v0

    move-object/from16 v23, v8

    move-wide/from16 v4, v19

    move-object/from16 v3, v23

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v23, v8

    cmp-long v0, p3, v15

    if-ltz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NEXT: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v15, 0x1

    add-long v0, v4, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v2

    const-wide v1, 0x20900000006L

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0
.end method

.method private dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 99

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long v13, v1, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    mul-long v5, v15, v11

    const/16 v17, 0x0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    move-wide/from16 v20, v9

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    const-wide/16 v18, 0x3e8

    div-long v11, v22, v18

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000004L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000005L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000006L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000007L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000008L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000009L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000bL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v11, 0x10b00000002L

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000001L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000003L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000004L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000005L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    move-wide/from16 v37, v2

    const-wide v1, 0x10300000006L

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000007L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000008L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000009L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x1030000000aL

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_1
    const-wide v3, 0x10300000004L

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :goto_1
    const-wide v1, 0x20b00000005L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    move v1, v7

    :goto_2
    move v4, v1

    const/16 v1, 0x15

    const/4 v7, 0x1

    if-ge v4, v1, :cond_5

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    move v1, v4

    const/16 v2, 0x14

    if-ne v4, v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    move v2, v1

    move-wide/from16 v43, v5

    const-wide v5, 0x20b00000008L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    if-eqz v7, :cond_4

    move-wide/from16 v45, v5

    const-wide v5, 0x10800000002L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_4

    :cond_4
    move-wide/from16 v45, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_4
    const-wide v5, 0x10b00000003L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v22

    const/16 v23, 0x0

    move-object v1, v8

    move/from16 v39, v2

    move-wide v2, v5

    move/from16 v40, v4

    move-object/from16 v4, v22

    move-wide/from16 v47, v43

    move-wide/from16 v49, v45

    move-wide/from16 v5, v47

    move/from16 v22, v7

    move-wide/from16 v51, v9

    const/4 v9, 0x0

    move/from16 v7, v23

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v49

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v40, 0x1

    move v7, v9

    move-wide/from16 v9, v51

    goto :goto_2

    :cond_5
    move-wide/from16 v47, v5

    move-wide/from16 v51, v9

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    const-wide v1, 0x20b00000006L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v10

    if-eqz v10, :cond_6

    array-length v1, v10

    move v2, v9

    :goto_5
    if-ge v2, v1, :cond_6

    aget-wide v3, v10, v2

    const-wide v5, 0x20300000007L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v2, v2, 0x1

    const-wide v5, 0x10e00000001L

    goto :goto_5

    :cond_6
    const-wide v1, 0x10b00000009L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000aL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000002L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000005L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000006L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v53, v5

    const-wide v4, 0x10300000003L

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v5, 0x10300000007L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v5, 0x10300000008L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v5, 0x10300000009L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v5, 0x1030000000aL

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v5, v53

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    nop

    move-wide/from16 v7, v47

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v22

    move-wide/from16 v55, v5

    const-wide/16 v18, 0x3e8

    div-long v4, v22, v18

    move-wide v6, v7

    move-object/from16 v57, v10

    move-object/from16 v8, p1

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v4

    div-long v4, v4, v18

    const-wide v9, 0x10300000002L

    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    move-wide/from16 v58, v2

    const-wide v1, 0x20b0000000eL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v60, v2

    const-wide v1, 0x10900000001L

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v22, 0x0

    move-object v1, v8

    move-wide/from16 v33, v58

    move-wide/from16 v62, v60

    move-object/from16 v23, v5

    move-wide/from16 v64, v6

    move-wide/from16 v35, v55

    move-wide/from16 v5, v64

    move-object/from16 v66, v9

    const/4 v9, 0x1

    move/from16 v7, v22

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v62

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    move-wide/from16 v2, v33

    move-wide/from16 v6, v64

    move-object/from16 v9, v66

    goto :goto_6

    :cond_7
    move-wide/from16 v33, v2

    move-wide/from16 v64, v6

    move-object/from16 v66, v9

    move-wide/from16 v35, v55

    const/4 v9, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    move-wide/from16 v22, v1

    move-wide/from16 v39, v3

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v9

    :goto_8
    if-ltz v4, :cond_a

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-wide/from16 v2, v64

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v41

    add-long v22, v22, v41

    goto :goto_9

    :cond_8
    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-wide/from16 v2, v64

    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9, v2, v3, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v41

    add-long v39, v39, v41

    :cond_9
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v64, v2

    move-object/from16 v2, v67

    move-object/from16 v3, v68

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    move-wide/from16 v2, v64

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    move-wide/from16 v2, v64

    const-wide v4, 0x10b0000000fL

    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v41

    move-wide/from16 v69, v2

    const-wide/16 v18, 0x3e8

    div-long v1, v41, v18

    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    move-wide/from16 v2, v69

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v41

    move-object/from16 v71, v10

    div-long v9, v41, v18

    move-wide/from16 v72, v11

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v9, v22, v18

    const-wide v11, 0x10300000003L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v9, v39, v18

    const-wide v11, 0x10300000004L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v18

    const-wide v11, 0x10300000005L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v9

    div-long v9, v9, v18

    const-wide v11, 0x10300000006L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000007L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-virtual {v8, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000008L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v18

    const-wide v11, 0x10300000009L

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    div-long v9, v9, v18

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000bL

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    invoke-virtual {v8, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x1030000000cL

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000dL

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x1030000000eL

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000fL

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10300000010L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000011L

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000012L

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10300000013L

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000014L

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10300000015L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v9

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v11

    move-wide/from16 v74, v2

    const-wide v1, 0x10b00000017L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v76, v5

    const-wide/16 v18, 0x3e8

    div-long v4, v9, v18

    const-wide v6, 0x10300000001L

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10500000002L

    invoke-virtual {v8, v4, v5, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_c

    const/4 v1, 0x0

    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-wide/from16 v78, v2

    iget-object v2, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_0

    :goto_b
    const/4 v7, 0x0

    goto :goto_c

    :pswitch_0
    const/16 v5, 0xc

    goto :goto_b

    :pswitch_1
    const/16 v5, 0xb

    goto :goto_b

    :pswitch_2
    const/16 v5, 0xa

    goto :goto_b

    :pswitch_3
    const/16 v5, 0x9

    goto :goto_b

    :pswitch_4
    const/16 v5, 0x8

    iget v2, v4, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    goto :goto_c

    :pswitch_5
    const/4 v7, 0x0

    move-wide/from16 v80, v9

    goto :goto_d

    :pswitch_6
    const/4 v7, 0x0

    const/4 v5, 0x6

    goto :goto_c

    :pswitch_7
    const/4 v7, 0x0

    const/4 v5, 0x7

    goto :goto_c

    :pswitch_8
    const/4 v7, 0x0

    const/4 v5, 0x5

    goto :goto_c

    :pswitch_9
    const/4 v7, 0x0

    const/4 v5, 0x4

    goto :goto_c

    :pswitch_a
    const/4 v7, 0x0

    const/4 v5, 0x3

    goto :goto_c

    :pswitch_b
    const/4 v7, 0x0

    const/4 v5, 0x2

    goto :goto_c

    :pswitch_c
    const/4 v7, 0x0

    const/4 v5, 0x1

    goto :goto_c

    :pswitch_d
    const/4 v7, 0x0

    const/16 v5, 0xd

    nop

    :goto_c
    const-wide v2, 0x20b00000011L

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v80, v9

    const-wide v9, 0x10e00000001L

    invoke-virtual {v8, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10100000003L

    move/from16 v82, v5

    move/from16 v83, v6

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v8, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v5, 0x10800000004L

    iget-boolean v9, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v8, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10100000005L

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v5, 0x10100000006L

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v78

    move-wide/from16 v9, v80

    goto/16 :goto_a

    :cond_c
    move-wide/from16 v78, v2

    move-wide/from16 v80, v9

    const/4 v7, 0x0

    const-wide v1, 0x10b00000012L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v1, 0x10100000001L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000003L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000004L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v84, v4

    const-wide v3, 0x20b00000013L

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v7, 0x10900000001L

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v85, v3

    move-wide v3, v7

    move-object/from16 v8, p1

    invoke-virtual {v8, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10b00000002L

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/BatteryStats$Timer;

    const/16 v18, 0x0

    move-object v1, v8

    move-wide/from16 v87, v9

    move/from16 v89, v11

    move-wide/from16 v24, v74

    move-wide/from16 v26, v78

    move-wide/from16 v10, v85

    move-object v9, v2

    move-wide v2, v3

    move-object/from16 v19, v84

    move-object v4, v7

    move-object/from16 v30, v5

    move-object v7, v6

    move-wide/from16 v28, v76

    move-wide/from16 v5, v24

    move-object/from16 v90, v12

    const/16 v31, 0x0

    move-object v12, v7

    move/from16 v7, v18

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v2, 0x10b00000003L

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    move-object v6, v12

    move-object/from16 v4, v19

    move-object/from16 v5, v30

    move/from16 v7, v31

    move-wide/from16 v9, v87

    move/from16 v11, v89

    move-object/from16 v12, v90

    goto/16 :goto_e

    :cond_d
    move-object/from16 v30, v5

    move/from16 v31, v7

    move-wide/from16 v87, v9

    move/from16 v89, v11

    move-object/from16 v90, v12

    move-wide/from16 v24, v74

    move-wide/from16 v28, v76

    move-wide/from16 v26, v78

    move-object v12, v6

    move/from16 v1, v31

    :goto_f
    move v9, v1

    const/4 v1, 0x5

    if-ge v9, v1, :cond_e

    const-wide v1, 0x20b00000014L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v9, 0x1

    goto :goto_f

    :cond_e
    const-wide v2, 0x10b00000015L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move/from16 v1, v31

    :goto_10
    move v9, v1

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v9, v1, :cond_f

    const-wide v1, 0x20b00000010L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v9, 0x1

    goto :goto_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000016L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10900000001L

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v91, v5

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v91

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_11

    :cond_10
    move/from16 v1, v31

    :goto_12
    move v10, v1

    const/4 v1, 0x5

    if-ge v10, v1, :cond_11

    const-wide v1, 0x20b00000018L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v93, v5

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v93

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v10, 0x1

    goto :goto_12

    :cond_11
    move/from16 v1, v31

    :goto_13
    move v10, v1

    const/16 v1, 0x8

    if-ge v10, v1, :cond_12

    const-wide v1, 0x20b00000019L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v95, v5

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v95

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v10, 0x1

    goto :goto_13

    :cond_12
    nop

    :goto_14
    move/from16 v10, v31

    const/16 v1, 0xd

    if-ge v10, v1, :cond_13

    const-wide v1, 0x20b0000001aL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v18, 0x10b00000002L

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-wide/from16 v31, v2

    move-wide/from16 v2, v18

    move-wide/from16 v97, v5

    move-wide/from16 v5, v24

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v97

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v10, 0x1

    move/from16 v31, v1

    goto :goto_14

    :cond_13
    move-wide/from16 v1, v20

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

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

.method private dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v2, v1, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-wide v8, p0, Landroid/os/BatteryStats;->timeout:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    const-string v6, "**** Exceed read timeout, force exit ***"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

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

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

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

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    nop

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    nop

    :cond_3
    :goto_3
    throw v3
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v3

    move/from16 v5, p6

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    const-wide/16 v7, 0x3e8

    div-long v9, p4, v7

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    div-long v11, p4, v7

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    div-long v7, p4, v7

    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v7

    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    const-wide/16 v14, -0x1

    if-nez v13, :cond_1

    if-nez v6, :cond_1

    cmp-long v13, v9, v14

    if-nez v13, :cond_1

    cmp-long v13, v11, v14

    if-nez v13, :cond_1

    cmp-long v13, v7, v14

    if-eqz v13, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v16, v1

    const-wide v1, 0x10300000001L

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    cmp-long v1, v9, v14

    if-eqz v1, :cond_2

    const-wide v1, 0x10300000003L

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    cmp-long v1, v11, v14

    if-eqz v1, :cond_3

    const-wide v1, 0x10300000004L

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    cmp-long v1, v7, v14

    if-eqz v1, :cond_4

    const-wide v1, 0x10300000005L

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_4
    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_5
    return-void
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 6

    if-eqz p4, :cond_1

    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13

    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    cmp-long v10, v8, v2

    if-nez v10, :cond_1

    cmp-long v10, v6, v2

    if-eqz v10, :cond_2

    :cond_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    sub-long v10, p1, v6

    div-long/2addr v10, v4

    cmp-long v12, v10, v2

    if-nez v12, :cond_3

    cmp-long v12, v6, v2

    if-eqz v12, :cond_4

    :cond_3
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    :cond_5
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public static synthetic lambda$q1UvBdLgHRZVzc68BxdksTmbuCw(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToInternalProcessState(I)I
    .locals 3

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v2, 0x5

    if-gt p0, v2, :cond_3

    return v0

    :cond_3
    const/16 v0, 0xa

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0xb

    if-gt p0, v0, :cond_5

    const/4 v0, 0x4

    return v0

    :cond_5
    const/16 v0, 0xc

    if-gt p0, v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x6

    return v0
.end method

.method static printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 6

    xor-int v0, p1, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_a

    aget-object v3, p4, v2

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    if-eqz p5, :cond_1

    const-string v4, " "

    goto :goto_1

    :cond_1
    const-string v4, ","

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v4, :cond_5

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    const-string v4, "+"

    goto :goto_2

    :cond_2
    const-string v4, "-"

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_9

    if-eqz p3, :cond_9

    const/4 v1, 0x1

    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v4, ":\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    if-eqz p5, :cond_6

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_8

    if-ltz v4, :cond_8

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8

    if-eqz p5, :cond_7

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_5

    :cond_7
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_5
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v1, :cond_d

    if-eqz p3, :cond_d

    if-eqz p5, :cond_b

    const-string v2, " wake_lock="

    goto :goto_7

    :cond_b
    const-string v2, ",w="

    :goto_7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_c

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v2, ":\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    :goto_8
    return-void
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-virtual {v0, v11, v12, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long/2addr v11, v13

    const-wide/16 v13, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v16, v13

    array-length v13, v15

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_0

    move/from16 v19, v13

    aget-object v13, v15, v14

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v20

    add-long v16, v16, v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v19

    goto :goto_0

    :cond_0
    const-string v13, "WiFi"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Scan time:  "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v19, v5, v7

    add-long v19, v19, v16

    move-wide/from16 v22, v13

    sub-long v13, v11, v19

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Sleep time:  "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string v13, "Cellular"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Sleep time:  "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Idle time:   "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Rx time:     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Tx time:     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v15, -0x32c7c276

    if-eq v13, v15, :cond_3

    goto :goto_1

    :cond_3
    const-string v13, "Cellular"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v14, 0x0

    :cond_4
    :goto_1
    if-eqz v14, :cond_5

    const-string v13, "[0]"

    const-string v14, "[1]"

    const-string v15, "[2]"

    move-wide/from16 v24, v5

    const-string v5, "[3]"

    const-string v6, "[4]"

    filled-new-array {v13, v14, v15, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-wide/from16 v24, v5

    const-string v5, "   less than 0dBm: "

    const-string v6, "   0dBm to 8dBm: "

    const-string v13, "   8dBm to 15dBm: "

    const-string v14, "   15dBm to 20dBm: "

    const-string v15, "   above 20dBm: "

    filled-new-array {v5, v6, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v5

    nop

    :goto_2
    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v13, v5

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v13, 0x1

    if-le v6, v13, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v6, :cond_6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v14

    aget-object v14, v14, v13

    invoke-virtual {v14, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    move/from16 v26, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v13

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v26

    goto :goto_3

    :cond_6
    move/from16 v26, v6

    goto :goto_4

    :cond_7
    move/from16 v26, v6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v13, 0x0

    aget-object v6, v6, v13

    invoke-virtual {v6, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    const-wide/16 v13, 0x0

    cmp-long v6, v9, v13

    if-lez v6, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "     "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Battery drain: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v13, v9

    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v13, v13, v18

    invoke-static {v13, v14}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mAh"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 5

    long-to-float v0, p2

    const-string v1, ""

    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_0

    const-string v1, "KB"

    div-float/2addr v0, v4

    :cond_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    const-string v1, "MB"

    div-float/2addr v0, v4

    :cond_1
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2

    const-string v1, "GB"

    div-float/2addr v0, v4

    :cond_2
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    const-string v1, "TB"

    div-float/2addr v0, v4

    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    const-string v1, "PB"

    div-float/2addr v0, v4

    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, p3, v5

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-ltz v2, :cond_0

    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    const-wide/16 v13, 0x0

    cmp-long v2, v5, v13

    if-ltz v2, :cond_1

    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    move-object v5, p0

    goto :goto_1

    :cond_4
    move-object v5, p0

    move/from16 v7, p5

    :goto_1
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    return v2
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_5

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_1

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    cmp-long v16, v10, v7

    if-lez v16, :cond_2

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_4

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-ltz v16, :cond_3

    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string v1, ", "

    return-object v1

    :cond_5
    return-object v6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move-wide/from16 v17, v6

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v6

    :goto_0
    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v17, v6

    div-long/2addr v6, v15

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    const-string v6, ","

    return-object v6
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 1

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 1

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static roundUsToMs(J)J
    .locals 4

    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 371

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v12, 0x3e8

    mul-long v14, v1, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long v5, v7, v12

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v3

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v16

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v18

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v20

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v22

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v24

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v26

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v28

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v30

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v32

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v34

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v36

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v6, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v38

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v40

    invoke-virtual {v0, v1, v5, v6, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v42

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v1

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v45

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v47

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v49

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v51

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v53

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v55

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v2

    sget-object v60, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move-wide/from16 v61, v14

    aget-object v14, v60, v10

    const-string v15, "bt"

    move/from16 v63, v1

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    if-nez v10, :cond_0

    move-wide/from16 v64, v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-wide/from16 v64, v3

    const-string v3, "N/A"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v1, v4

    move-wide/from16 v66, v5

    const-wide/16 v58, 0x3e8

    div-long v4, v18, v58

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    div-long v3, v16, v58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    div-long v3, v24, v58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    div-long v3, v26, v58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    div-long v4, v22, v58

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v1, v5

    div-long v3, v20, v58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    const/16 v3, 0xb

    const-wide/16 v58, 0x3e8

    div-long v4, v30, v58

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x0

    invoke-static {v9, v3, v14, v15, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    const-wide/16 v76, 0x0

    move-wide/from16 v78, v76

    const/4 v1, 0x0

    move-wide/from16 v76, v3

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v57

    move-object/from16 v6, v57

    check-cast v6, Landroid/os/BatteryStats$Uid$Wakelock;

    move/from16 v81, v2

    invoke-virtual {v6, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_1

    move-wide/from16 v82, v7

    move-wide/from16 v7, v66

    invoke-virtual {v2, v7, v8, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v66

    add-long v76, v76, v66

    goto :goto_3

    :cond_1
    move-wide/from16 v82, v7

    move-wide/from16 v7, v66

    :goto_3
    move-object/from16 v84, v2

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v7, v8, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v66

    add-long v78, v78, v66

    :cond_2
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v66, v7

    move/from16 v2, v81

    move-wide/from16 v7, v82

    const/4 v6, 0x3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    move/from16 v81, v2

    move-wide/from16 v82, v7

    move-wide/from16 v7, v66

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v82

    const/4 v6, 0x3

    goto :goto_1

    :cond_4
    move/from16 v81, v2

    move-wide/from16 v82, v7

    move-wide/from16 v7, v66

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    move-wide/from16 v86, v3

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    move-wide/from16 v88, v7

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    move-wide/from16 v90, v5

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    move-object/from16 v93, v12

    move-object/from16 v94, v13

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    move-wide/from16 v96, v12

    invoke-virtual {v0, v15, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v11

    move-object/from16 v98, v14

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v13

    move-wide/from16 v99, v13

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    move-wide/from16 v101, v13

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    const-string v1, "gn"

    const/16 v6, 0xa

    new-array v15, v6, [Ljava/lang/Object;

    move-wide/from16 v103, v7

    move-wide/from16 v6, v90

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v60, 0x0

    aput-object v8, v15, v60

    move-wide/from16 v106, v6

    move-wide/from16 v6, v86

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v57, 0x1

    aput-object v8, v15, v57

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v44, 0x2

    aput-object v8, v15, v44

    move-wide/from16 v108, v2

    move-wide/from16 v2, v103

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v60, 0x3

    aput-object v8, v15, v60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v66, 0x4

    aput-object v8, v15, v66

    move-wide/from16 v110, v2

    move-wide/from16 v2, v96

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v67, 0x5

    aput-object v8, v15, v67

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v69, 0x6

    aput-object v8, v15, v69

    move-wide/from16 v112, v2

    move-wide/from16 v2, v99

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v70, 0x7

    aput-object v8, v15, v70

    move-wide/from16 v114, v2

    move-wide/from16 v2, v101

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v71, 0x8

    aput-object v8, v15, v71

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v72, 0x9

    aput-object v8, v15, v72

    move-wide/from16 v116, v2

    move-object/from16 v8, v98

    const/4 v2, 0x0

    invoke-static {v9, v2, v8, v1, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string v15, "gmcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v68

    move-wide/from16 v118, v11

    move/from16 v12, v44

    move/from16 v11, v63

    move-object v1, v9

    move/from16 v44, v2

    move/from16 v12, v57

    move/from16 v120, v81

    move-wide/from16 v73, v108

    move-wide/from16 v80, v110

    move-wide/from16 v84, v112

    move-wide/from16 v86, v114

    move-wide/from16 v90, v116

    move v2, v3

    move-wide/16 v369, v6

    move-wide/from16 v6, v64

    move-wide/from16 v63, v369

    move-object v3, v8

    move-wide/from16 v70, v4

    move/from16 v5, v44

    move/from16 v12, v67

    move-object v4, v15

    move-wide/from16 v127, v13

    move-wide/from16 v12, v88

    move-wide/from16 v14, v106

    move-object/from16 v5, v68

    move-wide/from16 v133, v14

    move-wide v14, v6

    move/from16 v7, v60

    move v6, v10

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v65

    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v67

    const-string v1, "gwfl"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    move-object/from16 v135, v8

    const-wide/16 v4, 0x3e8

    div-long v7, v65, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v3, v8

    div-long v6, v67, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v3, v7

    move-object/from16 v6, v135

    invoke-static {v9, v8, v6, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string v4, "gwfcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v1, v9

    move-object v3, v6

    move-object/from16 v137, v6

    move v6, v10

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v4, "gble"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v3, v137

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v1, "m"

    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long v5, v28, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    div-long v5, v45, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    div-long v5, v76, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    div-long v5, v78, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v2, v6

    div-long v5, v32, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v2, v6

    div-long v6, v34, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v2, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v2, v6

    div-long v6, v38, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v2, v7

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v2, v7

    const/16 v6, 0xb

    div-long v7, v42, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xc

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    div-long v4, v36, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x11

    div-long v4, v40, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x13

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v8, v137

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_4

    :cond_5
    const-string v1, "br"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_5
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const-string/jumbo v2, "sgt"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "sst"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v6

    const-wide/16 v57, 0x3e8

    div-long v6, v6, v57

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v9, v3, v8, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_6
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    const-string/jumbo v2, "sgc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x15

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x15

    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    const-string v2, "dct"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_8
    const/16 v3, 0x15

    if-ge v2, v3, :cond_9

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const-string v2, "dcc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_a

    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_9

    :cond_a
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_a
    const/16 v3, 0x8

    if-ge v2, v3, :cond_b

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    const-string/jumbo v2, "wsc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xd

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0xd

    if-ge v2, v3, :cond_c

    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0xd

    if-ge v2, v3, :cond_d

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    const-string/jumbo v2, "wssc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_e

    invoke-virtual {v0, v1, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    goto :goto_d

    :cond_e
    const-string/jumbo v1, "wsgt"

    const/4 v2, 0x0

    invoke-static {v9, v2, v8, v1, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_f
    const-string/jumbo v1, "wsgc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v8, v1, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v88

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v6

    const-string/jumbo v1, "wmct"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    move-object/from16 v147, v3

    const-wide/16 v4, 0x3e8

    div-long v2, v88, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v147, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v147, v4

    move-object/from16 v2, v147

    invoke-static {v9, v3, v8, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    if-ne v10, v1, :cond_10

    const-string/jumbo v2, "lv"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v9, v3, v8, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    const/4 v1, 0x2

    if-ne v10, v1, :cond_11

    const-string v1, "dc"

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    move/from16 v149, v6

    move-object/from16 v148, v7

    const-wide/16 v4, 0x3e8

    div-long v6, v47, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    div-long v6, v49, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    div-long v6, v51, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v3, v6

    div-long v6, v53, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v3, v6

    div-long v6, v55, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    const/4 v2, 0x0

    invoke-static {v9, v2, v8, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x8

    const/16 v7, 0x9

    const/16 v44, 0x3

    goto/16 :goto_f

    :cond_11
    move/from16 v149, v6

    move-object/from16 v148, v7

    const/4 v2, 0x0

    const-string v1, "dc"

    const/16 v7, 0xa

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v44, 0x3

    aput-object v2, v3, v44

    move-object/from16 v150, v8

    const-wide/16 v4, 0x3e8

    div-long v7, v47, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v3, v7

    div-long v7, v49, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    div-long v7, v51, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v3, v7

    div-long v6, v53, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v3, v6

    div-long v7, v55, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v7, 0x9

    aput-object v2, v3, v7

    move-object/from16 v8, v150

    const/4 v2, 0x0

    invoke-static {v9, v2, v8, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    const-wide/16 v96, 0x1f4

    move-wide/from16 v98, v118

    move/from16 v5, p4

    if-gez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v1, v93

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    const/16 v57, 0x0

    const-string v60, ""

    move-object/from16 v156, v1

    move-object/from16 v157, v2

    move-object v2, v6

    move-object/from16 v69, v3

    move-object/from16 v72, v4

    move-wide v3, v12

    move v6, v5

    move-object/from16 v5, v57

    move/from16 v57, v149

    move v6, v10

    move/from16 v163, v11

    move-wide/from16 v161, v14

    move/from16 v11, v44

    move-wide/from16 v14, v82

    move-object/from16 v44, v148

    move-object/from16 v7, v60

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "kwl"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v157

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v3, v5

    move-object/from16 v7, v156

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v3, v6

    invoke-static {v9, v5, v8, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    move-object/from16 v93, v7

    move-object/from16 v3, v69

    move-object/from16 v4, v72

    move-wide/from16 v14, v161

    move/from16 v5, p4

    const/16 v6, 0x8

    const/16 v7, 0x9

    move/from16 v44, v11

    move/from16 v11, v163

    goto/16 :goto_10

    :cond_12
    move-object/from16 v69, v3

    move/from16 v163, v11

    move-wide/from16 v161, v14

    move/from16 v11, v44

    move-wide/from16 v14, v82

    move-object/from16 v7, v93

    move-object/from16 v44, v148

    move/from16 v57, v149

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_13

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    move-object/from16 v164, v1

    const-string/jumbo v1, "wr"

    move-object/from16 v165, v2

    new-array v2, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v166, v14

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v2, v14

    add-long v82, v4, v96

    const-wide/16 v58, 0x3e8

    div-long v14, v82, v58

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v2, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v2, v14

    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    move-object/from16 v1, v164

    move-object/from16 v2, v165

    move-wide/from16 v14, v166

    const/4 v11, 0x3

    goto :goto_11

    :cond_13
    move-wide/from16 v166, v14

    goto :goto_12

    :cond_14
    move/from16 v163, v11

    move-wide/from16 v161, v14

    move-wide/from16 v166, v82

    move-object/from16 v7, v93

    move-object/from16 v44, v148

    move/from16 v57, v149

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    const-wide/16 v82, 0x0

    if-lez v1, :cond_17

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v96

    const-wide/16 v58, 0x3e8

    div-long v4, v4, v58

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Timer;

    if-eqz v15, :cond_15

    invoke-virtual {v15, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v92

    add-long v92, v92, v96

    const-wide/16 v58, 0x3e8

    div-long v92, v92, v58

    goto :goto_14

    :cond_15
    move-wide/from16 v92, v82

    :goto_14
    if-eqz v15, :cond_16

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v60

    goto :goto_15

    :cond_16
    const/16 v60, 0x0

    :goto_15
    move-object/from16 v168, v1

    const-string/jumbo v1, "rpm"

    move-object/from16 v169, v3

    move-object/from16 v170, v11

    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v171, v14

    const-string v14, "\""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v11, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v69, 0x1

    aput-object v3, v11, v69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v69, 0x2

    aput-object v3, v11, v69

    invoke-static {v9, v14, v8, v1, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    move-object/from16 v1, v168

    move-object/from16 v11, v170

    move-object/from16 v14, v171

    goto/16 :goto_13

    :cond_17
    move-object/from16 v170, v11

    move-object/from16 v171, v14

    const/4 v14, 0x0

    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v11, p1

    move/from16 v15, p5

    invoke-direct {v1, v11, v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object v14, v1

    invoke-virtual {v14, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v6, -0x1

    invoke-virtual {v14, v10, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    const-string/jumbo v1, "pws"

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    move-object/from16 v172, v7

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    const/4 v1, 0x0

    :goto_16
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_18

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    sget-object v6, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v7, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const-string v6, "???"

    goto :goto_17

    :pswitch_0
    const-string/jumbo v6, "memory"

    goto :goto_17

    :pswitch_1
    const-string v6, "camera"

    goto :goto_17

    :pswitch_2
    const-string/jumbo v6, "over"

    goto :goto_17

    :pswitch_3
    const-string/jumbo v6, "unacc"

    goto :goto_17

    :pswitch_4
    iget v6, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    const-string/jumbo v6, "user"

    goto :goto_17

    :pswitch_5
    iget-object v6, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    const-string/jumbo v6, "uid"

    goto :goto_17

    :pswitch_6
    const-string v6, "flashlight"

    goto :goto_17

    :pswitch_7
    const-string/jumbo v6, "scrn"

    goto :goto_17

    :pswitch_8
    const-string v6, "blue"

    goto :goto_17

    :pswitch_9
    const-string/jumbo v6, "wifi"

    goto :goto_17

    :pswitch_a
    const-string/jumbo v6, "phone"

    goto :goto_17

    :pswitch_b
    const-string v6, "cell"

    goto :goto_17

    :pswitch_c
    const-string v6, "idle"

    goto :goto_17

    :pswitch_d
    const-string v6, "ambi"

    nop

    :goto_17
    nop

    const-string/jumbo v7, "pwi"

    move-object/from16 v173, v5

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v5, v4

    move-object/from16 v174, v14

    iget-wide v14, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x1

    aput-object v4, v5, v14

    iget-boolean v4, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x2

    aput-object v4, v5, v14

    iget-wide v14, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x3

    aput-object v4, v5, v14

    iget-wide v14, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x4

    aput-object v4, v5, v14

    invoke-static {v9, v2, v8, v7, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v173

    move-object/from16 v14, v174

    const/4 v4, 0x4

    move/from16 v15, p5

    goto/16 :goto_16

    :cond_18
    move-object/from16 v173, v5

    move-object/from16 v174, v14

    goto :goto_18

    :cond_19
    move-object/from16 v173, v5

    move-object/from16 v172, v7

    move-object/from16 v174, v14

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v14

    if-eqz v14, :cond_1c

    move-object/from16 v7, v172

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_19
    array-length v2, v14

    if-ge v1, v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_1a

    const-string v3, ""

    goto :goto_1a

    :cond_1a
    const-string v3, ","

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v14, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_1b
    const-string v1, "gcf"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v9, v4, v8, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    :cond_1c
    move-object/from16 v7, v172

    :goto_1b
    const/4 v1, 0x0

    :goto_1c
    move v15, v1

    move/from16 v6, v120

    if-ge v15, v6, :cond_64

    move-object/from16 v5, v94

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move/from16 v3, p4

    if-ltz v3, :cond_1d

    if-eq v4, v3, :cond_1d

    nop

    move-object/from16 v60, v5

    move/from16 v92, v6

    move-object/16 v357, v7

    move v11, v10

    move-wide/16 v353, v12

    move-object/16 v356, v14

    move/from16 v176, v15

    move-wide/from16 v13, v161

    move-wide/16 v346, v166

    move-object/from16 v69, v173

    const-wide/16 v58, 0x3e8

    const/16 v72, 0x8

    const/16 v75, 0x9

    const/16 v93, -0x1

    const/16 v121, 0x2

    const/16 v122, 0x1

    const/16 v129, 0x5

    const/16 v143, 0xa

    const/16 v160, 0x4

    const/16 v161, 0x0

    move-object v10, v8

    move-object v12, v9

    const/4 v8, 0x3

    goto/16 :goto_57

    :cond_1d
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Uid;

    move-object/from16 v175, v14

    move/from16 v176, v15

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    move-wide/from16 v177, v12

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    move/from16 v180, v6

    move-object/from16 v179, v7

    const/4 v13, 0x2

    invoke-virtual {v2, v13, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    move/from16 v181, v4

    const/4 v13, 0x3

    invoke-virtual {v2, v13, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v3

    move-object/from16 v182, v8

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    move-wide/from16 v183, v8

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v13

    move-wide/from16 v185, v0

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/from16 v188, v0

    move-object/from16 v187, v5

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v190, v0

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v192, v0

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/from16 v194, v0

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v196, v0

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v198, v0

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v200, v0

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v202, v0

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v204, v0

    const/16 v5, 0x9

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v206, v0

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v208, v0

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v210, v0

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v212, v0

    const/16 v5, 0x9

    invoke-virtual {v2, v5, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    cmp-long v5, v14, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v11, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v6, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v3, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v183, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v8, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v190, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v192, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v185, v82

    if-gtz v5, :cond_1f

    if-gtz v13, :cond_1f

    cmp-long v5, v196, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v198, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v188, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v194, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v200, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v202, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v204, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v206, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v208, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v210, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v212, v82

    if-gtz v5, :cond_1f

    cmp-long v5, v0, v82

    if-lez v5, :cond_1e

    goto :goto_1d

    :cond_1e
    move-wide/from16 v246, v0

    move-wide/from16 v214, v3

    move-wide/from16 v224, v8

    move/from16 v0, v181

    move-object/from16 v9, v182

    move-wide/from16 v94, v183

    move-wide/from16 v222, v185

    move-wide/from16 v230, v188

    move-wide/from16 v218, v190

    move-wide/from16 v220, v192

    move-wide/from16 v232, v194

    move-wide/from16 v226, v196

    move-wide/from16 v228, v198

    move-wide/from16 v234, v200

    move-wide/from16 v236, v202

    move-wide/from16 v238, v204

    move-wide/from16 v240, v206

    move-wide/from16 v242, v208

    move-wide/from16 v244, v210

    move-wide/from16 v3, v212

    move-object/from16 v8, p2

    const/16 v69, 0x4

    const/16 v72, 0x6

    const/16 v75, 0x7

    const/16 v92, 0x8

    const/16 v93, 0x9

    goto/16 :goto_1e

    :cond_1f
    :goto_1d
    const-string/jumbo v5, "nt"

    const/16 v10, 0x16

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v69, 0x0

    aput-object v60, v10, v69

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v69, 0x1

    aput-object v60, v10, v69

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v69, 0x2

    aput-object v60, v10, v69

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v69, 0x3

    aput-object v60, v10, v69

    move-wide/from16 v214, v3

    move-wide/from16 v3, v183

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v69, 0x4

    aput-object v60, v10, v69

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v72, 0x5

    aput-object v60, v10, v72

    move-wide/from16 v216, v3

    move-wide/from16 v3, v190

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v72, 0x6

    aput-object v60, v10, v72

    move-wide/from16 v218, v3

    move-wide/from16 v3, v192

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v75, 0x7

    aput-object v60, v10, v75

    move-wide/from16 v220, v3

    move-wide/from16 v3, v185

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const/16 v92, 0x8

    aput-object v60, v10, v92

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    const/16 v93, 0x9

    aput-object v60, v10, v93

    move-wide/from16 v222, v3

    move-wide/from16 v3, v196

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-wide/from16 v224, v8

    const/16 v9, 0xa

    aput-object v60, v10, v9

    const/16 v8, 0xb

    move-wide/from16 v226, v3

    move-wide/from16 v3, v198

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0xc

    move-wide/from16 v228, v3

    move-wide/from16 v3, v188

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0xd

    move-wide/from16 v230, v3

    move-wide/from16 v3, v194

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0xe

    move-wide/from16 v232, v3

    move-wide/from16 v3, v200

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0xf

    move-wide/from16 v234, v3

    move-wide/from16 v3, v202

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x10

    move-wide/from16 v236, v3

    move-wide/from16 v3, v204

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x11

    move-wide/from16 v238, v3

    move-wide/from16 v3, v206

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x12

    move-wide/from16 v240, v3

    move-wide/from16 v3, v208

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x13

    move-wide/from16 v242, v3

    move-wide/from16 v3, v210

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x14

    move-wide/from16 v244, v3

    move-wide/from16 v3, v212

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    const/16 v8, 0x15

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    aput-object v60, v10, v8

    move-wide/from16 v246, v0

    move/from16 v0, v181

    move-object/from16 v9, v182

    move-wide/from16 v94, v216

    move-object/from16 v8, p2

    invoke-static {v8, v0, v9, v5, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1e
    const-string/jumbo v5, "mcd"

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    move-wide/from16 v135, v3

    move-wide/from16 v104, v218

    move-wide/from16 v106, v220

    move-wide/from16 v100, v222

    move-wide/from16 v110, v226

    move-wide/from16 v112, v228

    move-wide/from16 v102, v230

    move-wide/from16 v108, v232

    move-wide/from16 v114, v234

    move-wide/from16 v116, v236

    move-wide/from16 v118, v238

    move-wide/from16 v123, v240

    move-wide/from16 v125, v242

    move-wide/from16 v130, v244

    move-wide/from16 v137, v246

    move-object v1, v8

    move-object v4, v2

    move v2, v0

    move-wide/from16 v139, v214

    move-object v3, v9

    move-wide/from16 v248, v11

    move/from16 v12, v69

    move-object v11, v4

    move-object v4, v5

    move/from16 v72, v92

    move/from16 v75, v93

    move-object/from16 v69, v173

    move-object/from16 v60, v187

    move-object v5, v10

    move-wide/from16 v141, v6

    move/from16 v92, v180

    move/from16 v10, p3

    const/16 v93, -0x1

    move v6, v10

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-wide/from16 v6, v177

    invoke-virtual {v11, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v4

    invoke-virtual {v11, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v2

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v1

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v12

    invoke-virtual {v11, v6, v7}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v144

    add-long v144, v144, v96

    move/from16 v252, v13

    move-wide/from16 v250, v14

    const-wide/16 v58, 0x3e8

    div-long v13, v144, v58

    invoke-virtual {v11, v6, v7}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v144

    add-long v144, v144, v96

    move-object/from16 v253, v9

    div-long v8, v144, v58

    move-wide/from16 v254, v8

    invoke-virtual {v11, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v8

    cmp-long v15, v4, v82

    if-nez v15, :cond_21

    cmp-long v15, v2, v82

    if-nez v15, :cond_21

    if-nez v1, :cond_21

    if-nez v12, :cond_21

    cmp-long v15, v13, v82

    if-nez v15, :cond_21

    move-wide/16 v256, v6

    move-wide/from16 v6, v254

    cmp-long v15, v6, v82

    if-nez v15, :cond_22

    cmp-long v15, v8, v82

    if-eqz v15, :cond_20

    goto :goto_1f

    :cond_20
    move-wide/16 v259, v4

    move-wide/from16 v144, v6

    move-object/16 v258, v11

    move-object/from16 v6, v253

    const/4 v5, 0x7

    move-object/from16 v7, p2

    const/4 v10, 0x6

    goto :goto_20

    :cond_21
    move-wide/16 v256, v6

    move-wide/from16 v6, v254

    :cond_22
    :goto_1f
    const-string/jumbo v15, "wfl"

    move-object/16 v258, v11

    const/16 v10, 0xa

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/16 v259, v4

    const/4 v4, 0x0

    aput-object v10, v11, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v11, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v11, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v11, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v11, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v11, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v11, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v11, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v72

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v75

    move-wide/from16 v144, v6

    move-object/from16 v6, v253

    move-object/from16 v7, p2

    invoke-static {v7, v0, v6, v15, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    const-string/jumbo v4, "wfcd"

    move-object/from16 v11, v258

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v15

    move/from16 v120, v1

    move-object v1, v7

    move-wide/from16 v146, v2

    move v2, v0

    move-object v3, v6

    move-wide/from16 v148, v259

    move-object v5, v15

    move-object/16 v263, v6

    move-wide/16 v261, v256

    move/from16 v15, p3

    move v6, v15

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_2c

    move-wide/from16 v4, v261

    invoke-virtual {v6, v4, v5, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v96

    const-wide/16 v58, 0x3e8

    div-long v1, v1, v58

    cmp-long v3, v1, v82

    if-eqz v3, :cond_2b

    invoke-virtual {v6, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_23

    invoke-virtual {v10, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v132

    goto :goto_21

    :cond_23
    const/16 v132, 0x0

    :goto_21
    move/16 v264, v132

    move-wide/16 v268, v4

    move/16 v265, v12

    move-wide/16 v266, v13

    move-wide/from16 v12, v166

    invoke-virtual {v6, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    if-eqz v10, :cond_24

    invoke-virtual {v10, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_22

    :cond_24
    move-wide/from16 v150, v82

    :goto_22
    move-wide/16 v270, v150

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v14

    if-eqz v14, :cond_25

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v14

    goto :goto_23

    :cond_25
    const/4 v14, 0x0

    :goto_23
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v132

    if-eqz v132, :cond_26

    move-object/16 v272, v6

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_24

    :cond_26
    move-object/16 v272, v6

    const/4 v6, 0x0

    :goto_24
    move-wide/16 v273, v8

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_25

    :cond_27
    move-wide/from16 v150, v82

    :goto_25
    move-wide/16 v275, v150

    if-eqz v8, :cond_28

    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_26

    :cond_28
    move-wide/from16 v150, v82

    :goto_26
    move-wide/16 v277, v150

    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_29

    invoke-virtual {v9, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_27

    :cond_29
    move-wide/from16 v150, v82

    :goto_27
    move-wide/16 v279, v150

    if-eqz v9, :cond_2a

    invoke-virtual {v9, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_28

    :cond_2a
    move-wide/from16 v150, v82

    :goto_28
    move-wide/16 v281, v150

    move-object/16 v283, v8

    const-string v8, "blem"

    move-object/16 v284, v9

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    const/16 v143, 0x0

    aput-object v132, v9, v143

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v132

    const/16 v122, 0x1

    aput-object v132, v9, v122

    move-wide/16 v285, v1

    move/from16 v1, v264

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v121, 0x2

    aput-object v2, v9, v121

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v132, 0x3

    aput-object v2, v9, v132

    move/16 v287, v1

    move-wide/from16 v1, v270

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    const/16 v150, 0x4

    aput-object v132, v9, v150

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v132

    const/16 v129, 0x5

    aput-object v132, v9, v129

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v132

    const/16 v150, 0x6

    aput-object v132, v9, v150

    move-wide/16 v288, v1

    move-wide/from16 v1, v275

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    move-object/16 v290, v10

    const/4 v10, 0x7

    aput-object v132, v9, v10

    move-object/16 v291, v11

    move-wide/from16 v10, v279

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    aput-object v132, v9, v72

    move-wide/16 v292, v1

    move-wide/from16 v1, v277

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    aput-object v132, v9, v75

    move-wide/16 v294, v1

    move-wide/from16 v1, v281

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    const/16 v150, 0xa

    aput-object v132, v9, v150

    move-wide/16 v296, v10

    move-object/from16 v10, v263

    invoke-static {v7, v0, v10, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    :cond_2b
    move-wide/16 v268, v4

    move-object/16 v272, v6

    move-wide/16 v273, v8

    move-object/16 v291, v11

    move/16 v265, v12

    move-wide/16 v266, v13

    move-wide/from16 v12, v166

    move-object/from16 v10, v263

    goto :goto_29

    :cond_2c
    move-object/16 v272, v6

    move-wide/16 v273, v8

    move-object/16 v291, v11

    move/16 v265, v12

    move-wide/16 v266, v13

    move-wide/from16 v12, v166

    move-wide/16 v268, v261

    move-object/from16 v10, v263

    :goto_29
    const-string v4, "ble"

    move-object/from16 v9, v291

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v1, v7

    move v2, v0

    move-object v3, v10

    move-wide/16 v298, v268

    move-object/from16 v11, v272

    move v6, v15

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v1, :cond_2e

    invoke-virtual {v9, v3, v15}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    move v4, v1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_2a

    :cond_2e
    if-eqz v4, :cond_2f

    const-string/jumbo v1, "ua"

    invoke-static {v7, v0, v10, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    move-object/from16 v44, v2

    :cond_30
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v4, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    goto :goto_2b

    :cond_31
    move-wide/from16 v5, v82

    :goto_2b
    const-string v8, "awl"

    move-object/16 v300, v1

    const/4 v14, 0x2

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v132, 0x0

    aput-object v14, v1, v132

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v122, 0x1

    aput-object v14, v1, v122

    invoke-static {v7, v0, v10, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_32
    const/16 v122, 0x1

    :goto_2c
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2d
    move v8, v1

    if-ltz v8, :cond_38

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v132, ""

    move-object/from16 v5, v179

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v150, "f"

    move-object v1, v5

    move-wide/from16 v3, v298

    move-object/from16 v151, v5

    move-object/from16 v5, v150

    move-object/16 v301, v11

    move-object v11, v6

    move v6, v15

    move-wide/16 v302, v12

    move-object/from16 v13, v151

    move-object v12, v7

    move-object/from16 v7, v132

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v132

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    const-string/jumbo v5, "p"

    move-object v1, v13

    move-object v2, v7

    move-object/16 v304, v9

    move-object v9, v7

    move-object/from16 v7, v132

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v132

    if-eqz v9, :cond_33

    invoke-virtual {v9}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    :goto_2e
    move-object v2, v1

    goto :goto_2f

    :cond_33
    const/4 v1, 0x0

    goto :goto_2e

    :goto_2f
    const-string v5, "bp"

    move-object v1, v13

    move-wide/from16 v3, v298

    move v6, v15

    move-object/from16 v7, v132

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v132

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move-object v1, v13

    move-object/from16 v7, v132

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_37

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_34

    const/16 v3, 0x2c

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_34
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_35

    const/16 v3, 0x5f

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_35
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_36

    const/16 v3, 0xd

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_36
    const-string/jumbo v3, "wl"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-static {v12, v0, v10, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_37
    const/16 v6, 0xa

    :goto_30
    add-int/lit8 v1, v8, -0x1

    move-object v7, v12

    move-object/from16 v179, v13

    move-object/from16 v11, v301

    move-wide/from16 v12, v302

    move-object/from16 v9, v304

    goto/16 :goto_2d

    :cond_38
    move-object/16 v304, v9

    move-object/16 v301, v11

    move-wide/16 v302, v12

    move-object/from16 v13, v179

    const/16 v6, 0xa

    move-object v12, v7

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_3a

    nop

    move-wide/from16 v7, v298

    invoke-virtual {v11, v7, v8, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    cmp-long v4, v1, v82

    if-lez v4, :cond_39

    const-string/jumbo v4, "wmc"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v132, 0x0

    aput-object v5, v6, v132

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v122, 0x1

    aput-object v5, v6, v122

    invoke-static {v12, v0, v10, v4, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31

    :cond_39
    const/16 v122, 0x1

    goto :goto_31

    :cond_3a
    move-wide/from16 v7, v298

    const/16 v122, 0x1

    :goto_31
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_3e

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v7, v8, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v3, v3, v96

    const-wide/16 v58, 0x3e8

    div-long v3, v3, v58

    invoke-virtual {v2, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move-object/16 v305, v11

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_3b

    move-object/16 v307, v13

    move-object/16 v306, v14

    move-wide/from16 v13, v302

    invoke-virtual {v11, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_33

    :cond_3b
    move-object/16 v307, v13

    move-object/16 v306, v14

    move-wide/from16 v13, v302

    const-wide/16 v150, -0x1

    :goto_33
    move-wide/16 v308, v150

    if-eqz v11, :cond_3c

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v132

    goto :goto_34

    :cond_3c
    move/from16 v132, v93

    :goto_34
    move/16 v310, v132

    cmp-long v132, v3, v82

    if-eqz v132, :cond_3d

    move-object/16 v311, v2

    const-string/jumbo v2, "sy"

    move-object/16 v312, v11

    move-wide/16 v313, v13

    const/4 v11, 0x5

    new-array v13, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v13, v14

    move-wide/16 v315, v3

    move-wide/from16 v3, v308

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v14, 0x3

    aput-object v11, v13, v14

    move/from16 v11, v310

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v132, 0x4

    aput-object v14, v13, v132

    invoke-static {v12, v0, v10, v2, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_3d
    move-wide/16 v313, v13

    :goto_35
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v11, v305

    move-object/from16 v14, v306

    move-object/from16 v13, v307

    move-wide/16 v302, v313

    goto/16 :goto_32

    :cond_3e
    move-object/16 v305, v11

    move-object/16 v307, v13

    move-object/16 v306, v14

    move-wide/16 v313, v302

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_36
    if-ltz v1, :cond_42

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v7, v8, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v3, v3, v96

    const-wide/16 v13, 0x3e8

    div-long/2addr v3, v13

    invoke-virtual {v2, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    if-eqz v13, :cond_3f

    move-object/16 v319, v6

    move-wide/16 v317, v7

    move-wide/from16 v6, v313

    invoke-virtual {v13, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v150

    goto :goto_37

    :cond_3f
    move-object/16 v319, v6

    move-wide/16 v317, v7

    move-wide/from16 v6, v313

    const-wide/16 v150, -0x1

    :goto_37
    move-wide/16 v320, v150

    if-eqz v13, :cond_40

    invoke-virtual {v13, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    goto :goto_38

    :cond_40
    move/from16 v8, v93

    :goto_38
    cmp-long v14, v3, v82

    if-eqz v14, :cond_41

    const-string v14, "jb"

    move-object/16 v322, v2

    move-wide/16 v323, v6

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v6, v7

    move-wide/16 v325, v3

    move-wide/from16 v2, v320

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v6, v7

    invoke-static {v12, v0, v10, v14, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39

    :cond_41
    move-wide/16 v323, v6

    :goto_39
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v7, v317

    move-object/from16 v6, v319

    move-wide/16 v313, v323

    goto/16 :goto_36

    :cond_42
    move-object/16 v319, v6

    move-wide/16 v317, v7

    move-wide/16 v323, v313

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_3a
    if-ltz v1, :cond_44

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_43

    const-string v3, "jbc"

    const/4 v4, 0x6

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v6, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v5, v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v5, v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v5, v6

    invoke-static {v12, v0, v10, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    :cond_44
    move-object/from16 v14, v307

    invoke-virtual {v9, v14, v15}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    const-string v1, "jbd"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v3, v8

    invoke-static {v12, v0, v10, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_45
    const/4 v8, 0x0

    :goto_3b
    const-string v4, "fla"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v1, v12

    move v2, v0

    move-object v3, v10

    move-object/16 v327, v10

    move-object/16 v328, v11

    move-wide/16 v329, v317

    move-object/from16 v132, v319

    move-wide/from16 v10, v323

    const/16 v143, 0xa

    move-wide/from16 v6, v329

    move-object/16 v332, v13

    move-wide/from16 v150, v224

    move-wide/from16 v152, v273

    move-object/16 v331, v327

    move v13, v8

    move v8, v15

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "cam"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v3, v331

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v4, "vid"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "aud"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v1, v13

    :goto_3c
    if-ge v1, v6, :cond_4a

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_49

    move-object/16 v333, v14

    move-wide/from16 v13, v329

    invoke-virtual {v4, v13, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v154

    add-long v154, v154, v96

    move/16 v334, v6

    const-wide/16 v58, 0x3e8

    div-long v5, v154, v58

    cmp-long v7, v5, v82

    if-eqz v7, :cond_48

    invoke-virtual {v4, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    move-object/16 v335, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-virtual {v8, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v154

    goto :goto_3d

    :cond_46
    const/16 v154, 0x0

    :goto_3d
    move/16 v336, v154

    move-wide/16 v337, v13

    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    if-eqz v8, :cond_47

    invoke-virtual {v8, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v154

    goto :goto_3e

    :cond_47
    move-wide/from16 v154, v82

    :goto_3e
    move-wide/16 v339, v154

    move-object/16 v341, v2

    const-string/jumbo v2, "sr"

    move-object/16 v342, v4

    move-object/16 v343, v8

    const/4 v4, 0x6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v154, 0x0

    aput-object v4, v8, v154

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v122, 0x1

    aput-object v4, v8, v122

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v121, 0x2

    aput-object v4, v8, v121

    move/from16 v4, v336

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v154

    const/16 v155, 0x3

    aput-object v154, v8, v155

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v154

    const/16 v155, 0x4

    aput-object v154, v8, v155

    move/16 v344, v3

    move/16 v345, v4

    move-wide/from16 v3, v339

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v154

    const/16 v129, 0x5

    aput-object v154, v8, v129

    move-wide/16 v346, v10

    move-object/from16 v10, v331

    invoke-static {v12, v0, v10, v2, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_48
    move-object/16 v335, v8

    move-wide/16 v346, v10

    move-wide/16 v337, v13

    move-object/from16 v10, v331

    goto :goto_3f

    :cond_49
    move/16 v334, v6

    move-object/16 v335, v8

    move-wide/16 v346, v10

    move-object/16 v333, v14

    move-wide/16 v337, v329

    move-object/from16 v10, v331

    :goto_3f
    add-int/lit8 v1, v1, 0x1

    move-object/16 v331, v10

    move-object/from16 v14, v333

    move/from16 v6, v334

    move-object/from16 v8, v335

    move-wide/16 v329, v337

    move-wide/from16 v10, v346

    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_4a
    move/16 v334, v6

    move-object/16 v335, v8

    move-wide/16 v346, v10

    move-object/16 v333, v14

    move-wide/16 v337, v329

    move-object/from16 v10, v331

    const-string/jumbo v4, "vib"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v1, v12

    move v2, v0

    move-object v3, v10

    move/from16 v11, v334

    move-wide/from16 v6, v337

    move-object/from16 v13, v335

    move v8, v15

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fg"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fgs"

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v1, :cond_4b

    move-wide/from16 v7, v337

    invoke-virtual {v9, v3, v7, v8, v15}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v154

    add-long v4, v4, v154

    add-long v156, v154, v96

    move-wide/16 v348, v4

    const-wide/16 v58, 0x3e8

    div-long v4, v156, v58

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v348

    const/4 v1, 0x7

    goto :goto_40

    :cond_4b
    move-wide/from16 v7, v337

    cmp-long v1, v4, v82

    if-lez v1, :cond_4c

    const-string/jumbo v1, "st"

    invoke-static {v12, v0, v10, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    invoke-virtual {v9, v15}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v154

    invoke-virtual {v9, v15}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v156

    cmp-long v1, v154, v82

    if-gtz v1, :cond_4e

    cmp-long v1, v156, v82

    if-lez v1, :cond_4d

    goto :goto_41

    :cond_4d
    move-object/16 v350, v2

    move-wide/16 v351, v4

    goto :goto_42

    :cond_4e
    :goto_41
    const-string v1, "cpu"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    move-object/16 v350, v2

    const-wide/16 v58, 0x3e8

    div-long v2, v154, v58

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    move-wide/16 v351, v4

    div-long v3, v156, v58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v12, v0, v10, v1, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_42
    if-eqz v175, :cond_5b

    invoke-virtual {v9, v15}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_54

    array-length v2, v1

    move-object/from16 v3, v175

    array-length v4, v3

    if-ne v2, v4, :cond_53

    move-object/from16 v2, v333

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    :goto_43
    array-length v5, v1

    if-ge v4, v5, :cond_50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_4f

    const-string v6, ""

    goto :goto_44

    :cond_4f
    const-string v6, ","

    :goto_44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v353, v7

    aget-wide v6, v1, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v7, v353

    goto :goto_43

    :cond_50
    move-wide/16 v353, v7

    invoke-virtual {v9, v15}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v4

    if-eqz v4, :cond_51

    const/4 v5, 0x0

    :goto_45
    array-length v6, v4

    if-ge v5, v6, :cond_52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_51
    const/4 v5, 0x0

    :goto_46
    array-length v6, v1

    if-ge v5, v6, :cond_52

    const-string v6, ",0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_52
    const-string v5, "ctf"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "A"

    const/4 v8, 0x0

    aput-object v6, v7, v8

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-static {v12, v0, v10, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47

    :cond_53
    move-wide/16 v353, v7

    move-object/from16 v2, v333

    goto :goto_47

    :cond_54
    move-wide/16 v353, v7

    move-object/from16 v3, v175

    move-object/from16 v2, v333

    :goto_47
    const/4 v4, 0x0

    :goto_48
    const/4 v5, 0x7

    if-ge v4, v5, :cond_5a

    invoke-virtual {v9, v15, v4}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v5

    if-eqz v5, :cond_59

    array-length v6, v5

    array-length v7, v3

    if-ne v6, v7, :cond_59

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x0

    :goto_49
    array-length v7, v5

    if-ge v6, v7, :cond_56

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_55

    const-string v8, ""

    goto :goto_4a

    :cond_55
    const-string v8, ","

    :goto_4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/16 v355, v13

    aget-wide v13, v5, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, v355

    goto :goto_49

    :cond_56
    move-object/16 v355, v13

    invoke-virtual {v9, v15, v4}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v6

    if-eqz v6, :cond_57

    const/4 v7, 0x0

    :goto_4b
    array-length v8, v6

    if-ge v7, v8, :cond_58

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v6, v7

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_57
    const/4 v7, 0x0

    :goto_4c
    array-length v8, v5

    if-ge v7, v8, :cond_58

    const-string v8, ",0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_58
    const-string v7, "ctf"

    const/4 v8, 0x3

    new-array v13, v8, [Ljava/lang/Object;

    sget-object v8, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v14, 0x0

    aput-object v8, v13, v14

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x2

    aput-object v8, v13, v14

    invoke-static {v12, v0, v10, v7, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d

    :cond_59
    move-object/16 v355, v13

    :goto_4d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v355

    goto/16 :goto_48

    :cond_5a
    move-object/16 v355, v13

    goto :goto_4e

    :cond_5b
    move-wide/16 v353, v7

    move-object/16 v355, v13

    move-object/from16 v3, v175

    move-object/from16 v2, v333

    :goto_4e
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_4f
    if-ltz v4, :cond_5e

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v13

    move-object/16 v357, v2

    move-object/16 v356, v3

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v2

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v8

    move/16 v358, v11

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v11

    move-object/16 v359, v9

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v9

    cmp-long v158, v6, v82

    if-nez v158, :cond_5d

    cmp-long v158, v13, v82

    if-nez v158, :cond_5d

    cmp-long v158, v2, v82

    if-nez v158, :cond_5d

    if-nez v8, :cond_5d

    if-nez v9, :cond_5d

    if-eqz v11, :cond_5c

    goto :goto_50

    :cond_5c
    move v5, v0

    goto :goto_51

    :cond_5d
    :goto_50
    move-object/16 v360, v5

    const-string/jumbo v5, "pr"

    move/16 v361, v0

    const/4 v15, 0x7

    new-array v0, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/16 v362, v5

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    aput-object v5, v0, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v15, 0x1

    aput-object v5, v0, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v15, 0x2

    aput-object v5, v0, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v15, 0x3

    aput-object v5, v0, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v15, 0x4

    aput-object v5, v0, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v15, 0x5

    aput-object v5, v0, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v15, 0x6

    aput-object v5, v0, v15

    move/from16 v5, v361

    move-object/from16 v15, v362

    invoke-static {v12, v5, v10, v15, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_51
    add-int/lit8 v4, v4, -0x1

    move v0, v5

    move-object/from16 v3, v356

    move-object/from16 v2, v357

    move/from16 v11, v358

    move-object/from16 v9, v359

    move/from16 v15, p3

    goto/16 :goto_4f

    :cond_5e
    move v5, v0

    move-object/16 v357, v2

    move-object/16 v356, v3

    move-object/16 v359, v9

    move/16 v358, v11

    move-object/from16 v0, v359

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_52
    if-ltz v3, :cond_63

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_53
    if-ltz v8, :cond_5f

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Counter;

    move/from16 v11, p3

    const/4 v13, 0x7

    invoke-virtual {v9, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0x2c

    const/16 v13, 0x5f

    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "wua"

    move-object/16 v363, v0

    const/4 v15, 0x2

    new-array v0, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v0, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v122, 0x1

    aput-object v15, v0, v122

    invoke-static {v12, v5, v10, v14, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v363

    goto :goto_53

    :cond_5f
    move-object/16 v363, v0

    move/from16 v11, p3

    const/16 v122, 0x1

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_54
    if-ltz v8, :cond_62

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v13, v161

    invoke-virtual {v9, v13, v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v158

    invoke-virtual {v9, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v15

    move-object/16 v364, v1

    invoke-virtual {v9, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v1

    cmp-long v160, v158, v82

    if-nez v160, :cond_61

    if-nez v15, :cond_61

    if-eqz v1, :cond_60

    goto :goto_55

    :cond_60
    move-object/16 v365, v4

    move-object/16 v366, v7

    move/16 v368, v8

    const/4 v8, 0x3

    const-wide/16 v58, 0x3e8

    const/16 v121, 0x2

    const/16 v122, 0x1

    const/16 v129, 0x5

    const/16 v160, 0x4

    const/16 v161, 0x0

    goto :goto_56

    :cond_61
    :goto_55
    move-object/16 v365, v4

    const-string v4, "apk"

    move-object/16 v366, v7

    move-object/16 v367, v9

    const/4 v7, 0x6

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v160

    const/16 v161, 0x0

    aput-object v160, v9, v161

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v160

    const/16 v122, 0x1

    aput-object v160, v9, v122

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v160

    const/16 v121, 0x2

    aput-object v160, v9, v121

    move/16 v368, v8

    const-wide/16 v58, 0x3e8

    div-long v7, v158, v58

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v9, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v160, 0x4

    aput-object v7, v9, v160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v129, 0x5

    aput-object v7, v9, v129

    invoke-static {v12, v5, v10, v4, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_56
    move/from16 v1, v368

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move-wide/from16 v161, v13

    move-object/from16 v1, v364

    move-object/from16 v4, v365

    move-object/from16 v7, v366

    goto/16 :goto_54

    :cond_62
    move-object/16 v364, v1

    move-wide/from16 v13, v161

    const/4 v8, 0x3

    const-wide/16 v58, 0x3e8

    const/16 v121, 0x2

    const/16 v122, 0x1

    const/16 v129, 0x5

    const/16 v160, 0x4

    const/16 v161, 0x0

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v161, v13

    move-object/from16 v0, v363

    goto/16 :goto_52

    :cond_63
    move-wide/from16 v13, v161

    const/4 v8, 0x3

    move/from16 v11, p3

    const-wide/16 v58, 0x3e8

    const/16 v121, 0x2

    const/16 v122, 0x1

    const/16 v129, 0x5

    const/16 v160, 0x4

    const/16 v161, 0x0

    :goto_57
    add-int/lit8 v1, v176, 0x1

    move-object v8, v10

    move v10, v11

    move-object v9, v12

    move-wide/from16 v161, v13

    move-object/from16 v94, v60

    move-object/from16 v173, v69

    move/from16 v120, v92

    move-wide/from16 v166, v346

    move-wide/from16 v12, v353

    move-object/from16 v14, v356

    move-object/from16 v7, v357

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    goto/16 :goto_1c

    :cond_64
    move/from16 v92, v6

    move-object/16 v357, v7

    move v11, v10

    move-wide/16 v353, v12

    move-object/16 v356, v14

    move-object/from16 v60, v94

    move-wide/from16 v13, v161

    move-wide/16 v346, v166

    move-object/from16 v69, v173

    move-object v10, v8

    move-object v12, v9

    return-void

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

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string v0, "i"

    const-string/jumbo v1, "vers"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    aput-object v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v8, v10, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v13, v0, v2

    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v2, "hsp"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ",\""

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    move/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_1
    :goto_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz v9, :cond_6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, v10

    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_3

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v12, [Ljava/lang/String;

    move v4, v10

    :goto_3
    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_5

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iget-boolean v12, v12, Landroid/util/MutableBoolean;->value:Z

    if-nez v12, :cond_5

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iput-boolean v11, v12, Landroid/util/MutableBoolean;->value:Z

    move v12, v10

    :goto_4
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v11, v3, v15

    const-string v11, "i"

    move-object/from16 v16, v0

    const-string/jumbo v0, "uid"

    move-object/from16 v17, v1

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v0, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_a

    const-string v0, ""

    const-string v1, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v8, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v11, v1, v5

    if-ltz v11, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    const-string v11, "i"

    const-string v12, "dtr"

    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const-string v5, ""

    const-string v6, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v8, v5, v6, v11, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v3

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-ltz v1, :cond_8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "i"

    const-string v2, "ctr"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v8, v10, v1, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/4 v4, 0x0

    const/4 v11, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_9

    move v10, v12

    nop

    :cond_9
    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v15, v5

    move v5, v11

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_a
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 28

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    and-int/lit8 v0, p3, 0x8

    const-wide/16 v8, 0x0

    if-nez v0, :cond_1

    if-nez v16, :cond_6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "Battery History ("

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v6

    div-long/2addr v0, v10

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% used, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v6, v7}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " used of "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " strings using "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v14, v15, v0, v1}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, "):"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, p3

    move-wide/from16 v4, p5

    move-wide/from16 v17, v6

    move v6, v0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide/from16 v17, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_2
    move-wide/from16 v17, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string v1, "Old battery History:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v2, -0x1

    :goto_3
    invoke-virtual {v14, v0}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    cmp-long v4, v2, v8

    if-gez v4, :cond_3

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v2, v4

    :cond_3
    move-wide/from16 v19, v2

    const/4 v6, 0x0

    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    move-object v2, v15

    move-object v3, v0

    move-wide/from16 v4, v19

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide/from16 v2, v19

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v0

    :cond_6
    :goto_5
    if-eqz v16, :cond_7

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez v16, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move v5, v2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_c

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_b

    move v10, v5

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v10, :cond_8

    const-string v13, "Per-PID Stats:"

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_8
    iget-wide v8, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v13, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v13, :cond_9

    iget-wide v12, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v3, v12

    goto :goto_8

    :cond_9
    const-wide/16 v12, 0x0

    :goto_8
    add-long/2addr v8, v12

    const-string v12, "  PID "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " wake time: "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v12, ""

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v8, 0x0

    goto :goto_7

    :cond_a
    move v5, v10

    :cond_b
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    goto :goto_6

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_d
    if-eqz v16, :cond_f

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_f
    :goto_9
    const-string v0, "  "

    const-string v1, "Discharge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v15, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v7

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v9

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-ltz v2, :cond_10

    const-string v0, "  Estimated discharge time remaining: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v0, v9, v7

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const/4 v1, 0x0

    :goto_a
    move v11, v1

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v1, v1

    if-ge v11, v1, :cond_11

    const-string v2, "  Estimated "

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v1, v11

    const-string v4, " time: "

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v1, v1, v11

    int-to-long v5, v1

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v1, v1, v11

    int-to-long v12, v1

    const/16 v26, 0x0

    move-object/from16 v21, v0

    move-wide/from16 v22, v5

    move-wide/from16 v24, v12

    invoke-virtual/range {v21 .. v26}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    move-object v1, v15

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v1, v11, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_12
    const-string v0, "  "

    const-string v1, "Charge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const/4 v12, 0x0

    invoke-static {v15, v0, v1, v2, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v7

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-string v2, "  Estimated charge time remaining: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v2, v0, v7

    invoke-static {v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_14
    :goto_b
    if-eqz v16, :cond_16

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_15

    goto :goto_c

    :cond_15
    move v4, v12

    goto/16 :goto_13

    :cond_16
    :goto_c
    const-string v0, "Daily stats:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Current start time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next min deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next max deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    new-array v13, v0, [I

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v9

    iget v1, v11, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_18

    iget v1, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_18

    if-eqz v9, :cond_17

    goto :goto_d

    :cond_17
    move v5, v0

    move-object v3, v9

    move-object v1, v10

    move-object v2, v11

    move v4, v12

    move-object v0, v13

    goto/16 :goto_f

    :cond_18
    :goto_d
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_1a

    if-nez v16, :cond_19

    move v5, v0

    move-object v3, v9

    move-object v1, v10

    move-object v2, v11

    move v4, v12

    move-object v0, v13

    goto :goto_e

    :cond_19
    const-string v1, "  Current daily steps:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    const-string v4, "Discharge"

    move-object v1, v14

    move-object v2, v15

    move-object v5, v11

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v1, "    "

    const-string v2, "Charge"

    move-object v7, v14

    move-object v8, v15

    move-object v3, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v1

    move v4, v12

    move-object v12, v6

    move v5, v0

    move-object v0, v13

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_f

    :cond_1a
    move v5, v0

    move-object v3, v9

    move-object v1, v10

    move-object v2, v11

    move v4, v12

    move-object v0, v13

    :goto_e
    const-string v7, "    "

    const-string v8, "  Current daily discharge step durations:"

    invoke-static {v15, v7, v8, v2, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v9, "      "

    const-string v10, "Discharge"

    move-object v7, v14

    move-object v8, v15

    move-object v11, v2

    move-object v12, v6

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1b
    const-string v7, "    "

    const-string v8, "  Current daily charge step durations:"

    invoke-static {v15, v7, v8, v1, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v9, "      "

    const-string v10, "Charge"

    move-object v7, v14

    move-object v8, v15

    move-object v11, v1

    move-object v12, v6

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1c
    const-string v7, "    "

    invoke-direct {v14, v15, v7, v3}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_f
    move v7, v4

    :goto_10
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v8

    move-object v13, v8

    if-eqz v8, :cond_22

    add-int/lit8 v17, v7, 0x1

    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1d
    const-string v7, "  Daily from "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v8, v13, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " to "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v8, v13, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_1f

    if-nez v16, :cond_1e

    move-object v5, v13

    goto :goto_11

    :cond_1e
    const-string v9, "    "

    const-string v10, "Discharge"

    iget-object v11, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object v7, v14

    move-object v8, v15

    move-object v12, v6

    move-object v5, v13

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v9, "    "

    const-string v10, "Charge"

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_12

    :cond_1f
    move-object v5, v13

    :goto_11
    const-string v7, "      "

    const-string v8, "    Discharge step durations:"

    iget-object v9, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v15, v7, v8, v9, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v9, "        "

    const-string v10, "Discharge"

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object v7, v14

    move-object v8, v15

    move-object v12, v6

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_20
    const-string v7, "      "

    const-string v8, "    Charge step durations:"

    iget-object v9, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v15, v7, v8, v9, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v9, "        "

    const-string v10, "Charge"

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object v7, v14

    move-object v8, v15

    move-object v12, v6

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_21
    const-string v7, "    "

    iget-object v8, v5, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v14, v15, v7, v8}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_12
    move/from16 v7, v17

    const/4 v5, 0x1

    goto/16 :goto_10

    :cond_22
    move-object v5, v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_13
    if-eqz v16, :cond_23

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_25

    :cond_23
    const-string v0, "Statistics since last charge:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  System starts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currently on battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v5, 0x0

    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_24

    const/4 v7, 0x1

    goto :goto_14

    :cond_24
    move v7, v4

    :goto_14
    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v0

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_25
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 419

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v9, v0, v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v5, v0, v16

    const-wide/16 v18, 0x1f4

    add-long v0, v5, v18

    div-long v3, v0, v16

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    move-wide/from16 v20, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    move-wide/from16 v22, v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v25

    move-wide/from16 v27, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v3

    move-wide/from16 v29, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v9

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v31

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v33

    move-wide/from16 v35, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    move-wide/from16 v37, v5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v6

    move-object/from16 v39, v0

    const/4 v0, 0x0

    if-lez v6, :cond_0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Estimated battery capacity: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v41, v3

    int-to-double v3, v6

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide/from16 v41, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Min learned battery capacity: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v43, v4

    int-to-double v3, v0

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v43, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Max learned battery capacity: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v44, v4

    int-to-double v3, v0

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move/from16 v44, v4

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Time on battery: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") realtime, "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v27, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v27

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") uptime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Time on battery screen off: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v45, v3

    div-long v3, v9, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") realtime, "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v35, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v35

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") uptime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Time on battery screen doze: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v47, v3

    div-long v3, v41, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v41

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total run time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v49, v3

    div-long v3, v11, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "realtime, "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v25, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "uptime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v27, 0x0

    cmp-long v0, v31, v27

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Battery time remaining: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v31, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    cmp-long v0, v33, v27

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Charge time remaining: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v33, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v3

    cmp-long v0, v3, v27

    const-wide v35, 0x408f400000000000L    # 1000.0

    if-ltz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v51, v9

    long-to-double v9, v3

    div-double v9, v9, v35

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-wide/from16 v51, v9

    :goto_3
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    cmp-long v0, v9, v27

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen off discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v53, v11

    long-to-double v11, v9

    div-double v11, v11, v35

    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-wide/from16 v53, v11

    :goto_4
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    cmp-long v0, v11, v27

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen doze discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v55, v5

    move/from16 v56, v6

    long-to-double v5, v11

    div-double v5, v5, v35

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move/from16 v55, v5

    move/from16 v56, v6

    :goto_5
    sub-long v5, v3, v9

    cmp-long v0, v5, v27

    if-ltz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen on discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v57, v3

    long-to-double v3, v5

    div-double v3, v3, v35

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-wide/from16 v57, v3

    :goto_6
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v3

    cmp-long v0, v3, v27

    if-ltz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device light doze discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v59, v5

    long-to-double v5, v3

    div-double v5, v5, v35

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    move-wide/from16 v59, v5

    :goto_7
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v5

    cmp-long v0, v5, v27

    if-ltz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device deep doze discharge: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v61, v3

    long-to-double v3, v5

    div-double v3, v3, v35

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-wide/from16 v61, v3

    :goto_8
    const-string v0, "  Start clock time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v63, v11

    move-wide/from16 v3, v37

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v11

    move-wide/from16 v65, v9

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v9

    move-wide/from16 v67, v5

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v5

    const/4 v0, 0x1

    move-wide/from16 v69, v5

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v5

    const/4 v0, 0x2

    move-wide/from16 v72, v5

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v5

    move-wide/from16 v75, v5

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v5

    move-wide/from16 v77, v5

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v5

    move-wide/from16 v79, v5

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v35

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v37

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen on: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v81, v5

    div-long v5, v11, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x, Interactive: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen brightnesses:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v5, v0

    const/4 v0, 0x0

    :goto_9
    const/4 v6, 0x5

    if-ge v0, v6, :cond_c

    move-wide/from16 v83, v9

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    cmp-long v6, v9, v27

    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    const-string v6, "\n    "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v85, v5

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "("

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v85

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v9, v83

    goto :goto_9

    :cond_c
    move-wide/from16 v83, v9

    if-nez v5, :cond_d

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v0, v69, v27

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Power save mode enabled: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v69, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v69

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    move-wide/from16 v9, v69

    :goto_b
    cmp-long v0, v77, v27

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device light idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v77, v16

    invoke-static {v8, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v88, v5

    move-wide/from16 v5, v77

    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v89, v5

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    move/from16 v88, v5

    move-wide/from16 v89, v77

    :goto_c
    cmp-long v0, v72, v27

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode light time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v72, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v72

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v91, v5

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- longest "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    move-wide/from16 v91, v72

    :goto_d
    cmp-long v0, v79, v27

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device full idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v79, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v79

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v93, v5

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_11
    move-wide/from16 v93, v79

    :goto_e
    cmp-long v0, v75, v27

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode full time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v75, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v75

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v95, v5

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- longest "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_12
    move-wide/from16 v95, v75

    :goto_f
    cmp-long v0, v81, v27

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Active phone call: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v81, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v81

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_13
    move-wide/from16 v5, v81

    :goto_10
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v97, v5

    const-string v5, "  Connectivity changes: "

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_11

    :cond_14
    move-wide/from16 v97, v5

    :goto_11
    const-wide/16 v5, 0x0

    const-wide/16 v41, 0x0

    move/from16 v99, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v69, v41

    move-wide/from16 v41, v5

    const/4 v5, 0x0

    :goto_12
    move/from16 v6, v55

    if-ge v5, v6, :cond_19

    move/from16 v100, v6

    move-object/from16 v6, v39

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v101, v6

    move-object/from16 v6, v39

    check-cast v6, Landroid/os/BatteryStats$Uid;

    nop

    move-wide/from16 v102, v9

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move-wide/from16 v104, v11

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_13
    if-ltz v10, :cond_18

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    move-wide/from16 v106, v1

    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v72

    add-long v41, v41, v72

    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11, v3, v4, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v72

    cmp-long v2, v72, v27

    if-lez v2, :cond_17

    move/from16 v24, p5

    if-gez v24, :cond_16

    new-instance v2, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v76, v39

    check-cast v76, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v77

    move-object/from16 v75, v2

    move-object/from16 v78, v11

    move-wide/from16 v79, v72

    invoke-direct/range {v75 .. v80}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-long v69, v69, v72

    goto :goto_14

    :cond_17
    move/from16 v24, p5

    :goto_14
    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v1, v106

    const/4 v11, 0x1

    goto :goto_13

    :cond_18
    move-wide/from16 v106, v1

    move/from16 v24, p5

    add-int/lit8 v5, v5, 0x1

    move/from16 v55, v100

    move-object/from16 v39, v101

    move-wide/from16 v9, v102

    move-wide/from16 v11, v104

    goto :goto_12

    :cond_19
    move-wide/from16 v106, v1

    move/from16 v100, v6

    move-wide/from16 v102, v9

    move-wide/from16 v104, v11

    move-object/from16 v101, v39

    move/from16 v24, p5

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const/4 v2, 0x1

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v108, v3

    const/4 v5, 0x2

    invoke-virtual {v7, v5, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const/4 v6, 0x3

    move-wide/from16 v111, v2

    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v5

    move-wide/from16 v115, v3

    const/4 v1, 0x1

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    move-object/from16 v117, v0

    const/4 v2, 0x2

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v120, v0

    const/4 v2, 0x3

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    const/4 v2, 0x4

    move-wide/from16 v123, v0

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v126, v0

    const/4 v2, 0x5

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    cmp-long v39, v41, v27

    if-eqz v39, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total full wakelock time: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v71, v41, v18

    move-wide/from16 v129, v0

    div-long v0, v71, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_1a
    move-wide/from16 v129, v0

    :goto_15
    cmp-long v0, v69, v27

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total partial wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v69, v18

    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    nop

    move-wide/from16 v1, v108

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v71

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v0

    cmp-long v39, v71, v27

    if-eqz v39, :cond_1c

    move-wide/from16 v131, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v3, v71, v18

    div-long v3, v3, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_1c
    move-wide/from16 v131, v3

    :goto_16
    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Logging duration for connectivity statistics: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v106, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Cellular Statistics:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Cellular kernel active time: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    move/from16 v135, v0

    move-wide/from16 v133, v1

    div-long v0, v3, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v106

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v136, v3

    move-wide/from16 v3, v131

    invoke-virtual {v15, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Radio Access Technology:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move/from16 v39, v0

    const/4 v0, 0x0

    :goto_17
    move-wide/from16 v138, v3

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1e

    move-wide/from16 v140, v5

    move-wide/from16 v3, v133

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v5

    cmp-long v55, v5, v27

    if-nez v55, :cond_1d

    nop

    move-wide/from16 v142, v9

    goto :goto_18

    :cond_1d
    move-wide/from16 v142, v9

    const-string v9, "\n       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    sget-object v10, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v144, v9

    div-long v9, v5, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v39, v144

    :goto_18
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v133, v3

    move-wide/from16 v3, v138

    move-wide/from16 v5, v140

    move-wide/from16 v9, v142

    goto :goto_17

    :cond_1e
    move-wide/from16 v140, v5

    move-wide/from16 v142, v9

    move-wide/from16 v3, v133

    if-nez v39, :cond_1f

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "very poor (less than -128dBm): "

    const-string/jumbo v6, "poor (-128dBm to -118dBm): "

    const-string/jumbo v9, "moderate (-118dBm to -108dBm): "

    const-string v10, "good (-108dBm to -98dBm): "

    const-string v0, "great (greater than -98dBm): "

    filled-new-array {v5, v6, v9, v10, v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    array-length v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v39, v0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v9, :cond_21

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    cmp-long v40, v5, v27

    if-nez v40, :cond_20

    nop

    move-wide/from16 v146, v3

    goto :goto_1a

    :cond_20
    move-wide/from16 v146, v3

    const-string v3, "\n       "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, v10, v0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v148, v3

    div-long v3, v5, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v39, v148

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v3, v146

    goto :goto_19

    :cond_21
    move-wide/from16 v146, v3

    if-nez v39, :cond_22

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Cellular"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move/from16 v152, v9

    move-object/from16 v151, v10

    move-wide/from16 v149, v11

    move/from16 v40, v99

    move-object/from16 v6, v101

    move-object/from16 v3, v117

    move-wide/from16 v11, v120

    move-wide/from16 v157, v123

    move-wide/from16 v153, v126

    move-wide/from16 v155, v129

    move/from16 v55, v135

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, v7

    move-wide/from16 v162, v1

    move-wide/from16 v160, v22

    move-wide/from16 v22, v146

    move-object v1, v15

    move-wide/from16 v164, v111

    const/16 v73, 0x5

    const/16 v74, 0x3

    move-object v2, v8

    move-object/from16 v169, v3

    move-wide/from16 v167, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v45

    move-wide/from16 v45, v47

    move-wide/from16 v47, v49

    move-wide/from16 v49, v57

    move-wide/from16 v57, v61

    move-wide/from16 v170, v115

    move-wide/from16 v172, v136

    move-wide/from16 v61, v138

    move-object v3, v14

    move-wide/from16 v174, v20

    move-wide/from16 v20, v59

    move-wide/from16 v59, v67

    move-wide/from16 v79, v89

    move-wide/from16 v75, v91

    move-wide/from16 v81, v93

    move-wide/from16 v77, v95

    move-wide/from16 v85, v97

    move/from16 v176, v100

    move-wide/from16 v67, v102

    move-wide/from16 v87, v140

    move-object/from16 v177, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v174

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v3

    div-long v0, v3, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v162

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v164

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v182, v9

    move-wide/from16 v9, v170

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v184, v9

    move-wide/from16 v9, v157

    invoke-virtual {v15, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move/from16 v39, v0

    const/4 v0, 0x0

    :goto_1b
    move-wide/from16 v186, v3

    const/16 v3, 0x8

    if-ge v0, v3, :cond_24

    invoke-virtual {v7, v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v3

    cmp-long v73, v3, v27

    if-nez v73, :cond_23

    nop

    move-wide/from16 v188, v9

    goto :goto_1c

    :cond_23
    move-wide/from16 v188, v9

    const-string v9, "\n       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    sget-object v10, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v190, v9

    div-long v9, v3, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v39, v190

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v3, v186

    move-wide/from16 v9, v188

    goto :goto_1b

    :cond_24
    move-wide/from16 v188, v9

    if-nez v39, :cond_25

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi supplicant states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_1d
    const/16 v4, 0xd

    if-ge v0, v4, :cond_27

    invoke-virtual {v7, v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v9

    cmp-long v4, v9, v27

    if-nez v4, :cond_26

    goto :goto_1e

    :cond_26
    const-string v4, "\n       "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v191, v3

    div-long v3, v9, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v191

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_27
    if-nez v3, :cond_28

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "very poor (less than -88.75dBm): "

    const-string/jumbo v4, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v9, "moderate (-77.5dBm to -66.25dBm): "

    const-string v10, "good (-66.25dBm to -55dBm): "

    move/from16 v192, v3

    const-string v3, "great (greater than -55dBm): "

    filled-new-array {v0, v4, v9, v10, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    array-length v3, v10

    const/4 v9, 0x5

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v39, v0

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v4, :cond_2a

    move-object/from16 v193, v10

    invoke-virtual {v7, v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v9

    cmp-long v3, v9, v27

    if-nez v3, :cond_29

    nop

    move/from16 v195, v4

    goto :goto_20

    :cond_29
    const-string v3, "\n    "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    move/from16 v194, v3

    const-string v3, "     "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v193, v0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v195, v4

    div-long v3, v9, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v39, v194

    :goto_20
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v193

    move/from16 v4, v195

    const/4 v9, 0x5

    goto :goto_1f

    :cond_2a
    move/from16 v195, v4

    move-object/from16 v193, v10

    if-nez v39, :cond_2b

    const-string v0, " (no activity)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "WiFi"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v9

    move-object v0, v7

    move-wide v2, v1

    move-object v1, v15

    move-wide/from16 v196, v11

    move-wide v11, v2

    move-object v2, v8

    move-wide/from16 v73, v186

    move-object v3, v14

    move/from16 v89, v195

    move-wide/from16 v198, v11

    move-wide v10, v5

    move-object v5, v9

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  GPS Statistics:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "poor (less than 20 dBHz): "

    const-string v1, "good (greater than 20 dBHz): "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    array-length v0, v12

    const/4 v9, 0x2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v6, :cond_2c

    invoke-virtual {v7, v0, v10, v11, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v1

    const-string v3, "\n    "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v12, v0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v198

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2c
    move-wide/from16 v4, v198

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v2

    cmp-long v0, v2, v27

    if-lez v0, :cond_2d

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Battery Drain (mAh): "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v0, v2

    const-wide v90, 0x414b774000000000L    # 3600000.0

    div-double v0, v0, v90

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v153

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ", sent: "

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v201, v4

    move/from16 v200, v6

    move-wide/from16 v5, v155

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11, v13}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v90

    move-wide/from16 v203, v10

    div-long v9, v90, v16

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Bluetooth scan time: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    move-wide/from16 v90, v0

    move-object v0, v7

    move-object v1, v15

    move-wide/from16 v92, v2

    move-object v2, v8

    move-object v3, v14

    move-wide/from16 v205, v9

    move-wide/from16 v9, v201

    move-wide/from16 v94, v5

    move-object v5, v11

    move/from16 v96, v200

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v11, 0x2

    if-ne v13, v11, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently unplugged"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle current level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_22

    :cond_2e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently plugged into power"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle end level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    :goto_22
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    :cond_2f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_23
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v6, p1

    move/from16 v5, p6

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object v4, v0

    invoke-virtual {v4, v7}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v2, -0x1

    invoke-virtual {v4, v13, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Estimated power use (mAh):"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Capacity: "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v1, ", Computed drain: "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v1

    invoke-direct {v7, v15, v1, v2}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v1, ", actual drain: "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v1

    invoke-direct {v7, v15, v1, v2}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v1

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v97

    cmpl-double v1, v1, v97

    if-eqz v1, :cond_30

    const-string v1, "-"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v1

    invoke-direct {v7, v15, v1, v2}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_30
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x0

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v11, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v11

    aget v3, v3, v11

    packed-switch v3, :pswitch_data_0

    const-string v3, "    ???: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_0
    const-string v3, "    Camera: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_1
    const-string v3, "    Over-counted: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_2
    const-string v3, "    Unaccounted: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_3
    const-string v3, "    User "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_4
    const-string v3, "    Uid "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ": "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_5
    const-string v3, "    Flashlight: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_6
    const-string v3, "    Screen: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_7
    const-string v3, "    Bluetooth: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_8
    const-string v3, "    Wifi: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_9
    const-string v3, "    Phone calls: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_a
    const-string v3, "    Cell standby: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_b
    const-string v3, "    Idle: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_c
    const-string v3, "    Ambient display: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_25
    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {v7, v15, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v207, v12

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v3, v5, v11

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_3b

    const-string v3, " ("

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_31

    const-string v3, " usage="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_31
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_32

    const-string v3, " cpu="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_32
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_33

    const-string v3, " wake="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_33
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_34

    const-string v3, " radio="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_34
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_35

    const-string v3, " wifi="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_35
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_36

    const-string v3, " bt="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_36
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_37

    const-string v3, " gps="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_37
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_38

    const-string v3, " sensor="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_38
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_39

    const-string v3, " camera="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_39
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_3a

    const-string v3, " flash="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_3a
    const-string v3, " )"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3b
    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v3, v11, v5

    if-eqz v3, :cond_3e

    const-string v3, " Including smearing: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-direct {v7, v15, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v3, " ("

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v3, v5, v11

    if-eqz v3, :cond_3c

    const-string v3, " screen="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-direct {v7, v15, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_3c
    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    const-wide/16 v11, 0x0

    cmpl-double v3, v5, v11

    if-eqz v3, :cond_3d

    const-string v3, " proportional="

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-direct {v7, v15, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_3d
    const-string v3, " )"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e
    iget-boolean v3, v2, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v3, :cond_3f

    const-string v3, " Excluded from smearing"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, v207

    move/from16 v5, p6

    move-object/from16 v6, p1

    const/4 v11, 0x2

    goto/16 :goto_24

    :cond_40
    move-object/from16 v207, v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_26

    :cond_41
    move-object/from16 v207, v12

    :goto_26
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_43

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Per-app mobile ms per packet:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v1, v0

    const/4 v0, 0x0

    :goto_27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Uid "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v8, v5}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v5, ": "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v208, v11

    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v5, v11

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " packets over "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string v5, ") "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v208

    goto :goto_27

    :cond_42
    move-object/from16 v208, v11

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    TOTAL TIME: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_28

    :cond_43
    move-object/from16 v208, v11

    :goto_28
    new-instance v0, Landroid/os/BatteryStats$1;

    invoke-direct {v0, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v11, v0

    if-gez v24, :cond_4e

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_49

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-object/from16 v209, v4

    move-wide/from16 v4, v203

    invoke-static {v2, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v106

    cmp-long v3, v106, v27

    if-lez v3, :cond_44

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v97

    move-object/from16 v98, v97

    check-cast v98, Ljava/lang/String;

    const/16 v99, 0x0

    move-object/from16 v97, v3

    move-object/from16 v100, v2

    move-wide/from16 v101, v106

    invoke-direct/range {v97 .. v102}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    nop

    move-wide/from16 v203, v4

    move-object/from16 v4, v209

    goto :goto_29

    :cond_45
    move-object/from16 v209, v4

    move-wide/from16 v4, v203

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2a
    move v2, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_47

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const-string v97, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Kernel Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v98, 0x0

    move-object v0, v8

    move/from16 v99, v2

    move-object/from16 v100, v3

    const/16 v101, -0x1

    move-wide v2, v4

    move-wide/from16 v210, v4

    move-object/from16 v102, v209

    move-object/from16 v4, v98

    move v5, v13

    move-object/from16 v98, v6

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, " realtime"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v0, v99, 0x1

    move-object/from16 v6, v98

    move-object/from16 v209, v102

    move-wide/from16 v4, v210

    goto :goto_2a

    :cond_47
    move-wide/from16 v210, v4

    move-object/from16 v98, v6

    move-object/from16 v102, v209

    const/16 v101, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b

    :cond_48
    move-wide/from16 v210, v4

    move-object/from16 v102, v209

    const/16 v101, -0x1

    goto :goto_2b

    :cond_49
    move-object/from16 v102, v4

    move-wide/from16 v210, v203

    const/16 v101, -0x1

    :goto_2b
    move-object/from16 v6, v169

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2c
    move v5, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4a

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$TimerEntry;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v97, 0x0

    const-string v98, ": "

    move-object v0, v8

    move-wide/from16 v2, v210

    move-object/from16 v99, v4

    move-object/from16 v4, v97

    move/from16 v97, v5

    move v5, v13

    move-object/from16 v212, v12

    move-object v12, v6

    move-object/from16 v6, v98

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v97, 0x1

    move-object v6, v12

    move-object/from16 v12, v212

    goto :goto_2c

    :cond_4a
    move-object/from16 v212, v12

    move-object v12, v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2d

    :cond_4b
    move-object/from16 v212, v12

    move-object v12, v6

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All wakeup reasons:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v107, v4

    check-cast v107, Ljava/lang/String;

    const/16 v108, 0x0

    invoke-virtual {v2, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    move-object/from16 v213, v0

    move-object/from16 v214, v1

    int-to-long v0, v4

    move-object/from16 v106, v3

    move-object/from16 v109, v2

    move-wide/from16 v110, v0

    invoke-direct/range {v106 .. v111}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v0, v213

    goto :goto_2e

    :cond_4c
    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_2f
    move v4, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4d

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$TimerEntry;

    const-string v97, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wakeup reason "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v98, 0x0

    const-string v99, ": "

    move-object v0, v8

    move-object/from16 v100, v2

    move-wide/from16 v2, v210

    move/from16 v103, v4

    move-object/from16 v4, v98

    move-object/from16 v98, v5

    move v5, v13

    move-object/from16 v106, v6

    move-object/from16 v6, v99

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v103, 0x1

    move-object/from16 v5, v98

    move-object/from16 v6, v106

    goto :goto_2f

    :cond_4d
    move-object/from16 v98, v5

    move-object/from16 v106, v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_30

    :cond_4e
    move-object/from16 v102, v4

    move-object/from16 v12, v169

    move-wide/from16 v210, v203

    const/16 v101, -0x1

    :cond_4f
    :goto_30
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_51

    const-string v0, "  Memory Stats"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_31
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "  Bandwidth "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Time "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v3, v210

    invoke-virtual {v2, v3, v4, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_50
    move-wide/from16 v3, v210

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_32

    :cond_51
    move-wide/from16 v3, v210

    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_53

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Resource Power Manager Stats"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_52

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/BatteryStats$Timer;

    move-object/from16 v215, v8

    move-object v8, v15

    move-object/from16 v216, v6

    move-wide/from16 v98, v83

    move-wide/from16 v106, v142

    move/from16 v100, v152

    move-wide/from16 v108, v182

    move-wide/from16 v110, v184

    move-wide/from16 v112, v188

    move-wide/from16 v114, v205

    const/4 v6, 0x2

    move-wide/from16 v83, v65

    move-wide/from16 v65, v51

    move-wide/from16 v51, v9

    const/4 v10, 0x0

    move-object/from16 v9, v215

    move v6, v10

    move-object/from16 v103, v151

    move-object/from16 v116, v193

    move-object/from16 v10, v97

    move-object/from16 v121, v11

    move-object/from16 v24, v12

    move-wide/from16 v217, v51

    move-wide/from16 v51, v63

    move-wide/from16 v63, v104

    move-wide/from16 v104, v149

    move-wide/from16 v117, v196

    move-object/from16 v119, v207

    move-object/from16 v120, v208

    move-wide v11, v3

    move/from16 v13, p4

    move-object/from16 v14, p3

    move-object v15, v2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    nop

    move-object/from16 v15, p2

    move-object/from16 v12, v24

    move-object/from16 v11, v121

    move-object/from16 v8, v215

    move-object/from16 v6, v216

    move-wide/from16 v9, v217

    move/from16 v24, p5

    move-wide/from16 v104, v63

    move-wide/from16 v63, v51

    move-wide/from16 v51, v65

    move-wide/from16 v65, v83

    move-wide/from16 v83, v98

    goto :goto_33

    :cond_52
    move-object/from16 v216, v6

    move-object/from16 v215, v8

    move-wide/from16 v217, v9

    move-object/from16 v121, v11

    move-object/from16 v24, v12

    move-wide/from16 v98, v83

    move-wide/from16 v106, v142

    move-object/from16 v103, v151

    move/from16 v100, v152

    move-wide/from16 v108, v182

    move-wide/from16 v110, v184

    move-wide/from16 v112, v188

    move-object/from16 v116, v193

    move-wide/from16 v117, v196

    move-wide/from16 v114, v205

    move-object/from16 v119, v207

    move-object/from16 v120, v208

    const/4 v6, 0x0

    move-wide/from16 v83, v65

    move-wide/from16 v65, v51

    move-wide/from16 v51, v63

    move-wide/from16 v63, v104

    move-wide/from16 v104, v149

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_34

    :cond_53
    move-object/from16 v216, v6

    move-object/from16 v215, v8

    move-wide/from16 v217, v9

    move-object/from16 v121, v11

    move-object/from16 v24, v12

    move-wide/from16 v98, v83

    move-wide/from16 v106, v142

    move-object/from16 v103, v151

    move/from16 v100, v152

    move-wide/from16 v108, v182

    move-wide/from16 v110, v184

    move-wide/from16 v112, v188

    move-object/from16 v116, v193

    move-wide/from16 v117, v196

    move-wide/from16 v114, v205

    move-object/from16 v119, v207

    move-object/from16 v120, v208

    const/4 v6, 0x0

    move-wide/from16 v83, v65

    move-wide/from16 v65, v51

    move-wide/from16 v51, v63

    move-wide/from16 v63, v104

    move-wide/from16 v104, v149

    :goto_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v15

    if-eqz v15, :cond_55

    move-object/from16 v14, v215

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  CPU freqs:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    :goto_35
    array-length v1, v15

    if-ge v0, v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v15, v0

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_54
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_36

    :cond_55
    move-object/from16 v13, p2

    move-object/from16 v14, v215

    :goto_36
    move v0, v6

    :goto_37
    move v11, v0

    move/from16 v12, v176

    if-ge v11, v12, :cond_d4

    move-object/from16 v10, v177

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    move/from16 v8, p5

    if-ltz v8, :cond_56

    if-eq v9, v8, :cond_56

    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_56

    nop

    move-wide/16 v392, v3

    move-object/from16 v127, v5

    move-object/from16 v159, v10

    move/16 v380, v12

    move-object v4, v13

    move-object v3, v14

    move-object/from16 v166, v15

    move-wide/from16 v14, v160

    move-wide/16 v388, v167

    move-wide/from16 v123, v172

    move-object/from16 v128, v216

    move-wide/from16 v137, v217

    const/16 v122, 0x3

    const/16 v158, 0x1

    const/16 v164, 0x5

    const/16 v165, 0x4

    move-object/from16 v5, p3

    move/from16 v12, p4

    move/from16 v168, v11

    goto/16 :goto_89

    :cond_56
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x0

    move/from16 v1, p4

    move/from16 v219, v11

    move/from16 v220, v12

    invoke-virtual {v2, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    move/from16 v222, v9

    move-object/from16 v221, v10

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v223, v9

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v225, v8

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v227, v8

    const/4 v10, 0x5

    invoke-virtual {v2, v10, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v229, v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    move-object/from16 v232, v14

    move-object/from16 v231, v15

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-wide/from16 v233, v14

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    move-wide/from16 v235, v13

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-wide/from16 v237, v14

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v13

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v15

    move-wide/from16 v239, v13

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v13

    move-wide/from16 v241, v13

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v13

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v10

    move/from16 v243, v10

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v10

    move-wide/from16 v244, v13

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v13

    move-wide/from16 v246, v13

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v13

    move-wide/from16 v248, v13

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v13

    move-wide/from16 v250, v13

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v13

    move-wide/from16 v253, v3

    move-object/from16 v252, v5

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v4

    cmp-long v3, v11, v27

    if-gtz v3, :cond_58

    cmp-long v3, v6, v27

    if-gtz v3, :cond_58

    cmp-long v3, v8, v27

    if-gtz v3, :cond_58

    move-wide/from16 v255, v6

    move-wide/from16 v6, v233

    cmp-long v3, v6, v27

    if-lez v3, :cond_57

    goto :goto_38

    :cond_57
    move-wide/16 v259, v4

    move-wide/16 v257, v235

    move-wide/from16 v4, v255

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    goto :goto_39

    :cond_58
    move-wide/from16 v255, v6

    move-wide/from16 v6, v233

    :goto_38
    move-wide/16 v257, v235

    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Mobile network: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/16 v259, v4

    move-wide/from16 v4, v255

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " received, "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " sent (packets "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " received, "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " sent)"

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_39
    move-wide/16 v261, v11

    move-wide/from16 v11, v239

    cmp-long v1, v11, v27

    if-gtz v1, :cond_5a

    if-lez v15, :cond_59

    goto :goto_3a

    :cond_59
    move-wide/16 v263, v4

    move-wide/16 v268, v6

    move-wide/16 v270, v8

    move/16 v265, v10

    move-wide/16 v266, v172

    move-object/from16 v1, v232

    goto :goto_3b

    :cond_5a
    :goto_3a
    move-wide/16 v263, v4

    move-object/from16 v1, v232

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Mobile radio active: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v11, v16

    invoke-static {v1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/16 v265, v10

    move-wide/from16 v4, v172

    invoke-virtual {v0, v11, v12, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v122, v8, v6

    cmp-long v10, v122, v27

    if-nez v10, :cond_5b

    const-wide/16 v122, 0x1

    :cond_5b
    move-wide/16 v266, v4

    move-wide/from16 v4, v122

    const-string v10, " @ "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v268, v6

    div-long v6, v11, v16

    long-to-double v6, v6

    move-wide/16 v270, v8

    long-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mspp"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3b
    cmp-long v4, v13, v27

    if-lez v4, :cond_5c

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Mobile radio AP wakeups: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c

    :cond_5c
    move-object/from16 v5, p3

    const/4 v6, 0x0

    :goto_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Cellular"

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object v10, v0

    const/4 v9, 0x1

    const/16 v122, 0x3

    move-object/16 v272, v1

    move-object v1, v3

    move-object v9, v2

    move-object/from16 v2, v272

    move-wide/16 v274, v13

    move/16 v273, v15

    move-wide/from16 v14, v253

    move-object v3, v4

    move-wide/16 v276, v11

    move-wide/from16 v11, v259

    move-wide/from16 v125, v263

    move-wide/from16 v123, v266

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v127, v252

    move-object v5, v8

    move v13, v6

    move-object/from16 v128, v216

    move-wide/from16 v129, v268

    const/4 v8, 0x2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v223, v27

    if-gtz v0, :cond_5f

    cmp-long v0, v225, v27

    if-gtz v0, :cond_5f

    move-wide/from16 v5, v257

    cmp-long v0, v5, v27

    if-gtz v0, :cond_5e

    move-wide/from16 v3, v237

    cmp-long v0, v3, v27

    if-lez v0, :cond_5d

    goto :goto_3d

    :cond_5d
    move-object/from16 v2, p2

    move-wide/16 v278, v14

    move-wide/from16 v0, v223

    move-wide/from16 v13, v225

    goto :goto_3e

    :cond_5e
    move-wide/from16 v3, v237

    goto :goto_3d

    :cond_5f
    move-wide/from16 v3, v237

    move-wide/from16 v5, v257

    :goto_3d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v223

    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " received, "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/16 v278, v14

    move-wide/from16 v13, v225

    invoke-virtual {v10, v13, v14}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " sent (packets "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " received, "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " sent)"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    move-wide/16 v280, v13

    move-wide/from16 v13, v241

    cmp-long v8, v13, v27

    if-nez v8, :cond_66

    move-wide/16 v282, v5

    move-wide/from16 v5, v244

    cmp-long v8, v5, v27

    if-nez v8, :cond_65

    move/from16 v15, v243

    if-nez v15, :cond_64

    move/from16 v8, v265

    if-nez v8, :cond_63

    move-wide/16 v284, v3

    move-wide/from16 v3, v246

    cmp-long v131, v3, v27

    if-nez v131, :cond_62

    move-wide/16 v286, v0

    move-wide/from16 v0, v248

    cmp-long v131, v0, v27

    if-nez v131, :cond_61

    move-wide/16 v288, v11

    move-wide/from16 v11, v250

    cmp-long v131, v11, v27

    if-eqz v131, :cond_60

    goto/16 :goto_3f

    :cond_60
    move-wide/16 v297, v3

    move-object/16 v290, v9

    move-wide/16 v293, v11

    move-wide/16 v295, v217

    move-object/from16 v9, v272

    move-wide/from16 v11, v278

    move-object v3, v2

    goto/16 :goto_40

    :cond_61
    move-wide/16 v288, v11

    move-wide/from16 v11, v250

    goto :goto_3f

    :cond_62
    move-wide/16 v286, v0

    move-wide/16 v288, v11

    move-wide/from16 v0, v248

    move-wide/from16 v11, v250

    goto :goto_3f

    :cond_63
    move-wide/16 v286, v0

    move-wide/16 v284, v3

    move-wide/16 v288, v11

    move-wide/from16 v3, v246

    move-wide/from16 v0, v248

    move-wide/from16 v11, v250

    goto :goto_3f

    :cond_64
    move-wide/16 v286, v0

    move-wide/16 v284, v3

    move-wide/16 v288, v11

    move-wide/from16 v3, v246

    move-wide/from16 v0, v248

    move-wide/from16 v11, v250

    move/from16 v8, v265

    goto :goto_3f

    :cond_65
    move-wide/16 v286, v0

    move-wide/16 v284, v3

    move-wide/16 v288, v11

    move/from16 v15, v243

    move-wide/from16 v3, v246

    move-wide/from16 v0, v248

    move-wide/from16 v11, v250

    move/from16 v8, v265

    goto :goto_3f

    :cond_66
    move-wide/16 v286, v0

    move-wide/16 v284, v3

    move-wide/16 v282, v5

    move-wide/16 v288, v11

    move/from16 v15, v243

    move-wide/from16 v5, v244

    move-wide/from16 v3, v246

    move-wide/from16 v0, v248

    move-wide/from16 v11, v250

    move/from16 v8, v265

    :goto_3f
    move-object/16 v290, v9

    move-object/from16 v9, v272

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Wifi Running: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v291, v0

    div-long v0, v11, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v217

    invoke-virtual {v10, v11, v12, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Full Wifi Lock: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v293, v11

    div-long v11, v13, v16

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (blamed): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v11, v5, v16

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (actual): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v11, v3, v16

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v295, v1

    move-wide/from16 v11, v278

    const/4 v0, 0x0

    invoke-virtual {v10, v11, v12, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Background Wifi Scan: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v297, v3

    move-wide/from16 v0, v291

    div-long v2, v0, v16

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v10, v11, v12, v2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    invoke-virtual {v10, v0, v1, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_40
    move-wide/16 v299, v13

    move-wide/from16 v13, v288

    cmp-long v2, v13, v27

    if-lez v2, :cond_67

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    WiFi AP wakeups: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v131, "WiFi"

    move-object/from16 v2, v290

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v132

    move-wide/from16 v135, v0

    move-wide/from16 v133, v286

    move-object v0, v10

    move-wide/from16 v137, v295

    move-object v1, v3

    move-wide/16 v301, v13

    move-object v13, v2

    move-object v2, v9

    move-object v14, v3

    move-wide/from16 v139, v284

    move-wide/from16 v141, v297

    move-object v3, v4

    move-object/from16 v4, v131

    move-wide/from16 v145, v5

    move-wide/from16 v143, v282

    move-object/from16 v5, v132

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v227, v27

    if-gtz v0, :cond_69

    move-wide/from16 v5, v229

    cmp-long v0, v5, v27

    if-lez v0, :cond_68

    goto :goto_41

    :cond_68
    move-wide/from16 v2, v227

    goto :goto_42

    :cond_69
    move-wide/from16 v5, v229

    :goto_41
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v227

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_42
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_7e

    move/from16 v1, p4

    invoke-virtual {v4, v11, v12, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v131

    add-long v131, v131, v18

    move-wide/16 v303, v2

    div-long v2, v131, v16

    cmp-long v0, v2, v27

    if-eqz v0, :cond_7d

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    move-wide/16 v305, v5

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_6a

    invoke-virtual {v5, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    goto :goto_43

    :cond_6a
    const/4 v6, 0x0

    :goto_43
    move-wide/16 v307, v11

    move/16 v309, v15

    move-wide/from16 v10, v167

    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    if-eqz v5, :cond_6b

    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v131

    goto :goto_44

    :cond_6b
    move-wide/from16 v131, v27

    :goto_44
    move-wide/16 v310, v131

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v12

    if-eqz v12, :cond_6c

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v12

    goto :goto_45

    :cond_6c
    const/4 v12, 0x0

    :goto_45
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v131

    if-eqz v131, :cond_6d

    move/16 v312, v8

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    goto :goto_46

    :cond_6d
    move/16 v312, v8

    const/4 v8, 0x0

    :goto_46
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v131

    goto :goto_47

    :cond_6e
    move-wide/from16 v131, v27

    :goto_47
    move-wide/16 v313, v131

    if-eqz v1, :cond_6f

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v131

    goto :goto_48

    :cond_6f
    move-wide/from16 v131, v27

    :goto_48
    move-wide/16 v315, v131

    nop

    move-object/16 v317, v1

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v131

    goto :goto_49

    :cond_70
    move-wide/from16 v131, v27

    :goto_49
    move-wide/16 v318, v131

    if-eqz v1, :cond_71

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v131

    goto :goto_4a

    :cond_71
    move-wide/from16 v131, v27

    :goto_4a
    move-wide/16 v320, v131

    move-wide/16 v322, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v10, v14, v2

    if-eqz v10, :cond_73

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " times)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_72

    const-string v10, " (currently running)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " times)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_74

    const-string v10, " (currently running)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v310

    cmp-long v131, v10, v27

    if-gtz v131, :cond_76

    if-lez v6, :cond_75

    goto :goto_4b

    :cond_75
    move/16 v324, v0

    goto :goto_4c

    :cond_76
    :goto_4b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/16 v324, v0

    const-string v0, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_77

    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, " (currently running in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4c
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan Results: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v325, v2

    move-wide/from16 v2, v313

    cmp-long v0, v2, v27

    if-gtz v0, :cond_79

    move-object/16 v327, v4

    move-object/16 v328, v5

    move-wide/from16 v4, v318

    cmp-long v0, v4, v27

    if-lez v0, :cond_78

    goto :goto_4d

    :cond_78
    move-wide/16 v329, v2

    move-wide/16 v332, v315

    move-object/16 v331, v317

    move-wide/from16 v2, v320

    goto/16 :goto_4f

    :cond_79
    move-object/16 v327, v4

    move-object/16 v328, v5

    move-wide/from16 v4, v318

    :goto_4d
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v329, v2

    move-wide/from16 v2, v315

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v317

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v131

    if-eqz v131, :cond_7a

    move-object/16 v331, v0

    const-string v0, " (currently running unoptimized)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_7a
    move-object/16 v331, v0

    :goto_4e
    if-eqz v1, :cond_7b

    cmp-long v0, v4, v27

    if-lez v0, :cond_7b

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v332, v2

    move-wide/from16 v2, v320

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_7b
    move-wide/16 v332, v2

    move-wide/from16 v2, v320

    :cond_7c
    :goto_4f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v131, v14

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x1

    goto :goto_50

    :cond_7d
    move-object/16 v327, v4

    move-wide/16 v305, v5

    move/16 v312, v8

    move-wide/16 v307, v11

    move/16 v309, v15

    move-wide/16 v322, v167

    goto :goto_50

    :cond_7e
    move-wide/16 v303, v2

    move-object/16 v327, v4

    move-wide/16 v305, v5

    move/16 v312, v8

    move-wide/16 v307, v11

    move/16 v309, v15

    move-wide/16 v322, v167

    :goto_50
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x0

    move v1, v0

    const/4 v0, 0x0

    :goto_51
    const/4 v10, 0x4

    if-ge v0, v10, :cond_81

    move/from16 v2, p4

    invoke-virtual {v13, v0, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    if-eqz v3, :cond_80

    if-nez v1, :cond_7f

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    User activity: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_52

    :cond_7f
    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_81
    move/from16 v2, p4

    if-eqz v1, :cond_83

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    :cond_82
    move/from16 v2, p4

    const/4 v10, 0x4

    :cond_83
    :goto_53
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v15

    const-wide/16 v0, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v131

    const/16 v132, 0x1

    add-int/lit8 v131, v131, -0x1

    move-object/16 v334, v13

    move-wide v12, v11

    move v11, v8

    move-wide/16 v417, v0

    move-wide v0, v5

    move-wide/from16 v5, v417

    :goto_54
    move/from16 v8, v131

    if-ltz v8, :cond_85

    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v131

    move-object/from16 v10, v131

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v131, ": "

    move-wide/16 v335, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wake lock "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v132, "full"

    move/16 v337, v8

    move-wide/from16 v7, v335

    move-object v0, v9

    move-wide/16 v338, v12

    move-wide/from16 v147, v303

    move-wide v12, v3

    move v4, v2

    move-wide/from16 v2, v307

    move-object/from16 v149, v327

    move-object/from16 v4, v132

    move-wide/16 v340, v7

    move-wide/from16 v150, v305

    move-wide v7, v5

    move/from16 v5, p4

    move-object/from16 v6, v131

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v131

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string/jumbo v4, "partial"

    move-object v0, v9

    move-object v1, v6

    move-object/16 v342, v15

    move-object v15, v6

    move-object/from16 v6, v131

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v131

    if-eqz v15, :cond_84

    invoke-virtual {v15}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    :goto_55
    move-object v1, v0

    goto :goto_56

    :cond_84
    const/4 v0, 0x0

    goto :goto_55

    :goto_56
    const-string v4, "background partial"

    move-object v0, v9

    move-wide/from16 v2, v307

    move/from16 v5, p4

    move-object/from16 v6, v131

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v131

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object v0, v9

    move-object/from16 v6, v131

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v131

    const/16 v6, 0x12

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object/16 v343, v15

    move v15, v6

    move-object/from16 v6, v131

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " realtime"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move/from16 v1, p4

    move-wide/from16 v3, v307

    invoke-static {v2, v3, v4, v1}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    add-long/2addr v5, v7

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    invoke-static {v7, v3, v4, v1}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    add-long/2addr v7, v12

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-static {v12, v3, v4, v1}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    move-wide/from16 v131, v340

    add-long v12, v131, v12

    invoke-virtual {v10, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    invoke-static {v15, v3, v4, v1}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v131

    move-wide/16 v344, v3

    move-wide/from16 v2, v338

    add-long v2, v2, v131

    move/from16 v0, v337

    add-int/lit8 v131, v0, -0x1

    move-wide/16 v303, v147

    move-object/16 v327, v149

    move-wide/16 v305, v150

    move-object/from16 v15, v342

    move-wide/16 v307, v344

    const/4 v10, 0x4

    move-wide/16 v417, v2

    move v2, v1

    move-wide v3, v7

    move-wide v0, v12

    move-object/from16 v7, p3

    move-wide/from16 v12, v417

    goto/16 :goto_54

    :cond_85
    move-wide/from16 v131, v0

    move v1, v2

    move-wide v7, v5

    move-object/16 v342, v15

    move-wide/from16 v147, v303

    move-wide/from16 v150, v305

    move-wide/16 v344, v307

    move-object/from16 v149, v327

    move-wide/16 v417, v3

    move-wide v2, v12

    move-wide/from16 v12, v417

    const/4 v0, 0x1

    if-le v11, v0, :cond_95

    const-wide/16 v4, 0x0

    const-wide/16 v152, 0x0

    move-object/from16 v0, v334

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_87

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    nop

    move-wide/16 v346, v4

    move-wide/from16 v4, v322

    invoke-virtual {v6, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v154

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_86

    invoke-virtual {v10, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v156

    goto :goto_57

    :cond_86
    move-wide/from16 v156, v27

    :goto_57
    move-wide/from16 v152, v156

    move-wide/16 v349, v4

    move/16 v348, v11

    move-wide/from16 v4, v152

    move-wide/from16 v10, v154

    goto :goto_58

    :cond_87
    move-wide/16 v346, v4

    move/16 v348, v11

    move-wide/from16 v4, v152

    move-wide/16 v349, v322

    move-wide/from16 v10, v346

    :goto_58
    cmp-long v6, v10, v27

    if-nez v6, :cond_89

    cmp-long v6, v4, v27

    if-nez v6, :cond_89

    cmp-long v6, v7, v27

    if-nez v6, :cond_89

    cmp-long v6, v12, v27

    if-nez v6, :cond_89

    cmp-long v6, v131, v27

    if-eqz v6, :cond_88

    goto :goto_59

    :cond_88
    move-object/16 v351, v0

    move-wide/16 v352, v7

    move-wide/from16 v0, v131

    move-object/from16 v6, p3

    goto/16 :goto_5b

    :cond_89
    :goto_59
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/16 v351, v0

    move-wide/from16 v0, v131

    move-object/from16 v6, p3

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    TOTAL wake: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    cmp-long v131, v7, v27

    if-eqz v131, :cond_8a

    const/4 v15, 0x1

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/16 v352, v7

    const-string v7, "full"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_8a
    move-wide/16 v352, v7

    :goto_5a
    cmp-long v7, v12, v27

    if-eqz v7, :cond_8c

    if-eqz v15, :cond_8b

    const-string v7, ", "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    const/4 v15, 0x1

    invoke-static {v9, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "blamed partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    cmp-long v7, v10, v27

    if-eqz v7, :cond_8e

    if-eqz v15, :cond_8d

    const-string v7, ", "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    const/4 v15, 0x1

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "actual partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    cmp-long v7, v4, v27

    if-eqz v7, :cond_90

    if-eqz v15, :cond_8f

    const-string v7, ", "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    const/4 v15, 0x1

    invoke-static {v9, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "actual background partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    cmp-long v7, v0, v27

    if-eqz v7, :cond_92

    if-eqz v15, :cond_91

    const-string v7, ", "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    const/4 v15, 0x1

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "window"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    cmp-long v7, v2, v27

    if-eqz v7, :cond_94

    if-eqz v15, :cond_93

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    const/4 v15, 0x1

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "draw"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_94
    const-string v7, " realtime"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    :cond_95
    move-wide/16 v352, v7

    move/16 v348, v11

    move-wide/from16 v0, v131

    move-wide/16 v349, v322

    move-object/16 v351, v334

    move-object/from16 v6, p3

    :goto_5b
    move-object/from16 v4, v351

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_97

    move-wide/from16 v131, v0

    move-wide/from16 v10, v344

    move/from16 v0, p4

    invoke-virtual {v5, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    cmp-long v15, v7, v27

    if-lez v15, :cond_96

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    WiFi Multicast Wakelock"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " count = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " time = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v152, v7, v18

    move/16 v356, v1

    move-wide/16 v354, v2

    div-long v1, v152, v16

    invoke-static {v9, v1, v2}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    :cond_96
    move-wide/16 v354, v2

    goto :goto_5c

    :cond_97
    move-wide/from16 v131, v0

    move-wide/16 v354, v2

    move-wide/from16 v10, v344

    move/from16 v0, p4

    :goto_5c
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_5d
    if-ltz v2, :cond_9c

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v152

    add-long v152, v152, v18

    div-long v7, v152, v16

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v15

    move-object/16 v357, v5

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_98

    move-wide/16 v358, v12

    move-wide/from16 v12, v349

    invoke-virtual {v5, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v152

    goto :goto_5e

    :cond_98
    move-wide/16 v358, v12

    move-wide/from16 v12, v349

    const-wide/16 v152, -0x1

    :goto_5e
    move-wide/16 v360, v152

    if-eqz v5, :cond_99

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v152

    goto :goto_5f

    :cond_99
    move/from16 v152, v101

    :goto_5f
    move/16 v362, v152

    move-object/16 v363, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Sync "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v7, v27

    if-eqz v3, :cond_9b

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "realtime ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times)"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v364, v7

    move-wide/from16 v7, v360

    cmp-long v3, v7, v27

    if-lez v3, :cond_9a

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "background ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v362

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/16 v366, v1

    const-string v1, " times)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_9a
    move-object/16 v366, v1

    move/from16 v3, v362

    goto :goto_60

    :cond_9b
    move-object/16 v366, v1

    move-wide/16 v364, v7

    move-wide/from16 v7, v360

    move/from16 v3, v362

    const-string v1, "(not used)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_60
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x1

    add-int/lit8 v2, v2, -0x1

    move-wide/16 v349, v12

    move-object/from16 v5, v357

    move-wide/from16 v12, v358

    move-object/from16 v1, v366

    goto/16 :goto_5d

    :cond_9c
    move-object/16 v366, v1

    move-object/16 v357, v5

    move-wide/16 v358, v12

    move-wide/from16 v12, v349

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_61
    if-ltz v2, :cond_a1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long v7, v7, v18

    div-long v7, v7, v16

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_9d

    invoke-virtual {v15, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v152

    goto :goto_62

    :cond_9d
    const-wide/16 v152, -0x1

    :goto_62
    move-wide/16 v367, v152

    if-eqz v15, :cond_9e

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v152

    goto :goto_63

    :cond_9e
    move/from16 v152, v101

    :goto_63
    move/16 v369, v152

    move-object/16 v370, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Job "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v7, v27

    if-eqz v3, :cond_a0

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "realtime ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times)"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v371, v7

    move-wide/from16 v7, v367

    cmp-long v3, v7, v27

    if-lez v3, :cond_9f

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "background ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v369

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/16 v373, v1

    const-string v1, " times)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    :cond_9f
    move-object/16 v373, v1

    move/from16 v3, v369

    goto :goto_64

    :cond_a0
    move-object/16 v373, v1

    move-wide/16 v371, v7

    move-wide/from16 v7, v367

    move/from16 v3, v369

    const-string v1, "(not used)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, v373

    goto/16 :goto_61

    :cond_a1
    move-object/16 v373, v1

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_65
    if-ltz v2, :cond_a4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    if-eqz v5, :cond_a3

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    Job Completions "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_66
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_a2

    const-string v8, " "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "("

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, "x)"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_a2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_a3
    add-int/lit8 v2, v2, -0x1

    goto :goto_65

    :cond_a4
    invoke-virtual {v4, v9, v0}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_a5

    const-string v2, "    Jobs deferred on launch "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a5
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v15, "Flashlight"

    move-wide/from16 v152, v150

    move-wide/from16 v154, v270

    move/from16 v5, v312

    move-wide/from16 v156, v352

    const/4 v7, 0x2

    move-wide/from16 v150, v147

    move-wide/from16 v147, v280

    move-object v8, v14

    move/from16 v158, v3

    move-object v7, v4

    move-object v3, v9

    move/from16 v4, v222

    move-object/16 v374, v3

    move/16 v375, v4

    move/from16 v163, v5

    move-wide v3, v12

    move-object/from16 v159, v221

    move/from16 v162, v309

    move-object/from16 v5, p0

    const/16 v164, 0x5

    const/16 v165, 0x4

    move-wide v11, v10

    move-object v10, v2

    move-wide/from16 v166, v11

    move/from16 v168, v219

    move/from16 v2, v220

    move-wide/from16 v169, v261

    move-wide/from16 v171, v276

    move-wide/from16 v173, v293

    move-wide/from16 v175, v301

    move/from16 v177, v348

    move-wide/from16 v180, v354

    move-wide/from16 v178, v358

    move-object/16 v376, v1

    move-wide/from16 v182, v173

    move-wide/from16 v184, v274

    const/4 v1, 0x0

    move-wide/from16 v173, v135

    move-wide/from16 v135, v171

    move-wide/from16 v171, v141

    move-wide/from16 v141, v299

    move v13, v0

    move-wide/16 v377, v166

    move-object/16 v379, v374

    move-object v14, v6

    move-object/from16 v166, v231

    move/from16 v167, v273

    move-object/from16 v186, v342

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v97, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v8, p2

    move-object/from16 v9, v379

    move-wide/from16 v11, v377

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v97, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v97, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    move/from16 v97, v8

    move v8, v1

    :goto_67
    if-ge v8, v14, :cond_ae

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v13, v379

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Sensor "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_a6

    const-string v12, "GPS"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_a6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_68
    const-string v12, ": "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_ad

    move/16 v380, v2

    move-wide/from16 v1, v377

    invoke-virtual {v12, v1, v2, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v187

    add-long v187, v187, v18

    move/16 v381, v10

    move/16 v382, v11

    div-long v10, v187, v16

    move/16 v383, v14

    invoke-virtual {v12, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    move-object/16 v384, v15

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_a7

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v187

    goto :goto_69

    :cond_a7
    const/16 v187, 0x0

    :goto_69
    move/16 v385, v187

    invoke-virtual {v12, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    if-eqz v15, :cond_a8

    invoke-virtual {v15, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v187

    goto :goto_6a

    :cond_a8
    move-wide/from16 v187, v27

    :goto_6a
    move-wide/16 v386, v187

    cmp-long v187, v10, v27

    if-eqz v187, :cond_ab

    cmp-long v187, v5, v10

    if-eqz v187, :cond_a9

    invoke-static {v13, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/16 v388, v3

    const-string v3, "blamed realtime, "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_a9
    move-wide/16 v388, v3

    :goto_6b
    invoke-static {v13, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "realtime ("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times)"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v386

    cmp-long v187, v3, v27

    if-nez v187, :cond_aa

    move-wide/16 v390, v5

    move/from16 v5, v385

    if-lez v5, :cond_ac

    goto :goto_6c

    :cond_aa
    move-wide/16 v390, v5

    move/from16 v5, v385

    :goto_6c
    const-string v6, ", "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "background ("

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times)"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_ab
    move-wide/16 v388, v3

    move-wide/16 v390, v5

    move/from16 v5, v385

    move-wide/from16 v3, v386

    const-string v6, "(not used)"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    :goto_6d
    goto :goto_6e

    :cond_ad
    move/16 v380, v2

    move-wide/16 v388, v3

    move/16 v381, v10

    move/16 v382, v11

    move/16 v383, v14

    move-object/16 v384, v15

    move-wide/from16 v1, v377

    const-string v3, "(not used)"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x1

    add-int/lit8 v8, v8, 0x1

    move-wide/16 v377, v1

    move-object/16 v379, v13

    move/from16 v2, v380

    move/from16 v14, v383

    move-object/from16 v15, v384

    move-wide/from16 v3, v388

    const/4 v1, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    goto/16 :goto_67

    :cond_ae
    move/16 v380, v2

    move-wide/16 v388, v3

    move/16 v383, v14

    move-object/16 v384, v15

    move-wide/from16 v1, v377

    move-object/from16 v13, v379

    move-object/from16 v4, p2

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Vibrator"

    move-object v8, v4

    move-object v9, v13

    move-wide v11, v1

    move-object v3, v13

    move v13, v0

    move/from16 v6, v383

    move-object/from16 v5, p3

    move-object v14, v5

    move-object/from16 v187, v384

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v97, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object v8, v4

    move-object v9, v3

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v97, v97, v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object v8, v4

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v97, v8

    const-wide/16 v9, 0x0

    move v11, v8

    const/4 v8, 0x0

    :goto_6f
    const/4 v12, 0x7

    if-ge v8, v12, :cond_b0

    invoke-virtual {v7, v8, v1, v2, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v12

    cmp-long v14, v12, v27

    if-lez v14, :cond_af

    add-long/2addr v9, v12

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v14, v12, v18

    div-long v14, v14, v16

    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    :cond_b0
    cmp-long v8, v9, v27

    if-lez v8, :cond_b1

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Total running: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v12, v9, v18

    div-long v12, v12, v16

    invoke-static {v3, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b1
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v12

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v14

    cmp-long v8, v12, v27

    if-gtz v8, :cond_b3

    cmp-long v8, v14, v27

    if-lez v8, :cond_b2

    goto :goto_70

    :cond_b2
    move-wide/16 v392, v1

    goto :goto_71

    :cond_b3
    :goto_70
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Total cpu time: u="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v392, v1

    div-long v1, v12, v16

    invoke-static {v3, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "s="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v14, v16

    invoke-static {v3, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_b5

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "    Total cpu time per freq:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_72
    array-length v8, v1

    if-ge v2, v8, :cond_b4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/16 v394, v6

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/16 v395, v9

    aget-wide v9, v1, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v394

    move-wide/from16 v9, v395

    goto :goto_72

    :cond_b4
    move/16 v394, v6

    move-wide/16 v395, v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    :cond_b5
    move/16 v394, v6

    move-wide/16 v395, v9

    :goto_73
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_b7

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "    Total screen-off cpu time per freq:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_74
    array-length v8, v2

    if-ge v6, v8, :cond_b6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b7
    const/4 v6, 0x0

    :goto_75
    const/4 v8, 0x7

    if-ge v6, v8, :cond_bc

    invoke-virtual {v7, v0, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v8

    if-eqz v8, :cond_b9

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Cpu times per freq at state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    :goto_76
    array-length v10, v8

    if-ge v9, v10, :cond_b8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/16 v397, v1

    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/16 v398, v2

    aget-wide v1, v8, v9

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v397

    move-object/from16 v2, v398

    goto :goto_76

    :cond_b8
    move-object/16 v397, v1

    move-object/16 v398, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77

    :cond_b9
    move-object/16 v397, v1

    move-object/16 v398, v2

    :goto_77
    invoke-virtual {v7, v0, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v1

    if-eqz v1, :cond_bb

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Screen-off cpu times per freq at state "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_78
    array-length v9, v1

    if-ge v2, v9, :cond_ba

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/16 v399, v11

    aget-wide v10, v1, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v399

    goto :goto_78

    :cond_ba
    move/16 v399, v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    :cond_bb
    move/16 v399, v11

    :goto_79
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v397

    move-object/from16 v2, v398

    move/from16 v11, v399

    goto/16 :goto_75

    :cond_bc
    move-object/16 v397, v1

    move-object/16 v398, v2

    move/16 v399, v11

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_7a
    if-ltz v2, :cond_cc

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v10

    move-wide/16 v400, v12

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v12

    move-wide/16 v402, v14

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v14

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v15

    move-object/16 v404, v7

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v7

    if-nez v0, :cond_bd

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v97

    goto :goto_7b

    :cond_bd
    const/16 v97, 0x0

    :goto_7b
    move/16 v405, v97

    cmp-long v97, v8, v27

    if-nez v97, :cond_bf

    cmp-long v97, v10, v27

    if-nez v97, :cond_bf

    cmp-long v97, v12, v27

    if-nez v97, :cond_bf

    if-nez v14, :cond_bf

    move/from16 v0, v405

    if-nez v0, :cond_c0

    if-nez v15, :cond_c0

    if-eqz v7, :cond_be

    goto :goto_7c

    :cond_be
    move-object/16 v407, v1

    goto/16 :goto_83

    :cond_bf
    move/from16 v0, v405

    :cond_c0
    :goto_7c
    move-object/16 v406, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Proc "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      CPU: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "krn ; "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "fg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v14, :cond_c2

    if-nez v15, :cond_c2

    if-eqz v7, :cond_c1

    goto :goto_7d

    :cond_c1
    move-object/16 v407, v1

    goto :goto_7f

    :cond_c2
    :goto_7d
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-eqz v14, :cond_c3

    const/4 v6, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/16 v407, v1

    const-string v1, " starts"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_c3
    move-object/16 v407, v1

    :goto_7e
    if-eqz v15, :cond_c5

    if-eqz v6, :cond_c4

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c4
    const/4 v6, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " crashes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c5
    if-eqz v7, :cond_c7

    if-eqz v6, :cond_c6

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " anrs"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c7
    :goto_7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_80
    if-ge v1, v0, :cond_cb

    move/16 v408, v0

    move-object/from16 v6, v406

    invoke-virtual {v6, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/16 v409, v6

    const-string v6, "      * Killed for "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move/16 v410, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c8

    const-string v6, "cpu"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_81

    :cond_c8
    const-string/jumbo v6, "unknown"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_81
    const-string v6, " use: "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/16 v411, v8

    iget-wide v7, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v7, v8, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " over "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v6, v6, v27

    if-eqz v6, :cond_ca

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, "%)"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    :cond_c9
    move-object/16 v409, v6

    move/16 v410, v7

    move-wide/16 v411, v8

    :cond_ca
    :goto_82
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v408

    move-object/16 v406, v409

    move/from16 v7, v410

    move-wide/from16 v8, v411

    goto :goto_80

    :cond_cb
    move/16 v408, v0

    move/16 v410, v7

    move-wide/16 v411, v8

    move-object/16 v409, v406

    const/4 v0, 0x1

    move/16 v399, v0

    :goto_83
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v12, v400

    move-wide/from16 v14, v402

    move-object/from16 v7, v404

    move-object/from16 v1, v407

    move/from16 v0, p4

    goto/16 :goto_7a

    :cond_cc
    move-object/16 v407, v1

    move-object/16 v404, v7

    move-wide/16 v400, v12

    move-wide/16 v402, v14

    move-object/from16 v0, v404

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v6, v399

    :goto_84
    if-ltz v2, :cond_d2

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    Apk "

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_85
    if-ltz v10, :cond_cd

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "      Wakeup alarm "

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    move/from16 v12, p4

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " times"

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_85

    :cond_cd
    move/from16 v12, p4

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_86
    if-ltz v11, :cond_d0

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v14, v160

    invoke-virtual {v13, v14, v15, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v160

    move-object/16 v413, v0

    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    move-object/16 v414, v1

    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v1

    cmp-long v97, v160, v27

    if-nez v97, :cond_cf

    if-nez v0, :cond_cf

    if-eqz v1, :cond_ce

    goto :goto_87

    :cond_ce
    move-object/16 v415, v8

    move-object/16 v416, v9

    goto :goto_88

    :cond_cf
    :goto_87
    move-object/16 v415, v8

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      Service "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Created for: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/16 v416, v9

    div-long v8, v160, v16

    invoke-static {v3, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "uptime\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Starts: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", launches: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    move v7, v0

    :goto_88
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v160, v14

    move-object/from16 v0, v413

    move-object/from16 v1, v414

    move-object/from16 v8, v415

    move-object/from16 v9, v416

    goto/16 :goto_86

    :cond_d0
    move-object/16 v413, v0

    move-object/16 v414, v1

    move-object/16 v415, v8

    move-object/16 v416, v9

    move-wide/from16 v14, v160

    if-nez v7, :cond_d1

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "      (nothing executed)"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d1
    const/4 v6, 0x1

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v160, v14

    move-object/from16 v0, v413

    move-object/from16 v1, v414

    goto/16 :goto_84

    :cond_d2
    move-object/16 v413, v0

    move-object/16 v414, v1

    move-wide/from16 v14, v160

    move/from16 v12, p4

    if-nez v6, :cond_d3

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d3
    :goto_89
    add-int/lit8 v0, v168, 0x1

    move-object v13, v4

    move-wide/from16 v160, v14

    move-wide/from16 v172, v123

    move-object/from16 v5, v127

    move-object/from16 v216, v128

    move-wide/from16 v217, v137

    move-object/from16 v177, v159

    move-object/from16 v15, v166

    move/from16 v176, v380

    move-wide/from16 v167, v388

    const/4 v6, 0x0

    move-object/from16 v7, p0

    move-object v14, v3

    move-wide/from16 v3, v392

    goto/16 :goto_37

    :cond_d4
    move-wide/16 v392, v3

    move-object/from16 v127, v5

    move/16 v380, v12

    move-object v4, v13

    move-object v3, v14

    move-object/from16 v166, v15

    move-wide/from16 v14, v160

    move-wide/16 v388, v167

    move-wide/from16 v123, v172

    move-object/from16 v159, v177

    move-object/from16 v128, v216

    move-wide/from16 v137, v217

    move-object/from16 v5, p3

    move/from16 v12, p4

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdm845"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    const-string/jumbo v2, "msmnile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    :cond_d5
    const/4 v0, 0x1

    :cond_d6
    const-string v2, "\n**** RPM_STATS ****\n"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_d7

    const-string v2, "/d/rpmh/stats"

    goto :goto_8a

    :cond_d7
    const-string v2, "/d/rpm_stats"

    :goto_8a
    move-object/from16 v6, p0

    invoke-direct {v6, v4, v2}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v2, "**** RPM_STATS ****"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "\n**** RPM_MASTER_STATS ****\n"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_d8

    const-string v2, "/d/rpmh/master_stats"

    goto :goto_8b

    :cond_d8
    const-string v2, "/d/rpm_master_stats"

    :goto_8b
    invoke-direct {v6, v4, v2}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v2, "**** RPM_MASTER_STATS ****"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "\n**** CLK_ENABLED_LIST ****\n"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_d9

    const-string v2, "/d/clk/clk_enabled_list"

    goto :goto_8c

    :cond_d9
    const-string v2, "/d/clk/enabled_clocks"

    :goto_8c
    invoke-direct {v6, v4, v2}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v2, "**** CLK_ENABLED_LIST ****"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_0
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper;

    and-int/lit8 v4, p4, 0x40

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-direct {v3, p1, v5, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-direct {p0, v0, v3, p3}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V

    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V

    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string v0, "--%"

    return-object v0

    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.1f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getGpsBatteryDrainMaMs()J
.end method

.method public abstract getGpsSignalQualityTime(IJI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUahDischarge(I)J
.end method

.method public abstract getUahDischargeDeepDoze(I)J
.end method

.method public abstract getUahDischargeLightDoze(I)J
.end method

.method public abstract getUahDischargeScreenDoze(I)J
.end method

.method public abstract getUahDischargeScreenOff(I)J
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiActiveTime(JI)J
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiMulticastWakelockCount(I)I
.end method

.method public abstract getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
