.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field private static final BUTTON_OFF_TIMEOUT:I = 0x3e8

.field private static DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SPEW:Z = false

.field private static DEBUG_WAKE:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field static final GET_ONLINECONFIG:I = 0x7

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field private static final LAST_REBOOT_PROPERTY:Ljava/lang/String; = "persist.sys.boot.reason"

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_FORCESTOP:I = 0x5

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static PACKAGEMANAGERMENT_CONFIG_NAME:Ljava/lang/String; = null

.field private static PACKAGENAME_INDEX:I = 0x0

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field private static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static SPLIT_LENGTH:I = 0x0

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_INACTIVE:I = 0x1

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field private static final USER_ACTIVITY_BUTTON_BRIGHT:I = 0x8

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static WAKELOCKNAME_INDEX:I = 0x0

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field public static mBrightnessOverride:I

.field public static mBrightnessOverrideAdj:I

.field public static mDisplayStateOn:Z

.field public static mFirstSetScreenState:Z

.field private static mFirstSetWindowBrightness:Z

.field private static mIsDeepSleep:Z

.field public static mManualAmbientLuxBackup:F

.field public static mManualBrightness:I

.field public static mManualBrightnessBackup:I

.field public static mManualSetAutoBrightness:Z

.field public static mManulAtAmbientLux:F

.field public static mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mScreenBrightnessSettingMaximum:I

.field private static mScreenBrightnessSettingMinimum:I

.field private static mSetAdj:Z

.field public static mUseAutoBrightness:Z

.field public static mbootScreenState:Z

.field public static sBrightnessBoost:I

.field public static sBrightnessNoAnimation:Z

.field private static sQuiescent:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

.field private final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBlockFingerprintSleep:Z

.field private mBootCompleted:Z

.field private mBootCompletedRunnables:[Ljava/lang/Runnable;

.field private mButtonBrightness:I

.field private mButtonBrightnessSettingDefault:I

.field private mButtonLight:Lcom/android/server/lights/Light;

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field mDeepSleepWhitelist:[I

.field private mDeviceIdleAggressive:Z

.field private mDeviceIdleMode:Z

.field private mDeviceIdleState:I

.field mDeviceIdleSySWhitelist:[I

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOff:Z

.field private mDozeBlackConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mDozeBlackForAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDrawWakeLockOverrideFromSidekick:Z

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mExclusiveWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundProfile:I

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mIsExclusiveEnabled:Z

.field private mIsPowered:Z

.field private mIsVrModeEnabled:Z

.field private mKillWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityButtonTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightIdleBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private final mLongWLBlackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaximumScreenDimDurationConfig:J

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field private mMinimumScreenOffTimeoutConfig:J

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOemDisableWakeLockPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOemDisableWakeLockReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverriddenTimeout:J

.field private mPlugType:I

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPowerKillEnable:Z

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityLockFromInCallUi:Z

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenOffTimeoutSetting:J

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:J

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockRestriction:Z

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field packagenameFromScreenActivity:Ljava/lang/String;

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 154
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 156
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 160
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    .line 599
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    .line 620
    sput v0, Lcom/android/server/power/PowerManagerService;->PACKAGENAME_INDEX:I

    .line 621
    const/4 v1, 0x1

    sput v1, Lcom/android/server/power/PowerManagerService;->WAKELOCKNAME_INDEX:I

    .line 622
    const/4 v2, 0x2

    sput v2, Lcom/android/server/power/PowerManagerService;->SPLIT_LENGTH:I

    .line 794
    sput v0, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 795
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->sBrightnessNoAnimation:Z

    .line 796
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 797
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 798
    sput v0, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 799
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    .line 800
    sput v0, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 801
    sput v2, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 802
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    .line 803
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mFirstSetScreenState:Z

    .line 804
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mSetAdj:Z

    .line 807
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mbootScreenState:Z

    .line 811
    sput v0, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 812
    sput v0, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 813
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mFirstSetWindowBrightness:Z

    .line 816
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    .line 4168
    const-string v0, "ProcessManagement"

    sput-object v0, Lcom/android/server/power/PowerManagerService;->PACKAGEMANAGERMENT_CONFIG_NAME:Ljava/lang/String;

    .line 4290
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    .line 307
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 374
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 427
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 509
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 548
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 556
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 561
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 564
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 567
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 573
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 593
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleSySWhitelist:[I

    .line 596
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeepSleepWhitelist:[I

    .line 603
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 606
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    .line 625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 647
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    .line 668
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 706
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerKillEnable:Z

    .line 776
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 777
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 3062
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 5208
    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 829
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 833
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    .line 838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    .line 839
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsExclusiveEnabled:Z

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    .line 841
    const-string v0, "com.google.android.googlequicksearchbox"

    const-string v3, "AudioIn"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/power/PowerManagerService;->addKillWakeLockInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "PowerManagerService"

    const/4 v4, -0x4

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 846
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 847
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 848
    new-instance v0, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 849
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 851
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 852
    new-instance v0, Lcom/android/server/power/BatterySaverPolicy;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/power/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    .line 853
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 854
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 855
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 858
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    const-string v3, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 860
    const-string v3, "PowerManagerService.Display"

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 861
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 862
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 863
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 864
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 866
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 868
    const-string/jumbo v3, "ro.boot.quiescent"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 870
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 871
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    .line 872
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    .line 873
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 874
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/BatterySaverPolicy;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batterySaverPolicy"    # Lcom/android/server/power/BatterySaverPolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 879
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    .line 307
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 374
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 427
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 509
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 548
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 556
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 561
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 564
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 567
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 573
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 593
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleSySWhitelist:[I

    .line 596
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeepSleepWhitelist:[I

    .line 603
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 606
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    .line 619
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    .line 625
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 647
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    .line 668
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 706
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerKillEnable:Z

    .line 776
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 777
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 3062
    new-instance v1, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 5208
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 881
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 882
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v3, "PowerManagerService"

    const/4 v4, -0x4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 884
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 885
    new-instance v1, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 886
    new-instance v1, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 887
    new-instance v1, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 888
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 889
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 891
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 892
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    .line 893
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 894
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    move-object v2, v0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 895
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 897
    return-void
.end method

.method private IsBlackLongWakelockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3723
    const/4 v0, 0x0

    .line 3724
    .local v0, "isBlack":Z
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3725
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3726
    .local v1, "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 3727
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3728
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3729
    const/4 v0, 0x1

    .line 3730
    goto :goto_1

    .line 3727
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3735
    .end local v1    # "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return p1
.end method

.method static synthetic access$1076(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .line 144
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->resolveBlackConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/power/PowerManagerService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/app/ActivityManager;

    .line 144
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/android/server/power/PowerManagerService;->PACKAGEMANAGERMENT_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .line 144
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$3700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    return v0
.end method

.method static synthetic access$3900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .line 144
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 144
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->overrideScreenBrightnessRangeMinimumInternal(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/BatterySaverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z

    return p1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 20
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    move-object/from16 v12, p0

    move/from16 v11, p7

    .line 1217
    iget-object v10, v12, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1227
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1235
    :cond_0
    move-object/from16 v9, p3

    move-object/from16 v8, p5

    move/from16 v7, p8

    goto :goto_1

    .line 1228
    :cond_1
    :goto_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWL: l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", f=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", t=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", ws="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    move v6, v0

    .line 1237
    .local v6, "index":I
    const/4 v0, 0x1

    if-ltz v6, :cond_3

    .line 1238
    iget-object v1, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1239
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v14, p2

    move-object v15, v9

    move-object/from16 v16, v8

    move/from16 v17, v11

    move/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1241
    move-object v1, v12

    move-object v2, v13

    move/from16 v3, p2

    move-object v4, v9

    move-object/from16 v5, p4

    move v14, v6

    move v6, v11

    .end local v6    # "index":I
    .local v14, "index":I
    move/from16 v7, p8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1243
    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v11

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    goto :goto_2

    .line 1245
    .end local v14    # "index":I
    .restart local v6    # "index":I
    :cond_2
    move v14, v6

    .end local v6    # "index":I
    .restart local v14    # "index":I
    :goto_2
    const/4 v1, 0x0

    .line 1263
    .local v1, "notifyAcquire":Z
    move-object/from16 v3, p1

    move-object/from16 v16, v10

    move/from16 v19, v14

    move v14, v11

    goto :goto_3

    .line 1247
    .end local v1    # "notifyAcquire":Z
    .end local v13    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v14    # "index":I
    .restart local v6    # "index":I
    :cond_3
    move v14, v6

    .end local v6    # "index":I
    .restart local v14    # "index":I
    iget-object v1, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 1248
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_4

    .line 1249
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, v11}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 1250
    const/16 v2, 0x13

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1251
    iget-object v2, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1253
    :cond_4
    move-object v13, v1

    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget v1, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/2addr v1, v0

    iput v1, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1254
    new-instance v15, Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move v9, v11

    move-object/from16 v16, v10

    move/from16 v10, p8

    move/from16 v19, v14

    move v14, v11

    move-object v11, v13

    .end local v14    # "index":I
    .local v19, "index":I
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v15

    .line 1257
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    move-object/from16 v3, p1

    :try_start_2
    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1260
    nop

    .line 1261
    :try_start_3
    iget-object v2, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-direct {v12, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1263
    nop

    .end local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-object v13, v1

    move v1, v0

    .line 1266
    .local v1, "notifyAcquire":Z
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_3
    invoke-direct {v12, v13, v14}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1267
    iget v2, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, v2

    iput v0, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1269
    if-eqz v1, :cond_5

    .line 1275
    invoke-direct {v12, v13}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1277
    .end local v1    # "notifyAcquire":Z
    .end local v13    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v19    # "index":I
    :cond_5
    monitor-exit v16

    .line 1278
    return-void

    .line 1258
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    .restart local v19    # "index":I
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1259
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1277
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v19    # "index":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v16, v10

    move v14, v11

    :goto_4
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method private adjustWakeLockSummaryLocked(I)I
    .locals 2
    .param p1, "wakeLockSummary"    # I

    .line 2288
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2289
    and-int/lit16 p1, p1, -0xc1

    .line 2291
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    .line 2293
    :cond_1
    and-int/lit8 p1, p1, -0xf

    .line 2295
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_2

    .line 2296
    and-int/lit8 p1, p1, -0x11

    .line 2301
    :cond_2
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_4

    .line 2302
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2303
    or-int/lit8 p1, p1, 0x21

    goto :goto_0

    .line 2304
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2305
    or-int/lit8 p1, p1, 0x1

    .line 2308
    :cond_4
    :goto_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    .line 2309
    or-int/lit8 p1, p1, 0x1

    .line 2313
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v0, :cond_6

    .line 2314
    or-int/lit8 p1, p1, 0x10

    .line 2318
    :cond_6
    return p1
.end method

.method private allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3948
    const/4 v0, 0x0

    .line 3949
    .local v0, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v0

    .line 3950
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3951
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveAudioUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3954
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 3955
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3956
    goto :goto_2

    .line 3959
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3963
    .local v3, "uid":I
    if-nez v3, :cond_2

    .line 3964
    return v1

    .line 3967
    :cond_2
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 3968
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock owner uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :cond_3
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    .line 3972
    return v5

    .line 3975
    :cond_4
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_6

    .line 3976
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 3977
    .local v4, "size":I
    move v6, v1

    .local v6, "k":I
    :goto_1
    if-ge v6, v4, :cond_6

    .line 3978
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    .line 3979
    .local v7, "mUid":I
    if-ne v7, v3, :cond_5

    .line 3980
    return v5

    .line 3977
    .end local v7    # "mUid":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3954
    .end local v3    # "uid":I
    .end local v4    # "size":I
    .end local v6    # "k":I
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3986
    .end local v2    # "i":I
    :cond_7
    return v1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .line 1292
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1293
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1296
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 1297
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " try to wakeup device while proximity positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1296
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1303
    return-void

    .line 1309
    :cond_0
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    .line 1315
    .local v6, "opUid":I
    :goto_0
    move v6, v1

    goto :goto_1

    .line 1313
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v6    # "opUid":I
    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1314
    .restart local v0    # "opPackageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    goto :goto_0

    .line 1315
    :cond_2
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_0

    .line 1317
    .restart local v6    # "opUid":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v2, p0

    move-object v7, v0

    move v8, v6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 1320
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v6    # "opUid":I
    :cond_3
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1404
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1405
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1411
    :cond_0
    return-void
.end method

.method private blackPackageForAudio(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 4171
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 4172
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4173
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " blackPackageForAudio  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    const/4 v1, 0x1

    return v1

    .line 4176
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 4331
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4332
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 4337
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4339
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_1

    .line 4340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 4341
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 4343
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4345
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 4347
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4348
    monitor-exit v0

    .line 4349
    return-void

    .line 4334
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 4348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canDozeLocked()Z
    .locals 2

    .line 2890
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDreamLocked()Z
    .locals 3

    .line 2850
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 2851
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canDreamLocked mWakefulness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDreamsSupportedConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDreamsEnabledSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayPowerRequest.isBrightOrDim() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2854
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUserActivitySummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2851
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2861
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2862
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 2868
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2869
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v0, :cond_2

    .line 2870
    return v2

    .line 2872
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ge v0, v1, :cond_3

    .line 2875
    return v2

    .line 2877
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ge v0, v1, :cond_4

    .line 2880
    return v2

    .line 2883
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2866
    :cond_5
    :goto_0
    return v2
.end method

.method private checkIsToWakeUpNoUpdate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1675
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1676
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "to checkIsToWakeUpNoUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    const-string v0, "com.ifeng.news2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 1678
    const/4 v0, 0x0

    return v0

    .line 1683
    :cond_1
    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1685
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 5150
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 3383
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    .local v0, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3391
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3394
    goto :goto_0

    .line 3392
    :catch_0
    move-exception v1

    .line 3393
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3395
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 5130
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 5131
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5132
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4608
    const-string v0, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4611
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4612
    :try_start_0
    const-string v1, "Power Manager State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4613
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDirty=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4629
    const-string v1, "  mNotifyLongScheduled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4630
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4631
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 4633
    :cond_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4635
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4636
    const-string v1, "  mNotifyLongDispatched="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4637
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 4638
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4640
    :cond_1
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4642
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4643
    const-string v1, "  mNotifyLongNextCheck="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4644
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 4645
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4647
    :cond_2
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4649
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivitySummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanSummoned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 4663
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4662
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 4665
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4664
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4667
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4666
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4674
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4675
    const-string v1, "Settings and Configuration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOffTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSleepTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (enforced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4711
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v1

    .line 4736
    .local v1, "sleepTimeout":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v3

    .line 4737
    .local v3, "screenOffTimeout":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v5

    .line 4738
    .local v5, "screenDimDuration":J
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sleep timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen off timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen dim duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4743
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4744
    const-string v7, "UID states (changing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4745
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 4746
    const-string v7, " changed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4747
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 4748
    const-string v7, "):"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_3
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 4750
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4751
    .local v9, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const-string v10, "  UID "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {p1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4752
    const-string v10, ": "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4753
    iget-boolean v10, v9, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v10, :cond_3

    const-string v10, "  ACTIVE "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 4754
    :cond_3
    const-string v10, "INACTIVE "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4755
    :goto_4
    const-string v10, " count="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    iget v10, v9, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 4757
    const-string v10, " state="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4758
    iget v10, v9, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 4749
    .end local v9    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4761
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4762
    const-string v8, "Looper state:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v10, "  "

    invoke-virtual {v8, v9, v10}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4765
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4766
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake Locks: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4768
    .local v9, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    .end local v9    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_5

    .line 4771
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4772
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspend Blockers: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/SuspendBlocker;

    .line 4774
    .local v9, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    .end local v9    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_6

    .line 4777
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display Power: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v8, p1}, Lcom/android/server/power/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 4781
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v8, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 4783
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4784
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 4785
    .local v8, "numProfiles":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile power states: size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    nop

    .local v7, "i":I
    :goto_7
    if-ge v7, v8, :cond_7

    .line 4787
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4788
    .local v9, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    const-string v10, "  mUserId="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4789
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 4790
    const-string v10, " mScreenOffTimeout="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    iget-wide v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 4792
    const-string v10, " mWakeLockSummary="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4793
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 4794
    const-string v10, " mLastUserActivityTime="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4795
    iget-wide v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 4796
    const-string v10, " mLockingNotified="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4797
    iget-boolean v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 4786
    .end local v9    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 4800
    .end local v7    # "i":I
    :cond_7
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .end local v1    # "sleepTimeout":J
    .end local v3    # "screenOffTimeout":J
    .end local v5    # "screenDimDuration":J
    .end local v8    # "numProfiles":I
    move-object v1, v7

    .line 4801
    .local v1, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4803
    if-eqz v1, :cond_8

    .line 4804
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4806
    :cond_8
    return-void

    .line 4801
    .end local v1    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 40
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    move-object/from16 v1, p0

    .line 4810
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 4812
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4813
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 4814
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-wide v5, 0x10500000002L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4815
    const-wide v7, 0x10e00000003L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4816
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v7, 0x10800000004L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4817
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v9, 0x10800000005L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4818
    const-wide v11, 0x10e00000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4819
    const-wide v11, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4820
    const-wide v11, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4823
    const-wide v11, 0x10e00000009L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4824
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4825
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v13, 0x1080000000bL

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4826
    const-wide v5, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4827
    const-wide v5, 0x1080000000dL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4828
    const-wide v5, 0x1080000000eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4831
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v5, 0x1080000000fL

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4835
    const-wide v5, 0x10b00000010L

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4836
    .local v5, "activeWakeLocksToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, v17

    goto :goto_0

    :cond_0
    move/from16 v0, v18

    :goto_0
    const-wide v13, 0x10800000001L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4839
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    :goto_1
    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4842
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move/from16 v0, v17

    goto :goto_2

    :cond_2
    move/from16 v0, v18

    :goto_2
    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4845
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move/from16 v0, v17

    goto :goto_3

    :cond_3
    move/from16 v0, v18

    :goto_3
    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4848
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move/from16 v0, v17

    goto :goto_4

    :cond_4
    move/from16 v0, v18

    :goto_4
    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4851
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move/from16 v0, v17

    goto :goto_5

    :cond_5
    move/from16 v0, v18

    :goto_5
    const-wide v9, 0x10800000006L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4854
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move/from16 v0, v17

    goto :goto_6

    :cond_6
    move/from16 v0, v18

    :goto_6
    const-wide v9, 0x10800000007L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4857
    const-wide v9, 0x10800000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move/from16 v0, v17

    goto :goto_7

    :cond_7
    move/from16 v0, v18

    :goto_7
    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4860
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4862
    const-wide v9, 0x10300000011L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4863
    const-wide v7, 0x10300000012L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4864
    const-wide v7, 0x10300000013L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4866
    const-wide v7, 0x10b00000014L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4867
    .local v7, "userActivityToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move/from16 v0, v17

    goto :goto_8

    :cond_8
    move/from16 v0, v18

    :goto_8
    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4870
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    move/from16 v0, v17

    goto :goto_9

    :cond_9
    move/from16 v0, v18

    :goto_9
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4873
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    move/from16 v0, v17

    goto :goto_a

    :cond_a
    move/from16 v0, v18

    :goto_a
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4876
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4878
    const-wide v9, 0x10800000015L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4881
    const-wide v9, 0x10800000016L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4882
    const-wide v9, 0x10800000017L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4883
    const-wide v9, 0x10800000018L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4884
    const-wide v9, 0x10800000019L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4885
    const-wide v9, 0x1080000001aL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4887
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v9, v0

    move/from16 v10, v18

    :goto_b
    if-ge v10, v9, :cond_b

    aget v19, v0, v10

    move/from16 v20, v19

    .line 4888
    .local v20, "id":I
    const-wide v11, 0x2050000001bL

    move/from16 v15, v20

    invoke-virtual {v3, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4887
    .end local v20    # "id":I
    add-int/lit8 v10, v10, 0x1

    const-wide v11, 0x10800000003L

    goto :goto_b

    .line 4890
    :cond_b
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v9, v0

    move/from16 v10, v18

    :goto_c
    if-ge v10, v9, :cond_c

    aget v11, v0, v10

    .line 4891
    .local v11, "id":I
    const-wide v13, 0x2050000001cL

    invoke-virtual {v3, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4890
    .end local v11    # "id":I
    add-int/lit8 v10, v10, 0x1

    const-wide v13, 0x10800000001L

    goto :goto_c

    .line 4894
    :cond_c
    const-wide v9, 0x1030000001dL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4895
    const-wide v9, 0x1030000001eL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4896
    const-wide v9, 0x1030000001fL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4897
    const-wide v9, 0x10300000020L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4900
    const-wide v9, 0x10300000021L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4903
    const-wide v9, 0x10300000022L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4906
    const-wide v9, 0x10800000023L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4909
    const-wide v9, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4910
    const-wide v9, 0x10800000025L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4913
    const-wide v9, 0x10800000026L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4917
    const-wide v9, 0x10b00000027L

    .line 4918
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4919
    .local v9, "settingsAndConfigurationToken":J
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4923
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4927
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4931
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v11, 0x10800000004L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4935
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v11, 0x10800000005L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4938
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v11, 0x10800000006L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4942
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v11, 0x10800000007L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4945
    const-wide v11, 0x10800000008L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4949
    const-wide v11, 0x10800000009L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4953
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4957
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4961
    const-wide v11, 0x1110000000cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4965
    const-wide v11, 0x1110000000dL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4969
    const-wide v11, 0x1110000000eL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4973
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4976
    const-wide v11, 0x10800000010L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4980
    const-wide v11, 0x10800000011L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4984
    const-wide v11, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4987
    const-wide v11, 0x10500000013L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4991
    const-wide v11, 0x10500000014L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4995
    const-wide v11, 0x10200000015L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4998
    const-wide v11, 0x10500000016L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5001
    const-wide v11, 0x11100000017L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5004
    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v11, 0x7fffffff

    .line 5008
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 5004
    const-wide v13, 0x10500000018L

    invoke-virtual {v3, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5009
    const-wide v11, 0x10800000019L

    .line 5012
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    .line 5009
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5014
    const-wide v11, 0x10b0000001aL

    .line 5015
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 5017
    .local v11, "stayOnWhilePluggedInToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    move/from16 v0, v17

    goto :goto_d

    :cond_d
    move/from16 v0, v18

    :goto_d
    const-wide v13, 0x10800000001L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5021
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    move/from16 v0, v17

    goto :goto_e

    :cond_e
    move/from16 v0, v18

    :goto_e
    const-wide v13, 0x10800000002L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5025
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move/from16 v0, v17

    goto :goto_f

    :cond_f
    move/from16 v0, v18

    :goto_f
    const-wide v13, 0x10800000003L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5030
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5032
    const-wide v13, 0x10e0000001bL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5035
    const-wide v13, 0x1110000001cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5039
    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    move-wide/from16 v21, v5

    const-wide v5, 0x1120000001dL

    invoke-virtual {v3, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5043
    .end local v5    # "activeWakeLocksToken":J
    .local v21, "activeWakeLocksToken":J
    const-wide v5, 0x1080000001eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5047
    const-wide v5, 0x10e0000001fL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5051
    const-wide v5, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5055
    const-wide v5, 0x10200000020L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5060
    const-wide v5, 0x10b00000021L

    .line 5061
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 5064
    .local v5, "screenBrightnessSettingLimitsToken":J
    const-wide v13, 0x10500000001L

    sget v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5068
    sget v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5072
    const-wide v13, 0x10500000003L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5076
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5078
    const-wide v13, 0x10800000022L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5081
    const-wide v13, 0x10800000023L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5084
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5086
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v13

    .line 5087
    .local v13, "sleepTimeout":J
    invoke-direct {v1, v13, v14}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v15

    move-wide/from16 v23, v15

    .line 5088
    .local v23, "screenOffTimeout":J
    move-wide/from16 v25, v5

    move-wide/from16 v5, v23

    invoke-direct {v1, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v15

    .end local v23    # "screenOffTimeout":J
    .local v5, "screenOffTimeout":J
    .local v25, "screenBrightnessSettingLimitsToken":J
    move-wide/from16 v27, v15

    .line 5089
    .local v27, "screenDimDuration":J
    move-wide/from16 v29, v7

    const-wide v7, 0x11100000028L

    .end local v7    # "userActivityToken":J
    .local v29, "userActivityToken":J
    invoke-virtual {v3, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5090
    const-wide v7, 0x10500000029L

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5091
    const-wide v7, 0x1050000002aL

    move-wide/from16 v31, v5

    move-wide/from16 v5, v27

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5092
    .end local v27    # "screenDimDuration":J
    .local v5, "screenDimDuration":J
    .local v31, "screenOffTimeout":J
    const-wide v7, 0x1080000002bL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5093
    const-wide v7, 0x1080000002cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5095
    nop

    .local v18, "i":I
    :goto_10
    move/from16 v0, v18

    .end local v18    # "i":I
    .local v0, "i":I
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_10

    .line 5096
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$UidState;

    .line 5097
    .local v7, "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-wide/from16 v33, v5

    const-wide v5, 0x20b0000002dL

    .end local v5    # "screenDimDuration":J
    .local v33, "screenDimDuration":J
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 5098
    .local v5, "uIDToken":J
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 5099
    .local v8, "uid":I
    move-wide/from16 v35, v9

    const-wide v9, 0x10500000001L

    .end local v9    # "settingsAndConfigurationToken":J
    .local v35, "settingsAndConfigurationToken":J
    invoke-virtual {v3, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5100
    const-wide v9, 0x10900000002L

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5101
    iget-boolean v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    move-wide/from16 v37, v11

    const-wide v10, 0x10800000003L

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5102
    .end local v11    # "stayOnWhilePluggedInToken":J
    .local v37, "stayOnWhilePluggedInToken":J
    const-wide v10, 0x10500000004L

    iget v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5103
    const-wide v9, 0x10e00000005L

    iget v11, v7, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 5104
    invoke-static {v11}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v11

    .line 5103
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5105
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5095
    .end local v5    # "uIDToken":J
    .end local v7    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v8    # "uid":I
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "i":I
    .restart local v18    # "i":I
    move-wide/from16 v5, v33

    move-wide/from16 v9, v35

    move-wide/from16 v11, v37

    goto :goto_10

    .line 5108
    .end local v18    # "i":I
    .end local v33    # "screenDimDuration":J
    .end local v35    # "settingsAndConfigurationToken":J
    .end local v37    # "stayOnWhilePluggedInToken":J
    .local v5, "screenDimDuration":J
    .restart local v9    # "settingsAndConfigurationToken":J
    .restart local v11    # "stayOnWhilePluggedInToken":J
    :cond_10
    move-wide/from16 v33, v5

    move-wide/from16 v35, v9

    move-wide/from16 v37, v11

    .end local v5    # "screenDimDuration":J
    .end local v9    # "settingsAndConfigurationToken":J
    .end local v11    # "stayOnWhilePluggedInToken":J
    .restart local v33    # "screenDimDuration":J
    .restart local v35    # "settingsAndConfigurationToken":J
    .restart local v37    # "stayOnWhilePluggedInToken":J
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v5, 0x10b00000032L

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5111
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b0000002eL

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Looper;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5113
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5114
    .local v5, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    const-wide v6, 0x20b0000002fL

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5115
    .end local v5    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_11

    .line 5117
    :cond_11
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    .line 5118
    .local v5, "sb":Lcom/android/server/power/SuspendBlocker;
    const-wide v6, 0x20b00000030L

    invoke-interface {v5, v3, v6, v7}, Lcom/android/server/power/SuspendBlocker;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5119
    .end local v5    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_12

    .line 5120
    :cond_12
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5121
    .end local v13    # "sleepTimeout":J
    .end local v21    # "activeWakeLocksToken":J
    .end local v25    # "screenBrightnessSettingLimitsToken":J
    .end local v29    # "userActivityToken":J
    .end local v31    # "screenOffTimeout":J
    .end local v33    # "screenDimDuration":J
    .end local v35    # "settingsAndConfigurationToken":J
    .end local v37    # "stayOnWhilePluggedInToken":J
    .local v0, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5123
    if-eqz v0, :cond_13

    .line 5124
    const-wide v4, 0x10b00000031L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5126
    :cond_13
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5127
    return-void

    .line 5121
    .end local v0    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .locals 2
    .param p1, "time"    # J

    .line 1462
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 1463
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1464
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1465
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1466
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .line 1442
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1443
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1444
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1445
    return v1

    .line 1443
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 2

    .line 2009
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_4

    .line 2010
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 2012
    return-void

    .line 2014
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_2

    .line 2015
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 2017
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2018
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logScreenOn()V

    .line 2020
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2021
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    .line 2023
    :cond_4
    return-void
.end method

.method private forceStopPackageName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4275
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 4276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 4277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 4280
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.gaana"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4281
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " forceStopPackageName  packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4283
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4285
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4287
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .line 3911
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3912
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 3913
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 3918
    :cond_0
    const-string v0, ""

    .line 3919
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 3921
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3924
    :cond_1
    const-string v0, ":0"

    .line 3927
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .locals 9
    .param p1, "now"    # J

    .line 2576
    const-wide/16 v0, -0x1

    .line 2577
    .local v0, "nextTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2578
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2579
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2580
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v7, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v5, v7

    .line 2581
    .local v5, "timeout":J
    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    .line 2582
    :cond_0
    move-wide v0, v5

    .line 2578
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .end local v5    # "timeout":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2585
    .end local v3    # "i":I
    :cond_2
    return-wide v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .line 4293
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4296
    :cond_0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    .line 4297
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4298
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4299
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 4302
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getScreenDimDurationLocked(J)J
    .locals 4
    .param p1, "screenOffTimeout"    # J

    .line 2630
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenOffTimeoutLocked(J)J
    .locals 6
    .param p1, "sleepTimeout"    # J

    .line 2616
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 2617
    .local v0, "timeout":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2618
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2620
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2621
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2623
    :cond_1
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    .line 2624
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2626
    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getSleepTimeoutLocked()J
    .locals 4

    .line 2608
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 2609
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2610
    const-wide/16 v2, -0x1

    return-wide v2

    .line 2612
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2323
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_8

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2366
    :cond_0
    return v1

    .line 2364
    :cond_1
    return v1

    .line 2356
    :cond_2
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v2, "com.android.dialer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2357
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 2362
    :cond_3
    const/16 v0, 0x10

    return v0

    .line 2333
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2334
    return v2

    .line 2337
    :cond_5
    return v3

    .line 2341
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2342
    return v2

    .line 2345
    :cond_7
    const/4 v0, 0x2

    return v0

    .line 2349
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2350
    return v2

    .line 2353
    :cond_9
    const/4 v0, 0x4

    return v0

    .line 2325
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_b

    .line 2327
    return v1

    .line 2368
    :cond_b
    :goto_0
    return v2
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1793
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setWakingupReason(Ljava/lang/String;)V

    .line 1799
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1802
    :cond_0
    monitor-exit v0

    .line 1803
    return-void

    .line 1802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1809
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1810
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1811
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1812
    .local v4, "element":Ljava/lang/StackTraceElement;
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_1

    .line 1817
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goToSleepNoUpdateLocked: eventTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    const/16 v2, 0xb

    if-eqz v0, :cond_2

    if-ne p3, v2, :cond_2

    .line 1824
    const-string v0, "PowerManagerService"

    const-string v2, "drop fingerprint\'s sleep"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return v1

    .line 1829
    :cond_2
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 1838
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    .line 1841
    const-string v0, "goToSleep"

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1843
    if-eq p3, v2, :cond_4

    packed-switch p3, :pswitch_data_0

    .line 1879
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 p3, 0x0

    goto/16 :goto_1

    .line 1908
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1869
    :pswitch_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to proximity (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    goto/16 :goto_1

    .line 1864
    :pswitch_1
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by an accessibility service request (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    goto/16 :goto_1

    .line 1858
    :pswitch_2
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    goto/16 :goto_1

    .line 1861
    :pswitch_3
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    goto/16 :goto_1

    .line 1855
    :pswitch_4
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    goto :goto_1

    .line 1852
    :pswitch_5
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    goto :goto_1

    .line 1849
    :pswitch_6
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    goto :goto_1

    .line 1845
    :pswitch_7
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    goto :goto_1

    .line 1875
    :cond_4
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to fingerprint (uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    nop

    .line 1884
    :goto_1
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1886
    invoke-virtual {p0, v3, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1889
    const/4 v2, 0x0

    .line 1890
    .local v2, "numWakeLocksCleared":I
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1891
    .local v3, "numWakeLocks":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 1892
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1893
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    const/4 v8, 0x6

    if-eq v7, v8, :cond_5

    const/16 v8, 0xa

    if-eq v7, v8, :cond_5

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_5

    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_3

    .line 1897
    .restart local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1891
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1901
    .end local v1    # "i":I
    :cond_6
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V

    .line 1904
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_7

    .line 1905
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "numWakeLocks":I
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1909
    nop

    .line 1910
    return v0

    .line 1908
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1833
    :cond_8
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .line 3332
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3333
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3334
    return-void
.end method

.method private handleSandman()V
    .locals 14

    .line 2744
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2745
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2746
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2747
    .local v2, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_3

    .line 2748
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 2749
    .local v3, "startDreaming":Z
    :goto_1
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v5, :cond_2

    .line 2750
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSandman startDreaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    goto :goto_2

    .line 2754
    .end local v3    # "startDreaming":Z
    :cond_3
    move v3, v1

    .line 2756
    .restart local v3    # "startDreaming":Z
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2762
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v5, 0x3

    if-eqz v0, :cond_6

    .line 2764
    if-eqz v3, :cond_5

    .line 2767
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v4}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2769
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v2, v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2771
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .local v0, "isDreaming":Z
    goto :goto_4

    .line 2773
    .end local v0    # "isDreaming":Z
    :cond_6
    move v0, v1

    .restart local v0    # "isDreaming":Z
    :goto_4
    move v4, v0

    .line 2777
    .end local v0    # "isDreaming":Z
    .local v4, "isDreaming":Z
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2779
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 2780
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2781
    if-ne v2, v5, :cond_7

    .line 2782
    const-string v0, "PowerManagerService"

    const-string v7, "Dozing..."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2784
    :cond_7
    const-string v0, "PowerManagerService"

    const-string v7, "Dreaming..."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v2, :cond_9

    goto/16 :goto_8

    .line 2795
    :cond_9
    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    .line 2796
    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2797
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v5, v7

    if-ge v0, v5, :cond_a

    .line 2800
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2804
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%.  Battery level now: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2810
    :cond_a
    monitor-exit v6

    return-void

    .line 2815
    :cond_b
    :goto_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2816
    const-string v0, "PowerManagerService"

    const-string v5, "handleSandman: Bed time and goToSleepNoUpdateLocked"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/16 v12, 0x3e8

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 2819
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_7

    .line 2821
    :cond_c
    const-string v0, "PowerManagerService"

    const-string v5, "handleSandman: time to wakeUpNoUpdateLocked"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v10, "android.server.power:DREAM"

    const/16 v11, 0x3e8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2823
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x3e8

    .line 2822
    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2824
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_7

    .line 2826
    :cond_d
    if-ne v2, v5, :cond_f

    .line 2827
    if-eqz v4, :cond_e

    .line 2828
    monitor-exit v6

    return-void

    .line 2832
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 v0, 0x3e8

    invoke-direct {p0, v7, v8, v0}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2833
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2835
    :cond_f
    :goto_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2838
    if-eqz v4, :cond_11

    .line 2839
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_10

    .line 2840
    const-string v0, "PowerManagerService"

    const-string v5, "handleSandman stopDream(false)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2844
    :cond_11
    return-void

    .line 2791
    :cond_12
    :goto_8
    :try_start_2
    monitor-exit v6

    return-void

    .line 2835
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2756
    .end local v2    # "wakefulness":I
    .end local v3    # "startDreaming":Z
    .end local v4    # "isDreaming":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 3

    .line 4364
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4365
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 4366
    const-string v1, "PowerManagerService"

    const-string v2, "handleScreenBrightnessBoostTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4370
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4371
    monitor-exit v0

    .line 4372
    return-void

    .line 4371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .line 1211
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1212
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1213
    return-void
.end method

.method private handleUidStateChangeLocked()V
    .locals 1

    .line 3802
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_0

    .line 3803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_0

    .line 3805
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3807
    :goto_0
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 3

    .line 2597
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2598
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 2599
    const-string v1, "PowerManagerService"

    const-string v2, "handleUserActivityTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2603
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2604
    monitor-exit v0

    .line 2605
    return-void

    .line 2604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1364
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 1374
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWLDeath: l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], f=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 1375
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1374
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1380
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 1381
    monitor-exit v0

    return-void

    .line 1384
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1385
    .end local v1    # "index":I
    monitor-exit v0

    .line 1386
    return-void

    .line 1385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementBootCount()V
    .locals 5

    .line 5136
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5139
    nop

    .line 5140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 5139
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5143
    .local v1, "count":I
    goto :goto_0

    .line 5146
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5141
    :catch_0
    move-exception v1

    .line 5142
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 5144
    .local v1, "count":I
    :goto_0
    nop

    .line 5145
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v4, v1, 0x1

    .line 5144
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5146
    .end local v1    # "count":I
    monitor-exit v0

    .line 5147
    return-void

    .line 5146
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initLongWLBlackMap(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3702
    .local p1, "LongWLBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 3703
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3704
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3705
    .local v1, "str_item":Ljava/lang/String;
    const-string v2, ","

    sget v3, Lcom/android/server/power/PowerManagerService;->SPLIT_LENGTH:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3706
    .local v2, "str_pairs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    sget v4, Lcom/android/server/power/PowerManagerService;->SPLIT_LENGTH:I

    if-ne v3, v4, :cond_1

    .line 3707
    sget v3, Lcom/android/server/power/PowerManagerService;->PACKAGENAME_INDEX:I

    aget-object v3, v2, v3

    .line 3708
    .local v3, "packagename":Ljava/lang/String;
    sget v4, Lcom/android/server/power/PowerManagerService;->WAKELOCKNAME_INDEX:I

    aget-object v4, v2, v4

    .line 3709
    .local v4, "wakelockname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3710
    .local v5, "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 3711
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 3712
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3713
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLongWLBlackMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3715
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3717
    :goto_1
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ) into mLongWLBlackMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    .end local v1    # "str_item":Ljava/lang/String;
    .end local v2    # "str_pairs":[Ljava/lang/String;
    .end local v3    # "packagename":Ljava/lang/String;
    .end local v4    # "wakelockname":Ljava/lang/String;
    .end local v5    # "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 3721
    :cond_2
    return-void
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .line 2692
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDisableWakeLockPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4146
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    monitor-enter v0

    .line 4147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4148
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDisableWakeLock  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 4151
    :cond_0
    monitor-exit v0

    .line 4152
    const/4 v0, 0x0

    return v0

    .line 4151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDisableWakeLockReason(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 4155
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    monitor-enter v0

    .line 4156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4157
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDisableWakeLock  reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 4160
    :cond_0
    monitor-exit v0

    .line 4161
    const/4 v0, 0x0

    return v0

    .line 4160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInteractiveInternal()Z
    .locals 2

    .line 3299
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3300
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .line 2680
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 4

    .line 4307
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .locals 4
    .param p1, "profile"    # Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .param p2, "now"    # J

    .line 2103
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

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

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    .line 4352
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4353
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    .line 4354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1282
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 1288
    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 3024
    if-ltz p0, :cond_0

    sget v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .line 1536
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1537
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    const/16 v2, 0x40

    if-eq p1, v2, :cond_2

    const/16 v2, 0x80

    if-eq p1, v2, :cond_2

    .line 1550
    :try_start_0
    monitor-exit v0

    return v3

    .line 1552
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1547
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    monitor-exit v0

    return v1

    .line 1544
    :cond_2
    monitor-exit v0

    return v1

    .line 1552
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logScreenOn()V
    .locals 10

    .line 1992
    const-string v0, "Screen turning on"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 1996
    .local v0, "latencyMs":I
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0xc6

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1997
    .local v2, "log":Landroid/metrics/LogMaker;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1998
    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 1999
    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 2000
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2001
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v9, v0

    invoke-static/range {v4 .. v9}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 2003
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 2004
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen on took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_0
    return-void
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .locals 6

    .line 1983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1984
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    .line 1985
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 1986
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    .line 1987
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1989
    :cond_0
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .line 4494
    if-nez p0, :cond_0

    .line 4495
    const-string p0, ""

    .line 4502
    :cond_0
    const-string/jumbo v0, "quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4503
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4504
    const-string p0, ""

    goto :goto_0

    .line 4505
    :cond_1
    const-string v0, ",quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4506
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4507
    const/4 v0, 0x0

    .line 4508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "quiescent"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 4507
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4511
    :cond_2
    :goto_0
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "recovery-update"

    .line 4512
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4513
    :cond_3
    const-string/jumbo p0, "recovery"

    .line 4516
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_5

    .line 4519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",quiescent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4522
    :cond_5
    const-string/jumbo v0, "sys.powerctl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4527
    goto :goto_1

    .line 4525
    :catch_0
    move-exception v0

    .line 4526
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4528
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v0, "PowerManagerService"

    const-string v1, "Unexpected return from lowLevelReboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 4480
    if-nez p0, :cond_0

    .line 4481
    const-string p0, ""

    .line 4483
    :cond_0
    const-string/jumbo v0, "sys.powerctl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    return-void
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .line 1646
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1647
    .local v0, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1648
    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 1650
    :cond_0
    return-void
.end method

.method private napInternal(JI)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 1914
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1915
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1918
    :cond_0
    monitor-exit v0

    .line 1919
    return-void

    .line 1918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 1922
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1923
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "napNoUpdateLocked: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1931
    :cond_1
    const-string/jumbo v0, "nap"

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1933
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nap time (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1936
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1939
    nop

    .line 1940
    return v2

    .line 1938
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1928
    :cond_2
    :goto_0
    return v1
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    .line 3242
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3243
    return v1

    .line 3245
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3258
    return v1

    .line 3261
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_2

    .line 3262
    return v1

    .line 3265
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1453
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1454
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1457
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1459
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 18
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1510
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_0

    .line 1511
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1514
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1519
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1521
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1495
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_0

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1499
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1506
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1481
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1482
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1485
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1492
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1524
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1526
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1527
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1530
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1532
    :cond_0
    return-void
.end method

.method private overrideScreenBrightnessRangeMinimumInternal(I)V
    .locals 4
    .param p1, "minimumBrightnessRange"    # I

    .line 1635
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1636
    :try_start_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set minimum brightness to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->overrideScreenBrightnessRangeMinimum(I)V

    .line 1639
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1640
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1641
    monitor-exit v0

    .line 1642
    return-void

    .line 1641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .line 3931
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3932
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseActiveAudioUidsStr():uids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3937
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3938
    return-object v0

    .line 3940
    :cond_2
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3941
    .local v0, "arrayUid":[Ljava/lang/String;
    return-object v0

    .line 3935
    .end local v0    # "arrayUid":[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private postAfterBootCompleted(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    .line 1202
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1204
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "Delaying runnable until system is booted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-class v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    .line 1208
    :goto_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 4462
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4464
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4465
    return-void

    .line 4470
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    .line 4471
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    .line 1111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1113
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x112008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1115
    const v1, 0x112008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1117
    const v1, 0x11200c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1119
    const v1, 0x1120015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1121
    const v1, 0x11200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1123
    const v1, 0x1120050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1125
    const v1, 0x112004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1127
    const v1, 0x112004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1129
    const v1, 0x112004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1131
    const v1, 0x112004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1133
    const v1, 0x10e0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1135
    const v1, 0x10e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1137
    const v1, 0x10e0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1139
    const v1, 0x1120049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 1141
    const v1, 0x10e0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    .line 1143
    const v1, 0x10e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    .line 1145
    const/4 v1, 0x1

    const v2, 0x1130002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1147
    const v1, 0x11200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1149
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 6
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 1945
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1946
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reallyGoToSleepNoUpdateLocked: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1955
    :cond_1
    const-string/jumbo v0, "reallyGoToSleep"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1957
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1962
    nop

    .line 1963
    const/4 v0, 0x1

    return v0

    .line 1961
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1952
    :cond_2
    :goto_0
    return v1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1325
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 1326
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v2, :cond_0

    .line 1334
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseWL: l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " [not found], f=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    monitor-exit v0

    return-void

    .line 1341
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1342
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_3

    .line 1350
    :cond_2
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseWL: l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], f=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 1351
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1350
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 1355
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1358
    :cond_4
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1359
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1360
    .end local v1    # "index":I
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    monitor-exit v0

    .line 1361
    return-void

    .line 1360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .line 1389
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1390
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1391
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1392
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_0

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1396
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1398
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1399
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1400
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1401
    return-void
.end method

.method private resolveBlackConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 4188
    if-nez p1, :cond_0

    .line 4189
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray ==null mDozeBlackForAudioList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray ==null mLightIdleBlackList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray ==null mOemDisableWakeLockPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray ==null mOemDisableWakeLockReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    return-void

    .line 4196
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4196
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 4197
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4198
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemBlackPackageForAudio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4199
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4200
    .local v3, "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4201
    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4202
    move v5, v0

    .line 4202
    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 4203
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4202
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4205
    .end local v5    # "i":I
    :cond_1
    monitor-exit v4

    .line 4206
    .end local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    goto/16 :goto_5

    .line 4205
    .restart local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 4206
    .end local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemBlackPackageForLongWakelock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4207
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4208
    .restart local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    monitor-enter v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4209
    :try_start_3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4210
    move v5, v0

    .line 4210
    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4211
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4210
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4214
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->initLongWLBlackMap(Ljava/util/List;)V

    .line 4215
    monitor-exit v4

    .line 4218
    .end local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    goto :goto_5

    .line 4215
    .restart local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 4218
    .end local v3    # "oemDeviceIdleJsonArray":Lorg/json/JSONArray;
    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemDisableWakeLockPackage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4219
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4220
    .local v3, "oemDisableWakeLockPackageJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4221
    :try_start_5
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4222
    move v5, v0

    .line 4222
    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4223
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4222
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4225
    .end local v5    # "i":I
    :cond_5
    monitor-exit v4

    .line 4226
    .end local v3    # "oemDisableWakeLockPackageJsonArray":Lorg/json/JSONArray;
    goto :goto_5

    .line 4225
    .restart local v3    # "oemDisableWakeLockPackageJsonArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 4226
    .end local v3    # "oemDisableWakeLockPackageJsonArray":Lorg/json/JSONArray;
    :cond_6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemDisableWakeLockReason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4227
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4228
    .local v3, "oemDisableWakeLockReasonJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    monitor-enter v4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4229
    :try_start_7
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4230
    move v5, v0

    .line 4230
    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 4231
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4230
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4233
    .end local v5    # "i":I
    :cond_7
    monitor-exit v4

    goto :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    .line 4236
    .end local v3    # "oemDisableWakeLockReasonJsonArray":Lorg/json/JSONArray;
    :cond_8
    :goto_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemKillWakeLocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4249
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4250
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4251
    .local v3, "jsonWakeLockList":Lorg/json/JSONArray;
    move v4, v0

    .line 4251
    .local v4, "i":I
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 4252
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 4253
    .local v5, "jsonWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4254
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 4255
    .local v7, "ja":Lorg/json/JSONArray;
    move v8, v0

    .line 4255
    .local v8, "j":I
    :goto_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 4256
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4257
    .local v9, "tag":Ljava/lang/String;
    invoke-virtual {p0, v6, v9}, Lcom/android/server/power/PowerManagerService;->addKillWakeLockInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    .end local v9    # "tag":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 4251
    .end local v5    # "jsonWakeLock":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "ja":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4261
    .end local v3    # "jsonWakeLockList":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemPowerKillEnable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4262
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerKillEnable:Z

    .line 4196
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4265
    .end local v1    # "index":I
    :cond_c
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] updated complete mDozeBlackForAudioList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] updated complete mLightIdleBlackList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] updated complete mOemDisableWakeLockPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] updated complete mOemDisableWakeLockReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4271
    goto :goto_8

    .line 4269
    :catch_0
    move-exception v0

    .line 4270
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "PowerManagerService"

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

    .line 4272
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1472
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v0, v1

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1474
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1476
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    .line 1478
    :cond_1
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 3

    .line 2725
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_0

    .line 2726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2727
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2728
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2729
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2731
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .locals 2
    .param p1, "timeMs"    # J

    .line 2567
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2568
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2569
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2570
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .line 4313
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4314
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 4315
    monitor-exit v0

    return-void

    .line 4317
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 4318
    .local v1, "light":Lcom/android/server/lights/Light;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4321
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 4322
    return-void

    .line 4318
    .end local v1    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 4325
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4326
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 4327
    monitor-exit v0

    .line 4328
    return-void

    .line 4327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 4434
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4435
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_1

    .line 4437
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4438
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4439
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4440
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4442
    :cond_1
    monitor-exit v0

    .line 4443
    return-void

    .line 4442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .locals 2
    .param p1, "keepState"    # Z

    .line 4446
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4447
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_0

    .line 4448
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 4449
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4450
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4452
    :cond_0
    monitor-exit v0

    .line 4453
    return-void

    .line 4452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3269
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_1

    .line 3270
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3271
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL auto-suspend mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3276
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3279
    goto :goto_0

    .line 3278
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 3281
    :cond_1
    :goto_0
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3284
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_1

    .line 3285
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3286
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3291
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3293
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3294
    goto :goto_0

    .line 3293
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 3296
    :cond_1
    :goto_0
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 3305
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3306
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3307
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLowPowerModeInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsPowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_1

    .line 3310
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3313
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    .line 3315
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 4
    .param p1, "brightness"    # I

    .line 4375
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4376
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v1, p1, :cond_5

    .line 4379
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4380
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4381
    const/4 v1, 0x2

    sput v1, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 4387
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->mFirstSetWindowBrightness:Z

    goto :goto_0

    .line 4389
    :cond_0
    sput v3, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 4390
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->mFirstSetWindowBrightness:Z

    if-eqz v1, :cond_2

    .line 4391
    sget v1, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    sput v1, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 4392
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mFirstSetWindowBrightness:Z

    goto :goto_0

    .line 4396
    :cond_1
    sput v2, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 4397
    sput v2, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 4400
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 4401
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 4402
    :cond_3
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenBrightnessOverrideFromWindowManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_4
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4405
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4407
    :cond_5
    monitor-exit v0

    .line 4408
    return-void

    .line 4407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 4419
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4420
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 4421
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4422
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UA TimeoutOverrideFromWindowManagerInternal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4425
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 4426
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4427
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4429
    :cond_1
    monitor-exit v0

    .line 4430
    return-void

    .line 4429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .locals 2

    .line 4411
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4412
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 4413
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4414
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4415
    monitor-exit v0

    .line 4416
    return-void

    .line 4415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3991
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 3993
    const/4 v0, 0x0

    .line 3994
    .local v0, "disabled":Z
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 3995
    .local v3, "appid":I
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_d

    .line 3997
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v5, 0x13

    if-eqz v4, :cond_1

    .line 3998
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v6, 0xa

    if-le v4, v6, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    .line 4003
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v6, 0x3

    if-eqz v4, :cond_8

    .line 4008
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v4, :cond_2

    .line 4009
    iput-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    .line 4015
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isKillWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 4019
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4035
    .local v4, "state":Lcom/android/server/power/PowerManagerService$UidState;
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleSySWhitelist:[I

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    :goto_1
    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_8

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeepSleepWhitelist:[I

    .line 4036
    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_8

    :cond_4
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4040
    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_8

    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v7, v5, :cond_8

    .line 4042
    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-le v7, v6, :cond_5

    .line 4043
    const/4 v0, 0x1

    .line 4045
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z

    if-eqz v7, :cond_6

    .line 4046
    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-ne v7, v6, :cond_6

    .line 4047
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4048
    const/4 v0, 0x1

    .line 4054
    :cond_6
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    if-eqz v7, :cond_7

    .line 4055
    const/4 v0, 0x1

    .line 4064
    :cond_7
    iget-boolean v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    if-eqz v7, :cond_8

    .line 4065
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 4066
    const/4 v0, 0x1

    .line 4076
    .end local v4    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockRestriction:Z

    if-eqz v4, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 4079
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4080
    .restart local v4    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4081
    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_b

    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v7, v5, :cond_b

    .line 4083
    iget v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-le v5, v6, :cond_9

    .line 4084
    const/4 v0, 0x1

    .line 4087
    :cond_9
    iget v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-ne v5, v6, :cond_a

    .line 4088
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 4089
    const/4 v0, 0x1

    .line 4092
    :cond_a
    if-eqz v0, :cond_b

    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_b

    .line 4093
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " wakeLock:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", is disabled by restriction"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    .end local v4    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_b
    if-nez v0, :cond_d

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_d

    .line 4103
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->IsBlackLongWakelockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    .line 4109
    :cond_d
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_f

    if-nez v0, :cond_f

    .line 4110
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_f

    .line 4111
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 4112
    .local v4, "size":I
    move v5, v1

    .local v5, "k":I
    :goto_2
    if-ge v5, v4, :cond_f

    .line 4113
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 4114
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->blackPackageForAudio(I)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4115
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 4116
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->forceStopPackageName(Ljava/lang/String;)Z

    .line 4117
    goto :goto_3

    .line 4112
    .end local v6    # "uid":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4127
    .end local v4    # "size":I
    .end local v5    # "k":I
    :cond_f
    :goto_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    if-ne v4, v2, :cond_11

    .line 4128
    :cond_10
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    .line 4133
    :cond_11
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v4, v0, :cond_12

    .line 4134
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4135
    return v2

    .line 4138
    .end local v0    # "disabled":Z
    .end local v3    # "appid":I
    :cond_12
    return v1
.end method

.method private shouldBoostScreenBrightness()Z
    .locals 1

    .line 3018
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .line 2669
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_0

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

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .line 3174
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .line 2171
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2172
    return v1

    .line 2177
    :cond_0
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 2179
    return v1

    .line 2184
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v2, v0, :cond_2

    if-nez p3, :cond_2

    .line 2187
    return v1

    .line 2191
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2192
    return v1

    .line 2196
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v0, :cond_4

    .line 2197
    return v1

    .line 2201
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 2202
    return v1

    .line 2206
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .locals 3
    .param p1, "haltMode"    # I
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .line 3338
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 3339
    :cond_0
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3343
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 3349
    :cond_1
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    .line 3365
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 3366
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3367
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3370
    if-eqz p4, :cond_2

    .line 3371
    monitor-enter v0

    .line 3374
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    :goto_1
    goto :goto_0

    .line 3378
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3375
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3380
    :cond_2
    return-void

    .line 3345
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too early to call shutdown() or reboot()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 8
    .param p1, "dirty"    # I

    .line 2904
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2905
    .local v0, "oldDisplayReady":Z
    and-int/lit16 v1, p1, 0x383f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 2909
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v4

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2910
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2911
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDisplayPowerRequest.policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 2921
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v4, -0x1

    if-nez v1, :cond_1

    .line 2924
    const/4 v1, 0x0

    .line 2925
    .local v1, "autoBrightness":Z
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2925
    .local v5, "screenBrightnessOverride":I
    :goto_0
    goto :goto_2

    .line 2926
    .end local v1    # "autoBrightness":Z
    .end local v5    # "screenBrightnessOverride":I
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2927
    const/4 v1, 0x0

    .line 2928
    .restart local v1    # "autoBrightness":Z
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    goto :goto_0

    .line 2930
    .end local v1    # "autoBrightness":Z
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    .line 2932
    .restart local v1    # "autoBrightness":Z
    :goto_1
    move v5, v4

    .line 2936
    .restart local v5    # "screenBrightnessOverride":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v5, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 2937
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2938
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2939
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 2941
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 2943
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v2, :cond_6

    .line 2944
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2945
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-nez v4, :cond_5

    .line 2947
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    .line 2948
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v6, 0x3

    iput v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2950
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_5

    .line 2951
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v6, 0x2

    iput v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2954
    :cond_5
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_3

    .line 2957
    :cond_6
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2958
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v4, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2962
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v2, :cond_7

    .line 2963
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    goto :goto_4

    .line 2964
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v4, :cond_8

    .line 2965
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    .line 2966
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 2970
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v6, v7}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2972
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2974
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_9

    .line 2975
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 2977
    :cond_9
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v4, :cond_a

    .line 2978
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDisplayPowerStateLocked: mDisplayReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", policy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWakefulness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWakeLockSummary=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2981
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mUserActivitySummary=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2982
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mBootCompleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", screenBrightnessOverride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", useAutoBrightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mScreenBrightnessBoostInProgress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsVrModeEnabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sQuiescent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2978
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    .end local v1    # "autoBrightness":Z
    .end local v5    # "screenBrightnessOverride":I
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    :goto_5
    return v2
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .line 2709
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 2718
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 2719
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2722
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 13
    .param p1, "dirty"    # I

    .line 2114
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_5

    .line 2115
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2116
    .local v0, "wasPowered":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2117
    .local v1, "oldPlugType":I
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2118
    .local v2, "oldLevelLow":Z
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2119
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2120
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2121
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2123
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v3, :cond_0

    .line 2124
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", oldPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v1, v3, :cond_4

    .line 2132
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2135
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v3

    .line 2143
    .local v3, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2144
    .local v11, "now":J
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2146
    const-string v7, "android.server.power:POWER"

    const/16 v8, 0x3e8

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2147
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e8

    .line 2146
    move-object v4, p0

    move-wide v5, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2149
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move-object v4, p0

    move-wide v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2154
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_4

    .line 2155
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_3

    invoke-static {v1}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2156
    invoke-static {v4}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2157
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v4}, Lcom/android/server/power/Notifier;->onWiredChargingStarted()V

    goto :goto_0

    .line 2158
    :cond_3
    if-eqz v3, :cond_4

    .line 2159
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(I)V

    .line 2164
    .end local v3    # "dockedOnWirelessCharger":Z
    .end local v11    # "now":J
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    .line 2166
    .end local v0    # "wasPowered":Z
    .end local v1    # "oldPlugType":I
    .end local v2    # "oldLevelLow":Z
    :cond_5
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 8

    .line 2034
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2038
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_1
    const-string/jumbo v0, "updatePowerState"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2044
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2045
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2046
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2051
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2052
    .local v3, "now":J
    const/4 v0, 0x0

    move v5, v0

    .line 2054
    .local v5, "dirtyPhase2":I
    :goto_0
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2055
    .local v6, "dirtyPhase1":I
    or-int/2addr v5, v6

    .line 2056
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2058
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2059
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2060
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2061
    nop

    .line 2066
    .end local v6    # "dirtyPhase1":I
    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 2069
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v0

    .line 2072
    .local v0, "displayBecameReady":Z
    invoke-direct {p0, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2075
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2080
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    .end local v0    # "displayBecameReady":Z
    .end local v3    # "now":J
    .end local v5    # "dirtyPhase2":I
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2083
    nop

    .line 2084
    return-void

    .line 2063
    .restart local v3    # "now":J
    .restart local v5    # "dirtyPhase2":I
    :cond_2
    goto :goto_0

    .line 2082
    .end local v3    # "now":J
    .end local v5    # "dirtyPhase2":I
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 2035
    :cond_3
    :goto_1
    return-void
.end method

.method private updateProfilesLocked(J)V
    .locals 6
    .param p1, "now"    # J

    .line 2090
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2091
    .local v0, "numProfiles":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2092
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2093
    .local v3, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2094
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_1

    .line 2095
    :cond_0
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v4, :cond_1

    .line 2096
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 2097
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v5, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    .line 2091
    .end local v3    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2100
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 9
    .param p1, "dirty"    # I

    .line 2995
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_1

    .line 2996
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    .line 2997
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2998
    .local v7, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2999
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 3000
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 3002
    .local v2, "boostTimeout":J
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3004
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3005
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3006
    return-void

    .line 3009
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "boostTimeout":J
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3010
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3011
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3015
    .end local v7    # "now":J
    :cond_1
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 7

    .line 1152
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1154
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "screensaver_enabled"

    .line 1156
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1154
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1158
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    .line 1160
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1158
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1162
    const-string/jumbo v1, "screensaver_activate_on_dock"

    .line 1164
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1162
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1166
    const-string/jumbo v1, "screen_off_timeout"

    const/16 v5, 0x3a98

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 1169
    const-string/jumbo v1, "sleep_timeout"

    const/4 v5, -0x1

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 1172
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1174
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1176
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1178
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_5

    .line 1179
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v2

    .line 1182
    .local v1, "doubleTapWakeEnabled":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_5

    .line 1183
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1184
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 1188
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    goto :goto_5

    :cond_6
    const-string v1, "0"

    .line 1189
    .local v1, "retailDemoValue":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "sys.retaildemo.enabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1190
    const-string/jumbo v4, "sys.retaildemo.enabled"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_7
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1197
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1198
    return-void
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .line 2214
    and-int/lit16 v0, p1, 0x120

    if-eqz v0, :cond_1

    .line 2215
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2216
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_0

    .line 2217
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2218
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0

    .line 2220
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2223
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_1

    .line 2224
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2227
    .end local v0    # "wasStayOn":Z
    :cond_1
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    .line 3183
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3184
    .local v0, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v3

    .line 3185
    .local v3, "needDisplaySuspendBlocker":Z
    xor-int/lit8 v4, v3, 0x1

    .line 3186
    .local v4, "autoSuspend":Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v5

    .line 3191
    .local v5, "interactive":Z
    if-nez v4, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_1

    .line 3192
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3196
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_2

    .line 3197
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3198
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3200
    :cond_2
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_3

    .line 3201
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3202
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3211
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_5

    .line 3216
    if-nez v5, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_5

    .line 3217
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3222
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_6

    .line 3223
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3224
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3226
    :cond_6
    if-nez v3, :cond_7

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_7

    .line 3227
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3228
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3232
    :cond_7
    if-eqz v4, :cond_8

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v2, :cond_8

    .line 3233
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3235
    :cond_8
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 22
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    move-object/from16 v0, p0

    .line 2473
    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_f

    .line 2475
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2477
    const-wide/16 v3, 0x0

    .line 2478
    .local v3, "nextTimeout":J
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v7, :cond_1

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 2554
    :cond_0
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_6

    .line 2484
    :cond_1
    :goto_0
    const-wide/16 v8, -0x1

    .line 2486
    .local v8, "sleepTimeout":J
    const-wide/16 v10, -0x1

    invoke-direct {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v6

    .line 2487
    .local v6, "screenOffTimeout":J
    invoke-direct {v0, v6, v7}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v14

    .line 2488
    .local v14, "screenDimDuration":J
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2489
    .local v1, "userInactiveOverride":Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v10

    .line 2491
    .local v10, "nextProfileTimeout":J
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2492
    move-wide/from16 v16, v3

    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 2492
    .end local v3    # "nextTimeout":J
    .local v16, "nextTimeout":J
    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 2493
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v2, v6

    sub-long/2addr v2, v14

    .line 2495
    .end local v16    # "nextTimeout":J
    .local v2, "nextTimeout":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    .line 2496
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_1

    .line 2498
    :cond_2
    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long v3, v4, v6

    .line 2499
    .end local v2    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    cmp-long v2, p1, v3

    if-gez v2, :cond_3

    .line 2500
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2504
    :cond_3
    move-wide v2, v3

    goto :goto_1

    .line 2504
    .end local v3    # "nextTimeout":J
    .restart local v16    # "nextTimeout":J
    :cond_4
    move-wide/from16 v2, v16

    .line 2504
    .end local v16    # "nextTimeout":J
    .restart local v2    # "nextTimeout":J
    :goto_1
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v4, :cond_8

    move-wide/from16 v18, v6

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 2504
    .end local v6    # "screenOffTimeout":J
    .local v18, "screenOffTimeout":J
    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 2504
    .end local v2    # "nextTimeout":J
    .local v20, "nextTimeout":J
    cmp-long v2, v5, v2

    if-ltz v2, :cond_9

    .line 2506
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    add-long v2, v2, v18

    .line 2507
    .end local v20    # "nextTimeout":J
    .restart local v2    # "nextTimeout":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_7

    .line 2508
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 2511
    :cond_5
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 2512
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_3

    .line 2510
    :cond_6
    :goto_2
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2517
    :cond_7
    :goto_3
    move-wide/from16 v20, v2

    goto :goto_4

    .line 2517
    .end local v18    # "screenOffTimeout":J
    .restart local v6    # "screenOffTimeout":J
    :cond_8
    move-wide/from16 v20, v2

    move-wide/from16 v18, v6

    .line 2517
    .end local v2    # "nextTimeout":J
    .end local v6    # "screenOffTimeout":J
    .restart local v18    # "screenOffTimeout":J
    .restart local v20    # "nextTimeout":J
    :cond_9
    :goto_4
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v2, :cond_a

    .line 2528
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2529
    const-wide/16 v20, -0x1

    goto :goto_5

    .line 2533
    :cond_a
    const/4 v2, 0x4

    .line 2533
    .end local v20    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :goto_5
    move-wide/from16 v3, v20

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v5, v2, :cond_c

    if-eqz v1, :cond_c

    .line 2534
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v5, 0x3

    and-int/2addr v2, v5

    if-eqz v2, :cond_b

    .line 2537
    cmp-long v2, v3, p1

    if-ltz v2, :cond_b

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    const-wide/16 v12, -0x1

    cmp-long v2, v5, v12

    if-nez v2, :cond_b

    .line 2539
    iput-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2542
    :cond_b
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2543
    const-wide/16 v3, -0x1

    .line 2546
    :cond_c
    const-wide/16 v5, 0x0

    cmp-long v2, v10, v5

    if-lez v2, :cond_d

    .line 2547
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2550
    .end local v3    # "nextTimeout":J
    .restart local v2    # "nextTimeout":J
    move-wide v3, v2

    .line 2550
    .end local v2    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :cond_d
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v2, :cond_e

    cmp-long v2, v3, v5

    if-ltz v2, :cond_e

    .line 2551
    invoke-direct {v0, v3, v4}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    .line 2553
    .end local v1    # "userInactiveOverride":Z
    .end local v8    # "sleepTimeout":J
    .end local v10    # "nextProfileTimeout":J
    .end local v14    # "screenDimDuration":J
    .end local v18    # "screenOffTimeout":J
    :cond_e
    nop

    .line 2557
    :goto_6
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_f

    .line 2558
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2559
    invoke-static {v5}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mUserActivitySummary=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2560
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nextTimeout="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2558
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    .end local v3    # "nextTimeout":J
    :cond_f
    return-void
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 7

    .line 3875
    const/4 v0, 0x0

    .line 3876
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3877
    .local v1, "numWakeLocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    .line 3878
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3879
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_2

    .line 3883
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->isExclusiveWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3884
    goto :goto_1

    .line 3887
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3888
    const/4 v0, 0x1

    .line 3889
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_1

    .line 3891
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 3893
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3877
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3898
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 3899
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3900
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3902
    :cond_4
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 9
    .param p1, "dirty"    # I

    .line 2237
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    .line 2238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2240
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2241
    .local v1, "numProfiles":I
    move v2, v0

    .line 2241
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2242
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2246
    .end local v2    # "i":I
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 2249
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2250
    .local v2, "numWakeLocks":I
    move v3, v0

    .line 2250
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 2251
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2252
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v5

    .line 2253
    .local v5, "wakeLockFlags":I
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2254
    move v6, v0

    .line 2254
    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 2255
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2256
    .local v7, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2257
    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v8, v5

    iput v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2254
    .end local v7    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2262
    .end local v6    # "j":I
    :cond_2
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    if-eqz v6, :cond_3

    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPackageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " |mFlags:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |mWakeLockSummary:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v5    # "wakeLockFlags":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2266
    .end local v3    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2267
    move v3, v0

    .line 2267
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_5

    .line 2268
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2269
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2267
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2273
    .end local v3    # "i":I
    :cond_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_6

    .line 2274
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 2278
    :cond_6
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_7

    .line 2279
    const-string v0, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2280
    invoke-static {v4}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mWakeLockSummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2281
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2279
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    .end local v1    # "numProfiles":I
    .end local v2    # "numWakeLocks":I
    :cond_7
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 1415
    iget-object v12, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1416
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1417
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1418
    :try_start_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1419
    :try_start_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [not found], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1422
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p1

    :try_start_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v14, p4

    :try_start_5
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1438
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_0
    move/from16 v14, p4

    :goto_1
    move-object/from16 v1, p3

    goto/16 :goto_3

    .line 1426
    .restart local v0    # "index":I
    :cond_1
    move-object/from16 v13, p1

    move/from16 v14, p4

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v15, v1

    .line 1427
    .local v15, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_2

    .line 1428
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_2
    invoke-virtual {v15, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1432
    iget v3, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v1, v10

    move-object v2, v15

    move-object v8, v11

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1435
    move-object/from16 v1, p3

    :try_start_6
    iput-object v1, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1436
    invoke-virtual {v15, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1436
    .end local v0    # "index":I
    .end local v15    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_2

    .line 1438
    :cond_3
    move-object/from16 v1, p3

    :goto_2
    monitor-exit v12

    .line 1439
    return-void

    .line 1438
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v1, p3

    move/from16 v14, p4

    :goto_3
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 9
    .param p1, "dirty"    # I

    .line 2644
    const/4 v0, 0x0

    .line 2645
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_2

    .line 2648
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2649
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 2650
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "updateWakefulnessLocked: Bed time..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2653
    .local v1, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2654
    const/16 v3, 0x3e8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    goto :goto_0

    .line 2656
    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object v3, p0

    move-wide v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    .line 2661
    .end local v1    # "time":J
    :cond_2
    :goto_0
    return v0
.end method

.method private userActivityFromNative(JII)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .line 1557
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1558
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "userActivityFromNative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_0
    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1561
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1564
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1568
    :cond_0
    monitor-exit v0

    .line 1569
    return-void

    .line 1568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1572
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1573
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userActivityNoUpdateLocked: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1573
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1583
    :cond_1
    const-string/jumbo v0, "userActivity"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1585
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 1586
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1587
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1592
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v0, :cond_3

    .line 1593
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 1594
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1597
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1603
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    .line 1605
    and-int/lit8 v0, p4, 0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 1606
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    .line 1608
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1609
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1610
    if-ne p3, v4, :cond_5

    .line 1611
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    :cond_5
    nop

    .line 1627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1614
    return v4

    .line 1617
    :cond_6
    :try_start_1
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    .line 1618
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1619
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1620
    if-ne p3, v4, :cond_7

    .line 1621
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    :cond_7
    nop

    .line 1627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1623
    return v4

    .line 1627
    :cond_8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1628
    nop

    .line 1629
    return v1

    .line 1600
    :cond_9
    :goto_0
    nop

    .line 1627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1600
    return v1

    .line 1627
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1580
    :cond_a
    :goto_1
    return v1
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .locals 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "userId"    # I

    .line 2404
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2405
    move v0, v1

    .local v0, "k":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2406
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 2407
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 2408
    return v2

    .line 2405
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2412
    .end local v0    # "k":I
    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 2413
    .local v0, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_3

    .line 2414
    move v3, v1

    .local v3, "k":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2415
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    .line 2416
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p2, v5, :cond_2

    .line 2417
    return v2

    .line 2414
    .end local v4    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2422
    .end local v0    # "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    .end local v3    # "k":I
    :cond_3
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .line 1654
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p3}, Landroid/hardware/display/DisplayManagerInternal;->setWakingupReason(Ljava/lang/String;)V

    .line 1662
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, p3}, Landroid/service/dreams/DreamManagerInternal;->onWakingUp(Ljava/lang/String;)V

    .line 1665
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1668
    :cond_0
    monitor-exit v0

    .line 1669
    return-void

    .line 1668
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 16
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    .line 1691
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1692
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1693
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1695
    .local v4, "element":Ljava/lang/StackTraceElement;
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   |----"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1699
    .end local v0    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_1

    .line 1700
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUpNoUpdateLocked: eventTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_1
    const/16 v0, 0x3e8

    const/4 v13, 0x1

    if-ne v11, v0, :cond_2

    .line 1706
    iput-boolean v13, v7, Lcom/android/server/power/PowerManagerService;->mBlockFingerprintSleep:Z

    .line 1710
    :cond_2
    iget-wide v2, v7, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v8, v2

    if-ltz v0, :cond_a

    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_a

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 1718
    :cond_3
    invoke-direct {v7, v12}, Lcom/android/server/power/PowerManagerService;->checkIsToWakeUpNoUpdate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1719
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow to hold any wakelock for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return v1

    .line 1727
    :cond_4
    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 1728
    :cond_5
    if-eqz v10, :cond_6

    .line 1731
    invoke-direct {v7, v10}, Lcom/android/server/power/PowerManagerService;->isDisableWakeLockReason(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1733
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow to hold any wakelock during doze mode for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return v1

    .line 1738
    :cond_6
    if-eqz v12, :cond_8

    .line 1741
    const-string v0, "android"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1742
    iget-object v0, v7, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/android/server/power/PowerManagerService;->isDisableWakeLockPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1743
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow to screen on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iput-object v3, v7, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    .line 1745
    return v1

    .line 1748
    :cond_7
    invoke-direct {v7, v12}, Lcom/android/server/power/PowerManagerService;->isDisableWakeLockPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1749
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow to hold any wakelock during doze mode for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return v1

    .line 1758
    :cond_8
    iput-object v3, v7, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    .line 1761
    const-string v0, "Screen turning on"

    const-wide/32 v14, 0x20000

    invoke-static {v14, v15, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1763
    const-string/jumbo v0, "wakeUp"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1765
    :try_start_0
    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_9

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1775
    :pswitch_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dozing (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1771
    :pswitch_1
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dream (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    goto :goto_1

    .line 1767
    :cond_9
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from sleep (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    nop

    .line 1780
    :goto_1
    iput-wide v8, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1781
    invoke-virtual {v7, v13, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1783
    iget-object v0, v7, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v6, p6

    invoke-virtual {v0, v10, v11, v12, v6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1784
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move-wide v2, v8

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 1788
    nop

    .line 1789
    return v13

    .line 1787
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1712
    :cond_a
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addExclusiveWakeLockInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 3475
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3477
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3478
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3480
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3481
    .restart local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3482
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 3486
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3487
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3488
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 3490
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "ExclusiveWakeLocks: packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 3491
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, ", tags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3492
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3493
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3494
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3495
    .end local v6    # "t":Ljava/lang/String;
    goto :goto_2

    .line 3496
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3497
    const-string v5, "PowerManagerService"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 3500
    :cond_2
    return-void
.end method

.method addKillWakeLockInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 3507
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3508
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3509
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3510
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3512
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3513
    .restart local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3514
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 3518
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3519
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3520
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 3522
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "ExclusiveWakeLocks: packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 3523
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, ", tags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3524
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3525
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3526
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3527
    .end local v6    # "t":Ljava/lang/String;
    goto :goto_2

    .line 3528
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3529
    const-string v5, "PowerManagerService"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 3532
    :cond_2
    return-void
.end method

.method checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2373
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForKeepWakeLocks processname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |mOwnerUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mNotifiedLong:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_0
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2375
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_3

    .line 2376
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 2377
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-eqz v0, :cond_3

    .line 2380
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    if-eqz v2, :cond_1

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForKeepWakeLocks mUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |mProcState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_1
    sget-object v2, Lcom/android/server/power/PowerManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v3, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->isContainUid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2382
    return v1

    .line 2388
    :cond_2
    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 2389
    const/4 v1, 0x0

    return v1

    .line 2394
    .end local v0    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_3
    return v1
.end method

.method checkForLongWakeLocks()V
    .locals 15

    .line 2426
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2427
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2428
    .local v1, "now":J
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 2429
    const-wide/32 v3, 0xea60

    sub-long v5, v1, v3

    .line 2430
    .local v5, "when":J
    const-wide v7, 0x7fffffffffffffffL

    .line 2431
    .local v7, "nextCheckTime":J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2432
    .local v9, "numWakeLocks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_3

    .line 2433
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2434
    .local v11, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 2437
    invoke-virtual {p0, v11}, Lcom/android/server/power/PowerManagerService;->checkIfScreenWakelocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2439
    :cond_0
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_2

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_2

    .line 2440
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_1

    .line 2442
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 2445
    :cond_1
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v12, v3

    .line 2446
    .local v12, "checkTime":J
    cmp-long v14, v12, v7

    if-gez v14, :cond_2

    .line 2447
    move-wide v7, v12

    .line 2432
    .end local v11    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12    # "checkTime":J
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2453
    .end local v10    # "i":I
    :cond_3
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2454
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2455
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v7, v10

    if-eqz v10, :cond_4

    .line 2456
    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2457
    invoke-direct {p0, v7, v8}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_2

    .line 2459
    :cond_4
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2461
    .end local v1    # "now":J
    .end local v5    # "when":J
    .end local v7    # "nextCheckTime":J
    .end local v9    # "numWakeLocks":I
    :goto_2
    monitor-exit v0

    .line 2462
    return-void

    .line 2461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkIfScreenWakelocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2398
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2399
    .local v0, "flag":I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method clearExclusiveWakeLockInternal()V
    .locals 1

    .line 3503
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3504
    return-void
.end method

.method disableExclusiveWakeLocksInternal()V
    .locals 8

    .line 3578
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3579
    const/4 v1, 0x0

    .line 3580
    .local v1, "changed":Z
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsExclusiveEnabled:Z

    .line 3581
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3582
    .local v3, "numWakeLocks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 3583
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3584
    .local v5, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->isExclusiveWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3585
    iget v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v2, :cond_0

    .line 3587
    iget-boolean v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v6, :cond_0

    .line 3588
    const/4 v1, 0x1

    .line 3589
    iput-boolean v2, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 3590
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3582
    .end local v5    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3596
    .end local v4    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 3597
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3598
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3600
    .end local v1    # "changed":Z
    .end local v3    # "numWakeLocks":I
    :cond_2
    monitor-exit v0

    .line 3601
    return-void

    .line 3600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dynamicallyConfigPowerManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4542
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_6

    .line 4543
    aget-object v0, p3, v1

    .line 4544
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4546
    return v1

    .line 4548
    :cond_0
    array-length v3, p3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 4550
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {p0, p2}, Lcom/android/server/power/PowerManagerService;->logOutPowerManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    .line 4552
    return v2

    .line 4555
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    nop

    .line 4559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigPowerManagerServiceLogTag, args.length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    nop

    .line 4560
    .local v1, "index":I
    :goto_0
    move v0, v1

    .line 4560
    .end local v1    # "index":I
    .local v0, "index":I
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 4561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigPowerManagerServiceLogTag, args["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    add-int/lit8 v1, v0, 0x1

    .line 4560
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 4565
    .end local v1    # "index":I
    :cond_2
    aget-object v0, p3, v2

    .line 4566
    .local v0, "logCategoryTag":Ljava/lang/String;
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4567
    .local v1, "on":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigPowerManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4571
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 4572
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 4573
    sput-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    .line 4574
    sput-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    goto :goto_1

    .line 4575
    :cond_3
    const-string/jumbo v3, "switch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4576
    sput-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 4577
    sput-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 4578
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 4579
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 4580
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 4581
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 4582
    :cond_4
    :goto_1
    const-string/jumbo v3, "special"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4583
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 4584
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 4585
    sput-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    .line 4586
    sput-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 4587
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_WAKE:Z

    goto :goto_2

    .line 4590
    :cond_5
    const-string v3, "Invalid log tag argument! Get detail help as bellow:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4591
    invoke-virtual {p0, p2}, Lcom/android/server/power/PowerManagerService;->logOutPowerManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    .line 4593
    :goto_2
    return v2

    .line 4556
    .end local v0    # "logCategoryTag":Ljava/lang/String;
    .end local v1    # "on":Z
    :cond_6
    return v1
.end method

.method enableExclusiveWakeLocksInternal()V
    .locals 9

    .line 3604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3605
    const/4 v1, 0x0

    .line 3606
    .local v1, "changed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3607
    .local v2, "numWakeLocks":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "changed":Z
    :goto_0
    const/4 v5, 0x1

    if-ge v1, v2, :cond_1

    .line 3608
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3609
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->isExclusiveWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3610
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v5, :cond_0

    .line 3612
    iget-boolean v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-ne v7, v5, :cond_0

    .line 3613
    const/4 v4, 0x1

    .line 3614
    iput-boolean v3, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 3615
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3607
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3620
    .end local v1    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    .line 3621
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3622
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3624
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsExclusiveEnabled:Z

    .line 3625
    .end local v2    # "numWakeLocks":I
    .end local v4    # "changed":Z
    monitor-exit v0

    .line 3626
    return-void

    .line 3625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method finishUidChangesInternal()V
    .locals 3

    .line 3792
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3793
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3794
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_0

    .line 3795
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3796
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 3798
    :cond_0
    monitor-exit v0

    .line 3799
    return-void

    .line 3798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDesiredScreenPolicyLocked()I
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3030
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3034
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3035
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 3036
    return v2

    .line 3038
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    if-eqz v0, :cond_2

    .line 3039
    return v1

    .line 3048
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_3

    .line 3049
    const/4 v0, 0x4

    return v0

    .line 3052
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 3059
    :cond_4
    return v1

    .line 3056
    :cond_5
    :goto_0
    return v3

    .line 3031
    :cond_6
    :goto_1
    return v1
.end method

.method getLastShutdownReasonInternal(Ljava/lang/String;)I
    .locals 9
    .param p1, "lastRebootReasonProperty"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6041
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6042
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6043
    return v1

    .line 6045
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "shutdown,thermal,battery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v8

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "shutdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "shutdown,userrequested"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "reboot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "shutdown,battery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "shutdown,thermal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 6059
    return v1

    .line 6057
    :pswitch_0
    const/4 v1, 0x6

    return v1

    .line 6055
    :pswitch_1
    return v8

    .line 6053
    :pswitch_2
    return v5

    .line 6051
    :pswitch_3
    return v4

    .line 6049
    :pswitch_4
    return v7

    .line 6047
    :pswitch_5
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x7e3d61bf -> :sswitch_5
        -0x418b4b49 -> :sswitch_4
        -0x37ba085b -> :sswitch_3
        -0x32cb60d3 -> :sswitch_2
        -0xa17f9aa -> :sswitch_1
        0x489a31a2 -> :sswitch_0
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

.method handleBlackPackageForAudioLocked()V
    .locals 8

    .line 3680
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3681
    .local v0, "numWakeLocks":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3682
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3683
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3684
    iget-object v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_1

    .line 3685
    iget-object v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 3686
    .local v4, "size":I
    move v5, v1

    .local v5, "k":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 3687
    iget-object v6, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 3688
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->blackPackageForAudio(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3689
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 3690
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->forceStopPackageName(Ljava/lang/String;)Z

    .line 3686
    .end local v6    # "uid":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3681
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "size":I
    .end local v5    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3696
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method isDeviceIdleModeInternal()Z
    .locals 2

    .line 3320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3321
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isExclusiveWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3566
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsExclusiveEnabled:Z

    if-eqz v0, :cond_0

    .line 3567
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3568
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3569
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3570
    const/4 v1, 0x1

    return v1

    .line 3574
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isKillWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3535
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerKillEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3536
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_3

    .line 3537
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3538
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3539
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3540
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enableExclusiveWakeLocksInternal kill "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 3542
    const/4 v1, 0x1

    return v1

    .line 3544
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_3

    .line 3545
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3546
    .local v0, "size":I
    move v2, v1

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3547
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 3548
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 3549
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3550
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKillWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 3551
    .local v5, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3552
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " enableExclusiveWakeLocksInternal forceStopPackageName packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->forceStopPackageName(Ljava/lang/String;)Z

    .line 3554
    return v1

    .line 3546
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3562
    .end local v0    # "size":I
    .end local v2    # "k":I
    :cond_3
    :goto_1
    return v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .locals 2

    .line 3326
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3327
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected logOutPowerManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4597
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4598
    const-string v0, "1 All PowerManagerService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4599
    const-string v0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4600
    const-string v0, "2 All needed log when oem log is on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4601
    const-string v0, "cmd: dumpsys power log switch 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4602
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4603
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4604
    return-void
.end method

.method public monitor()V
    .locals 2

    .line 4534
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4535
    :try_start_0
    monitor-exit v0

    .line 4536
    return-void

    .line 4535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .line 910
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    const/16 v1, 0x258

    if-ne p1, v1, :cond_0

    .line 912
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_1

    .line 936
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 914
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 916
    .local v3, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 919
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mbootScreenState:Z

    .line 921
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 923
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    .line 924
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 926
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 928
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 929
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " delayed runnables"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 931
    .local v6, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    .end local v6    # "r":Ljava/lang/Runnable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 934
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    .line 936
    .end local v3    # "now":J
    :cond_2
    :goto_1
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 901
    const-string/jumbo v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 902
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 904
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 905
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 906
    return-void
.end method

.method setDeepSleepModeInternal(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 3456
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3457
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    if-ne v1, p1, :cond_0

    .line 3458
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3460
    :cond_0
    sput-boolean p1, Lcom/android/server/power/PowerManagerService;->mIsDeepSleep:Z

    .line 3461
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 3462
    const-string v1, "PowerManagerService"

    const-string v2, " updateWakeLockDisabledStateLocked() for deep sleep"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3465
    monitor-exit v0

    .line 3466
    const/4 v0, 0x1

    return v0

    .line 3465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeepSleepWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3742
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3743
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeepSleepWhitelist:[I

    .line 3744
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3745
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3747
    :cond_0
    monitor-exit v0

    .line 3748
    return-void

    .line 3747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleModeInternal(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 3438
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3439
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-ne v1, p1, :cond_0

    .line 3440
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3442
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 3443
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3445
    if-eqz p1, :cond_1

    .line 3446
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3448
    :cond_1
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    .line 3450
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3444
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setDeviceIdleStateInternal(I)V
    .locals 2
    .param p1, "state"    # I

    .line 3632
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3633
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleState:I

    .line 3634
    monitor-exit v0

    .line 3635
    return-void

    .line 3634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleSySWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3751
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3752
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleSySWhitelist:[I

    .line 3753
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3754
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3756
    :cond_0
    monitor-exit v0

    .line 3757
    return-void

    .line 3756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3777
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3778
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3779
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3780
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3782
    :cond_0
    monitor-exit v0

    .line 3783
    return-void

    .line 3782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3768
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3769
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 3770
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3771
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3773
    :cond_0
    monitor-exit v0

    .line 3774
    return-void

    .line 3773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 3654
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3655
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eq v1, p1, :cond_1

    .line 3656
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 3660
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3661
    const-string v1, "PowerManagerService"

    const-string v2, "Enter LightIdle, more aggressive to handle black audio"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleBlackPackageForAudioLocked()V

    .line 3668
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3672
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3674
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 3412
    if-gez p1, :cond_0

    .line 3413
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    return-void

    .line 3416
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3418
    if-nez p1, :cond_1

    .line 3419
    :try_start_0
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_1

    .line 3434
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3420
    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3423
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3424
    .local v1, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v1, :cond_3

    .line 3425
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_1

    .line 3427
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3429
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .end local v1    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    goto :goto_1

    .line 3421
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3432
    :goto_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3433
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3434
    monitor-exit v0

    .line 3435
    return-void

    .line 3434
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPackageNameWithScreenFlagInternal(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .line 3763
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->packagenameFromScreenActivity:Ljava/lang/String;

    .line 3764
    return-void
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .line 3407
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3409
    return-void
.end method

.method setVrModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4457
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    .line 4458
    return-void
.end method

.method setWakeLockRestrictionInternal(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 3641
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3642
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockRestriction:Z

    if-ne v1, p1, :cond_0

    .line 3643
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3646
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockRestriction:Z

    .line 3647
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3648
    monitor-exit v0

    .line 3649
    const/4 v0, 0x1

    return v0

    .line 3648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWakefulnessLocked(II)V
    .locals 1
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1968
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_0

    .line 1969
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1971
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1972
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    .line 1976
    :cond_0
    return-void
.end method

.method startUidChangesInternal()V
    .locals 2

    .line 3786
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3787
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3788
    monitor-exit v0

    .line 3789
    return-void

    .line 3788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 10
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .line 940
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 942
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 943
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 944
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 945
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 946
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 948
    const-class v1, Lcom/android/server/OnePlusPowerController$LocalService;

    .line 949
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusPowerController$LocalService;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    .line 952
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 953
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    sput v2, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 954
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    sput v2, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 955
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 957
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v2, :cond_0

    .line 958
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenBrightnessSettingMinimum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mScreenBrightnessSettingMinimum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mScreenBrightnessSettingDefault = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 967
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 968
    new-instance v3, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v4, "PowerManagerService.Broadcasts"

    .line 969
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 971
    new-instance v3, Lcom/android/server/power/WirelessChargerDetector;

    const-string v4, "PowerManagerService.WirelessChargerDetector"

    .line 972
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 974
    new-instance v3, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 976
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 977
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 980
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    .line 985
    .local v4, "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const-string v6, "PowerManagerService"

    invoke-interface {v5, v4, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    .end local v4    # "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    goto :goto_0

    .line 986
    :catch_0
    move-exception v4

    .line 991
    :goto_0
    :try_start_2
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 992
    const-string v4, "PowerManagerService"

    const-string/jumbo v5, "system ready!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 995
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 996
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 997
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1001
    new-instance v4, Ljava/util/ArrayList;

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x502000a

    .line 1004
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1002
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    .line 1005
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLightIdleBlackList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLightIdleBlackList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->initLongWLBlackMap(Ljava/util/List;)V

    .line 1012
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    .line 1013
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.moblie.bestapps.inlike"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.ifeng.news2"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.tencent.mtt"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.ijinshan.browser_fast"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.netease.cloudmusic"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    const-string v5, "com.taobao.trip"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOemDisableWakeLockPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockPackage:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    .line 1021
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    const-string v5, "com.appboy.push"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOemDisableWakeLockReason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mOemDisableWakeLockReason:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v4, Ljava/util/ArrayList;

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x502000b

    .line 1030
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1028
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    .line 1031
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDozeBlackForAudioList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackForAudioList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v4, Lcom/oneplus/config/ConfigObserver;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v7, Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;

    invoke-direct {v7, p0}, Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;-><init>(Lcom/android/server/power/PowerManagerService;)V

    sget-object v8, Lcom/android/server/power/PowerManagerService;->PACKAGEMANAGERMENT_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 1033
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeBlackConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v4}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 1034
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1036
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "sensorManager":Landroid/hardware/SensorManager;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1039
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1041
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 1042
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/BatterySaverPolicy;->systemReady()V

    .line 1045
    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1048
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1051
    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1054
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1057
    const-string/jumbo v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1060
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1063
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1066
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1069
    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1072
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1075
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1078
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1081
    const-string/jumbo v1, "vrmanager"

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/service/vr/IVrManager;

    .line 1082
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_2

    .line 1084
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1087
    goto :goto_1

    .line 1085
    :catch_1
    move-exception v2

    .line 1086
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register VR mode state listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1092
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1094
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1096
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 1097
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1101
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 1102
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1105
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 1106
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1108
    return-void

    .line 1036
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method uidActiveInternal(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3848
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3850
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_0

    .line 3851
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3852
    const/16 v2, 0x12

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3853
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3855
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3856
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_1

    .line 3857
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3859
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_1
    monitor-exit v0

    .line 3860
    return-void

    .line 3859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidGoneInternal(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 3833
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3834
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3835
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 3836
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3837
    .local v2, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const/16 v3, 0x13

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3838
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3839
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3840
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v3, :cond_0

    .line 3841
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3844
    .end local v1    # "index":I
    .end local v2    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_0
    monitor-exit v0

    .line 3845
    return-void

    .line 3844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidIdleInternal(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3863
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3865
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-eqz v1, :cond_0

    .line 3866
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3867
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_0

    .line 3868
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3871
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_0
    monitor-exit v0

    .line 3872
    return-void

    .line 3871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 3
    .param p1, "displayPowerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3399
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 3401
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    .line 3400
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 3402
    .local v0, "state":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3403
    iget v1, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 3404
    return-void
.end method

.method updateUidProcStateInternal(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 3810
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3811
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3812
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_0

    .line 3813
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3814
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3816
    :cond_0
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-gt v2, v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3818
    .local v2, "oldShouldAllow":Z
    :goto_0
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3819
    iget v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v6, :cond_4

    .line 3820
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_2

    .line 3821
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_1

    .line 3822
    :cond_2
    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_4

    if-gt p2, v5, :cond_3

    move v3, v4

    nop

    :cond_3
    if-eq v2, v3, :cond_4

    .line 3826
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3829
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v2    # "oldShouldAllow":Z
    :cond_4
    :goto_1
    monitor-exit v0

    .line 3830
    return-void

    .line 3829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
