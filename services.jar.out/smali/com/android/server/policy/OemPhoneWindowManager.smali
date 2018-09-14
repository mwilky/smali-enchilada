.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;,
        Lcom/android/server/policy/OemPhoneWindowManager$KillApp;
    }
.end annotation


# static fields
.field mKillProcess:Ljava/lang/Runnable;

.field mKHandler:Landroid/os/Handler;

.field private static final ACTION_DISABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_ENABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final ENG_RESULT_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/ENG_RESULT"

.field private static final HAS_HW_KEYS:Z

.field static final IS_QUICK_PAY_ENABLED:Z

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xd

.field private static final KEY_ACTION_END:I = 0xc

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xc

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_QUICK_PAY:I = 0xb

.field private static final KEY_ACTION_SPLIT_SCREEN:I = 0xa

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field private static final KEY_DISABLE_NODE:Ljava/lang/String; = "/proc/touchpanel/key_disable"

.field private static final KEY_DISABLE_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_disable"

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final KEY_SWITCH_NODE:Ljava/lang/String; = "/proc/touchpanel/key_switch"

.field private static final KEY_SWITCH_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_rep"

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field static final MSG_CONTROL_MISSTOUCH:I = 0x1

.field static final MSG_RECORD_POWER_KEY:I = 0x2

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

.field static final RECORD_POWER_KEY_DELAY:I = 0x1388

.field static final SOURCE_OEM:I = 0x10000000

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field private static final VOLUME_UP_DOUBLE_TAP_INTERVAL:J = 0x12cL

.field private static mBackKeyPressedTime:J

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field private static mKeyBlocked:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field private static mLockTaskModeEnabled:Z

.field private static mUnpingCombineKeyPressedTime:J

.field private static sEnableSoftwareKeys:Z


# instance fields
.field private INCALL_ACTIVITY:Ljava/lang/String;

.field private PKG_H2_LAUNCHER:Ljava/lang/String;

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field final mBgHandler:Landroid/os/Handler;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEnableThreePointersScreenShot:Z

.field mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

.field mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

.field mFloatingButton:Landroid/widget/ImageButton;

.field mFloatingButtonBG:Landroid/widget/ImageView;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field mLock:Ljava/lang/Object;

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureRegistered:Z

.field mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field volatile mPowerKeyLongPressHandled:Z

.field mPowerOffReceiver:Landroid/content/BroadcastReceiver;

.field mQuickPayAlertDialog:Landroid/app/AlertDialog;

.field mQuickPayBtnLaunched:Z

.field mQuickPayBtnView:Landroid/view/View;

.field mQuickPayBtnX:I

.field mQuickPayBtnY:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mQuickPayDefault:I

.field mQuickPayEnabled:Z

.field mQuickPayFocusWin:Ljava/lang/String;

.field mQuickPayFocusWinPid:I

.field mQuickPayMaxWaitTime:J

.field mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field mShuttingDown:Z

.field private mThreePointerGestureRegisterd:Z

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mTraceVolumeUpKeyTime:J

.field private mUnpinRunnable:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 145
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 146
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 147
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 223
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 224
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 225
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 239
    const-string v0, "1"

    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    .line 309
    const-string v0, "QuickPay_APPS_Config"

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 240
    const-string v2, "com.android.incallui.InCallActivity"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 241
    const-string/jumbo v2, "net.oneplus.h2launcher"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 264
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 265
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 287
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 289
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 290
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 294
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 307
    new-instance v0, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 332
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    .line 470
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    .line 2019
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    .line 2033
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2042
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2051
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$9;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3082
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$12;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;
    
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KillApp;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$KillApp;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKillProcess:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 142
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .line 142
    const v0, 0x0 # long press
    
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getProductLineTestFlag()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;IB)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # B

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlagExtraByte(IB)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 142
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bArray"    # [B

    .line 723
    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 728
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 729
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "sTemp":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v1    # "i":I
    .end local v2    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 724
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private collapsePanels()V
    .locals 4

    .line 2201
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2202
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ collapsePanels() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    .line 2206
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2210
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    goto :goto_0

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collapse notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private disableQuickPayButton()V
    .locals 2

    .line 2839
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2840
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2841
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2842
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2844
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 2846
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2847
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2849
    :cond_3
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "QuickPay: Ball disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    return-void
.end method

.method private enableQuickPayButton()V
    .locals 8

    .line 2665
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2666
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2668
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2669
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x509000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 2671
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    .line 2673
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    .line 2676
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2677
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x128

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2681
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2683
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "QuickPayBall"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2684
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2685
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030004

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2686
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2687
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x505001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2689
    .local v1, "margin":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5060044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2691
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2692
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2694
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2698
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2699
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 2695
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2696
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2702
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$10;

    invoke-direct {v4, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$10;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2834
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2835
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Ball enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "margin":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method private expandNotificationsPanel()V
    .locals 4

    .line 2185
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2186
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ expandNotificationPanel() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    .line 2190
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2194
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    goto :goto_0

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to expand notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2646
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2645
    return-object v0

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: getApplicationIcon failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2650
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAvailablePayApps()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation

    .line 2621
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 2623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2624
    .local v0, "dialoglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2625
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2626
    .local v3, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2627
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 2630
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 2631
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2632
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 2633
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2635
    .local v5, "iconSize":I
    invoke-virtual {v4, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2636
    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2624
    .end local v3    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconSize":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2641
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2377
    const-string v0, "com.android.systemui"

    .line 2378
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2379
    .local v1, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2380
    .local v2, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x2

    .line 2381
    .local v3, "flags":I
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 2383
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2384
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2385
    .local v6, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 2386
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2388
    :cond_0
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2389
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.systemui"

    .line 2390
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2391
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v8

    .line 2383
    .end local v6    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2395
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method private getProductLineTestFlag()[B
    .locals 6

    .line 580
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 581
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 583
    .local v1, "result_file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 588
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 591
    const/4 v0, 0x0

    .line 591
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 584
    :catch_1
    move-exception v2

    .line 585
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v1, 0x0

    .line 587
    const/4 v0, 0x0

    .line 592
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 594
    :goto_1
    if-eqz v1, :cond_0

    .line 596
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 603
    :catch_2
    move-exception v2

    .line 604
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 601
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 597
    :catch_3
    move-exception v2

    .line 598
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    const/4 v0, 0x0

    .line 602
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 605
    :goto_2
    goto :goto_6

    .line 603
    :catch_4
    move-exception v2

    .line 604
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 601
    :goto_4
    nop

    .line 602
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 605
    goto :goto_5

    .line 603
    :catch_5
    move-exception v3

    .line 604
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OemPhoneWindowManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    throw v2

    .line 608
    :cond_0
    :goto_6
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProductLineTestFlag result[] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 2852
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 2854
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 2856
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hasInComingCall()Z
    .locals 4

    .line 2455
    const/4 v0, 0x0

    .line 2457
    .local v0, "inCallFocused":Z
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 2458
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2459
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2460
    const/4 v0, 0x1

    .line 2464
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v0
.end method

.method private ignoreKeyCustomization()Z
    .locals 2

    .line 2076
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2654
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2655
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2656
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 2657
    const/4 v0, 0x1

    return v0

    .line 2660
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 2659
    :catch_0
    move-exception v1

    .line 2661
    :goto_0
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    return v0
.end method

.method private isRecentKeyVisible()Z
    .locals 3

    .line 2468
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "swipe_up_to_switch_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 2470
    .local v0, "recentVisible":Z
    return v0
.end method

.method private launchCameraAction()V
    .locals 2

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 2334
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2336
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 2337
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .line 2415
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2416
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2418
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2421
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2422
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2423
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;Z)V
    .locals 8
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "longpress" #Z

    .line 2080
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 2081
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 2084
    .local v1, "userSetupComplete":Z
    const/4 v2, 0x4

    const/16 v3, 0xd

    if-nez v1, :cond_1

    .line 2085
    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2088
    nop

    .line 2092
    :goto_0
    return-void

    .line 2097
    :cond_1
    const/4 v4, 0x1

    if-eq p1, v3, :cond_2

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 2100
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2101
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2102
    const-string v2, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring key customization: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; there\'s a ringing incoming call."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return-void
    
    :pswitch_kill
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->killApp()V

    goto :goto_3
    
    :pswitch_customapp
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0
    
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->customApp(IZ)V

    goto :goto_3
    
    :pswitch_screenshot
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->takeFullScreenshot()V

    goto :goto_3
    
    :pswitch_screenshotc
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->takeCroppedScreenshot()V

    goto :goto_3
    
    :pswitch_lastapp
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_3

    .line 2109
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 2111
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2112
    goto/16 :goto_3

    .line 2114
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    .line 2115
    goto/16 :goto_3

    .line 2163
    :pswitch_2
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_6

    .line 2164
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2165
    .local v2, "keyCode":I
    const-string v3, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: KEY_ACTION_QUICK_PAY code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const/16 v3, 0x84

    if-eq v2, v3, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2167
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2168
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Keyguard is showing, skip to start QuickPay."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    return-void

    .line 2171
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2173
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2175
    const/4 v7, 0x0

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v7

    .line 2173
    :goto_1
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2175
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2176
    .end local v2    # "keyCode":I
    goto :goto_3

    .line 2156
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleSplitScreen()V

    .line 2157
    goto :goto_3

    .line 2142
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    .line 2143
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2144
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2147
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_2

    .line 2151
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    .line 2153
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    goto :goto_3

    .line 2139
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    .line 2140
    goto :goto_3

    .line 2136
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    .line 2137
    goto :goto_3

    .line 2133
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchVoiceAssistAction()V

    .line 2134
    goto :goto_3

    .line 2129
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    .line 2130
    goto :goto_3

    .line 2126
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    .line 2127
    goto :goto_3

    .line 2123
    :pswitch_a
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2124
    goto :goto_3

    .line 2120
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    .line 2121
    goto :goto_3

    .line 2117
    :pswitch_c
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2118
    goto :goto_3

    .line 2159
    :pswitch_d
    nop

    .line 2182
    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_kill
        :pswitch_screenshot
        :pswitch_screenshotc
        :pswitch_customapp
        :pswitch_lastapp
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .locals 3

    .line 2407
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2408
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2411
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 12

    .line 2228
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2231
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2233
    .local v1, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v2, "key_home_long_press_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2236
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e003c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2244
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v5, "key_home_double_tap_action"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2247
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2255
    .local v5, "defaultLongPressOnMenuBehavior":I
    const-string/jumbo v6, "key_menu_long_press_action"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2258
    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2266
    .local v6, "defaultDoubleTapOnMenuBehavior":I
    const-string/jumbo v7, "key_menu_double_tap_action"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 2269
    :cond_7
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5080008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2277
    .local v7, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v8, "key_back_long_press_action"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2280
    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2288
    .local v8, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v9, "key_back_double_tap_action"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 2291
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5080007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2299
    .local v9, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v10, "key_app_switch_long_press_action"

    invoke-static {v0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2302
    :cond_d
    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2310
    .local v10, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v11, "key_app_switch_double_tap_action"

    invoke-static {v0, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 2313
    :cond_f
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 2400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2401
    .local v0, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2402
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2403
    .local v2, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 2903
    if-nez p1, :cond_0

    .line 2904
    return-void

    .line 2907
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2907
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2908
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2909
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2910
    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 2911
    :cond_1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2912
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 2913
    :cond_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2914
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 2915
    :cond_3
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2916
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 2917
    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_paytm_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2918
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 2907
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2921
    .end local v1    # "index":I
    :cond_6
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2924
    :catch_0
    move-exception v0

    .line 2925
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 2922
    :catch_1
    move-exception v0

    .line 2923
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 2927
    :goto_3
    return-void
.end method

.method private setProductLineTestFlag([B)Z
    .locals 8
    .param p1, "data"    # [B

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 615
    .local v1, "needChmod":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, "ENG_RESULT_FILE":Ljava/io/File;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProductLineTestFlag data[] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-eqz p1, :cond_4

    array-length v3, p1

    const/16 v4, 0x80

    if-eq v3, v4, :cond_0

    goto/16 :goto_7

    .line 621
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    const/4 v1, 0x1

    .line 624
    :cond_1
    const/4 v3, 0x0

    .line 626
    .local v3, "result_file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v6, "rws"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 631
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v3, 0x0

    .line 634
    const/4 v0, 0x0

    .line 634
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 627
    :catch_1
    move-exception v4

    .line 628
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v3, 0x0

    .line 630
    const/4 v0, 0x0

    .line 635
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 637
    :goto_1
    if-eqz v3, :cond_2

    .line 639
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    const/4 v0, 0x1

    .line 646
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 650
    :goto_2
    goto :goto_6

    .line 647
    :catch_2
    move-exception v4

    .line 648
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 651
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 645
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 641
    :catch_3
    move-exception v4

    .line 642
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    const/4 v0, 0x0

    .line 646
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 647
    :catch_4
    move-exception v4

    .line 648
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 645
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 646
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 650
    goto :goto_5

    .line 647
    :catch_5
    move-exception v5

    .line 648
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OemPhoneWindowManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 650
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    throw v4

    .line 654
    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 656
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReadable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_3
    return v0

    .line 618
    .end local v3    # "result_file":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_7
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "data is invalid!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v0
.end method

.method private setProductLineTestFlagExtraByte(IB)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "ret":Z
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProductLineTestFlag index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "ENG_RESULT_FILE":Ljava/io/File;
    if-ltz p1, :cond_4

    const/16 v2, 0x80

    if-lt p1, v2, :cond_0

    goto/16 :goto_9

    .line 671
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 673
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .local v3, "filedir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 675
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 676
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v3    # "filedir":Ljava/io/File;
    goto :goto_0

    .line 679
    :catch_0
    move-exception v3

    .line 680
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 680
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 677
    :catch_1
    move-exception v3

    .line 678
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 681
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 682
    :goto_1
    new-array v2, v2, [B

    .line 683
    .local v2, "data":[B
    aput-byte p2, v2, p1

    .line 684
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlag([B)Z

    move-result v3

    return v3

    .line 686
    .end local v2    # "data":[B
    :cond_2
    const/4 v2, 0x0

    .line 688
    .local v2, "result_file":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    goto :goto_2

    .line 693
    :catch_2
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v2, 0x0

    .line 696
    const/4 v0, 0x0

    .line 696
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3

    .line 689
    :catch_3
    move-exception v3

    .line 690
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte FileNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v2, 0x0

    .line 692
    const/4 v0, 0x0

    .line 697
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 699
    :goto_3
    if-eqz v2, :cond_3

    .line 701
    int-to-long v3, p1

    :try_start_2
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 702
    invoke-virtual {v2, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    const/4 v0, 0x1

    .line 709
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 715
    :goto_4
    goto :goto_8

    .line 710
    :catch_4
    move-exception v3

    .line 711
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 711
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x0

    .line 716
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 708
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 704
    :catch_5
    move-exception v3

    .line 705
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 706
    const/4 v0, 0x0

    .line 709
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 710
    :catch_6
    move-exception v3

    .line 711
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 708
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    nop

    .line 709
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 715
    goto :goto_7

    .line 710
    :catch_7
    move-exception v4

    .line 711
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 711
    const-string v6, "OemPhoneWindowManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x0

    .line 715
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    throw v3

    .line 719
    :cond_3
    :goto_8
    return v0

    .line 668
    .end local v2    # "result_file":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_9
    const-string v2, "OemPhoneWindowManager"

    const-string/jumbo v3, "index is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return v0
.end method

.method private startQuickPay(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .line 2558
    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    .line 2561
    :cond_1
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v0, :cond_2

    return-void

    .line 2562
    :cond_2
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 2563
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: startQuickPay which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 2565
    .local v0, "pkgOK":Z
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2566
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2567
    if-eq p1, v2, :cond_3

    .line 2568
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2569
    .local v3, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-boolean v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2570
    move p1, v2

    .line 2571
    const/4 v0, 0x1

    .line 2572
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: startQuickPay new which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    goto :goto_1

    .line 2566
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2578
    .end local v2    # "i":I
    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    .line 2579
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2581
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 2583
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 2587
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2588
    .local v2, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    if-eqz p2, :cond_5

    .line 2590
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 2591
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 2593
    :cond_5
    const/4 v1, 0x0

    .line 2594
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    const v4, 0x10008000

    if-eqz v3, :cond_6

    .line 2595
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2596
    const-string v3, "com.oneplus.quickpay"

    const-string v5, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2598
    const-string v3, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2599
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2600
    :cond_6
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 2601
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2602
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2604
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2605
    :cond_7
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2606
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 2608
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2609
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2611
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_8
    :goto_2
    goto :goto_3

    .line 2612
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x50c0068

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2613
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2614
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "QuickPay: startQuickPay have no installed app."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2618
    .end local v0    # "pkgOK":Z
    :goto_3
    goto :goto_4

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: startQuickPay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2341
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2342
    :catch_0
    move-exception v0

    .line 2343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 2351
    .local v0, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2352
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2355
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 2356
    const/4 v3, 0x0

    return v3

    .line 2361
    :cond_0
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_1

    .line 2362
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v2, v3, v5}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 2363
    return v4

    .line 2366
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2367
    const-string v3, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switching to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_2
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v6, 0x2

    invoke-interface {v2, v3, v6, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 2372
    return v4
.end method

.method private toggleSplitScreen()V
    .locals 3

    .line 2218
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2220
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 2221
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    goto :goto_0

    .line 2223
    :cond_0
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Failed to get StatusBarManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :goto_0
    return-void
.end method

.method private triggerVirtualKeypress(I)V
    .locals 17
    .param p1, "keyCode"    # I

    .line 2320
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2321
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2323
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const v13, 0x10000101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2326
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 2328
    .local v2, "upEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2329
    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2330
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1631
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1638
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1643
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_1

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandScreenDecor()V

    .line 1648
    :cond_1
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1612
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1617
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton;->navigationBarPosition(III)V

    .line 1623
    :cond_0
    return-void
.end method

.method public clearQuickPaySwitch(Z)V
    .locals 2
    .param p1, "clearWhich"    # Z

    .line 2860
    if-eqz p1, :cond_0

    .line 2861
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2863
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 2864
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 2865
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2867
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 2869
    return-void
.end method

.method expandScreenDecor()V
    .locals 7

    .line 3034
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_5

    .line 3037
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3038
    .local v0, "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3039
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3041
    :cond_0
    if-eqz v0, :cond_5

    .line 3043
    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3045
    .local v1, "isGestureNeedRecoverAnim":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    if-nez v4, :cond_3

    if-nez v1, :cond_2

    .line 3046
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3047
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    .line 3048
    .local v2, "isExpand":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-boolean v4, v4, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eq v4, v2, :cond_5

    .line 3049
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 3050
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expandScreenDecor to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ignore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " topDocked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " topFull="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isGestureNeedRecoverAnim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLimited="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLetterboxed="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3050
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/ScreenDecor;->expandScreenDecor(Z)V

    .line 3062
    .end local v0    # "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .end local v1    # "isGestureNeedRecoverAnim":Z
    .end local v2    # "isExpand":Z
    :cond_5
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 7
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1727
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 1728
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1729
    .local v0, "winTitle":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1730
    .local v1, "isPayApp":Z
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1731
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_1

    .line 1732
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d8

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1733
    .local v3, "isFocusChanged":Z
    :goto_1
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: focusChangedLw mQuickPayFocusWin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " lastFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isFocusChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayFocusWinPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    if-eqz v1, :cond_6

    .line 1738
    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-nez v4, :cond_2

    .line 1739
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    goto :goto_2

    .line 1741
    :cond_2
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v4

    .line 1742
    .local v4, "pid":I
    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-eq v5, v4, :cond_3

    .line 1743
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1745
    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1747
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1748
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 1747
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1749
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 1750
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1751
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v6, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v6, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1763
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pid":I
    :cond_3
    :goto_2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1764
    .local v2, "newFocusWin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    if-eq v4, v2, :cond_5

    .line 1765
    :cond_4
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1766
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1768
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1770
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1772
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    .line 1770
    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1772
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1774
    .end local v2    # "newFocusWin":Ljava/lang/String;
    :cond_5
    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_7

    .line 1775
    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1784
    .end local v0    # "winTitle":Ljava/lang/String;
    .end local v1    # "isPayApp":Z
    .end local v3    # "isFocusChanged":Z
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_8

    .line 1785
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1789
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    return v0
.end method

.method protected getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1847
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1848
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 1849
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v2, ""

    return-object v2

    .line 1852
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1853
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 1854
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const-string v3, ""

    return-object v3

    .line 1857
    :cond_1
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    return-object v3
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 352
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 353
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 354
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 358
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    new-instance v2, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 360
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    .end local v1    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, "engineermodeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v2, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v2, :cond_1

    .line 379
    new-instance v2, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    .line 392
    new-array v2, v0, [I

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "ThreePointersThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 396
    new-instance v4, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 398
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 399
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 407
    .end local v2    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_9

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x502001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 412
    move v4, v3

    .line 412
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 413
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 414
    .local v5, "config":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_7

    .line 416
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 417
    .local v7, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iput v4, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    .line 418
    aget-object v8, v6, v3

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 419
    aget-object v8, v6, v0

    const-string/jumbo v9, "sdk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 420
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 421
    :cond_3
    aget-object v8, v6, v0

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 424
    :cond_4
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 427
    :goto_1
    const-string v8, "default"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 428
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 430
    :cond_5
    const-string v8, "class"

    const/4 v9, 0x3

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 431
    aget-object v8, v6, v9

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 433
    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    .end local v4    # "i":I
    :cond_8
    new-instance v4, Lcom/oneplus/config/ConfigObserver;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 439
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v4}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 440
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 448
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_a

    .line 449
    new-instance v2, Lcom/android/server/policy/OemGestureButton;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 450
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 451
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 459
    :cond_a
    new-array v0, v0, [I

    const/16 v2, 0x49

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_b
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 37
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 988
    .local v2, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 989
    .local v3, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 990
    .local v4, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v5

    .line 991
    .local v5, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 992
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 993
    .local v9, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    .line 994
    .local v10, "canceled":Z
    and-int/lit16 v11, v2, 0x80

    if-eqz v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 995
    .local v11, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 996
    .local v12, "isFromNavbar":Z
    :goto_3
    const/high16 v13, 0x20000000

    and-int v13, p3, v13

    if-eqz v13, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 997
    .local v13, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    const/4 v8, -0x1

    if-ne v15, v8, :cond_5

    move v8, v7

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 998
    .local v8, "virtualKey":Z
    :goto_5
    const/4 v15, 0x4

    if-ne v3, v15, :cond_6

    move v15, v7

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    .line 999
    .local v15, "backKeyCode":Z
    :goto_6
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    .line 1000
    .local v18, "homeKeyCode":Z
    :goto_7
    const/16 v7, 0xbb

    if-ne v3, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    .line 1001
    .local v7, "switchKeyCode":Z
    :goto_8
    move/from16 v19, v2

    const/16 v2, 0x1a

    .line 1001
    .end local v2    # "flags":I
    .local v19, "flags":I
    if-ne v3, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    .line 1002
    .local v2, "powerKeyCode":Z
    :goto_9
    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    goto :goto_a

    :cond_a
    const/16 v20, 0x0

    :goto_a
    move-object/from16 v21, v20

    .line 1003
    .local v21, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v14, v21

    if-eqz v14, :cond_b

    .line 1003
    .end local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    move/from16 v22, v12

    iget v12, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1003
    .end local v12    # "isFromNavbar":Z
    .local v22, "isFromNavbar":Z
    goto :goto_b

    .line 1003
    .end local v22    # "isFromNavbar":Z
    .restart local v12    # "isFromNavbar":Z
    :cond_b
    move/from16 v22, v12

    .line 1003
    .end local v12    # "isFromNavbar":Z
    .restart local v22    # "isFromNavbar":Z
    const/4 v12, 0x0

    .line 1004
    .local v12, "type":I
    :goto_b
    move/from16 v23, v8

    const/16 v8, 0x18

    .line 1004
    .end local v8    # "virtualKey":Z
    .local v23, "virtualKey":Z
    if-ne v3, v8, :cond_c

    const/4 v8, 0x1

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    .line 1006
    .local v8, "volumeUpKey":Z
    :goto_c
    sget-boolean v20, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v20, :cond_d

    .line 1007
    move/from16 v24, v3

    const-string v3, "OemPhoneWindowManager"

    .line 1007
    .end local v3    # "keyCode":I
    .local v24, "keyCode":I
    move/from16 v25, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .line 1007
    .end local v8    # "volumeUpKey":Z
    .local v25, "volumeUpKey":Z
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v10

    const-string v10, " ++++++++++ interceptKeyBeforeDispatching "

    .line 1007
    .end local v10    # "canceled":Z
    .local v26, "canceled":Z
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", interactive = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1012
    .end local v24    # "keyCode":I
    .end local v25    # "volumeUpKey":Z
    .end local v26    # "canceled":Z
    .restart local v3    # "keyCode":I
    .restart local v8    # "volumeUpKey":Z
    .restart local v10    # "canceled":Z
    :cond_d
    move/from16 v24, v3

    move/from16 v25, v8

    move/from16 v26, v10

    .line 1012
    .end local v3    # "keyCode":I
    .end local v8    # "volumeUpKey":Z
    .end local v10    # "canceled":Z
    .restart local v24    # "keyCode":I
    .restart local v25    # "volumeUpKey":Z
    .restart local v26    # "canceled":Z
    :goto_d
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/16 v3, 0xb

    const/4 v10, 0x0

    aput v3, v8, v10

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const-wide/16 v20, 0x0

    if-eqz v3, :cond_11

    .line 1013
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v8}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/4 v8, 0x3

    if-eq v3, v8, :cond_e

    goto :goto_e

    .line 1020
    :cond_e
    if-nez v18, :cond_f

    if-nez v15, :cond_f

    if-nez v7, :cond_f

    if-eqz v2, :cond_11

    .line 1021
    :cond_f
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_10

    .line 1022
    const-string v3, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_10
    return-wide v20

    .line 1033
    :cond_11
    :goto_e
    const-wide/16 v27, -0x1

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1034
    return-wide v27

    .line 1038
    :cond_12
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    move/from16 v29, v11

    .line 1038
    .end local v11    # "longPress":Z
    .local v29, "longPress":Z
    if-eqz v3, :cond_1d

    .line 1039
    if-eqz v6, :cond_19

    .line 1041
    if-lez v4, :cond_13

    .line 1042
    return-wide v27

    .line 1045
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v30

    .line 1047
    .local v30, "time":J
    if-eqz v15, :cond_14

    if-nez v4, :cond_14

    .line 1048
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    .line 1049
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1052
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1053
    if-eqz v7, :cond_16

    if-nez v4, :cond_16

    .line 1054
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1055
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_f

    .line 1058
    :cond_15
    const/4 v3, 0x1

    if-eqz v18, :cond_16

    if-nez v4, :cond_16

    .line 1059
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1060
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1064
    :cond_16
    :goto_f
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-eqz v3, :cond_18

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-eqz v3, :cond_18

    goto :goto_10

    :cond_17
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    if-eqz v3, :cond_18

    :goto_10
    sget-wide v32, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    sget-wide v34, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    sub-long v10, v32, v34

    .line 1066
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v32, 0xc8

    cmp-long v3, v10, v32

    if-gez v3, :cond_18

    .line 1067
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v8, v10, v11}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1068
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1070
    .end local v30    # "time":J
    :cond_18
    goto :goto_12

    .line 1071
    :cond_19
    if-eqz v15, :cond_1a

    .line 1072
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_11

    .line 1073
    :cond_1a
    const/4 v3, 0x0

    if-eqz v7, :cond_1b

    .line 1074
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_11

    .line 1075
    :cond_1b
    if-eqz v18, :cond_1c

    .line 1076
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1079
    :cond_1c
    :goto_11
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1080
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    goto :goto_13

    .line 1084
    :cond_1d
    :goto_12
    const/4 v3, 0x0

    :goto_13
    sget-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    if-eqz v8, :cond_22

    .line 1085
    if-eqz v9, :cond_20

    .line 1086
    if-eqz v15, :cond_1e

    .line 1087
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_14

    .line 1088
    :cond_1e
    if-eqz v7, :cond_1f

    .line 1089
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1092
    :cond_1f
    :goto_14
    iget-boolean v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-nez v8, :cond_20

    iget-boolean v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-nez v8, :cond_20

    .line 1093
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1096
    :cond_20
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_21

    .line 1097
    const-string v3, "OemPhoneWindowManager"

    const-string/jumbo v8, "key event is canceled because it is blocked because of screen pin. "

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_21
    return-wide v27

    .line 1102
    :cond_22
    const/16 v3, 0x7d9

    if-eqz v18, :cond_33

    .line 1103
    if-eqz v6, :cond_2c

    .line 1104
    if-eqz v14, :cond_28

    .line 1105
    if-eq v12, v3, :cond_26

    iget v3, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_23

    .line 1108
    move/from16 v36, v2

    goto :goto_17

    .line 1113
    :cond_23
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v3, v3

    .line 1114
    .local v3, "typeCount":I
    const/4 v8, 0x0

    .line 1114
    .local v8, "i":I
    :goto_15
    if-ge v8, v3, :cond_28

    .line 1115
    sget-object v10, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v10, v10, v8

    if-ne v12, v10, :cond_25

    .line 1117
    sget-boolean v10, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v10, :cond_24

    .line 1118
    const-string v10, "OemPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    const-string v2, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    .line 1118
    .end local v2    # "powerKeyCode":Z
    .local v36, "powerKeyCode":Z
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1120
    .end local v36    # "powerKeyCode":Z
    .restart local v2    # "powerKeyCode":Z
    :cond_24
    move/from16 v36, v2

    .line 1120
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    :goto_16
    return-wide v27

    .line 1114
    .end local v36    # "powerKeyCode":Z
    .restart local v2    # "powerKeyCode":Z
    :cond_25
    move/from16 v36, v2

    .line 1114
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 1108
    .end local v3    # "typeCount":I
    .end local v8    # "i":I
    .end local v36    # "powerKeyCode":Z
    .restart local v2    # "powerKeyCode":Z
    :cond_26
    move/from16 v36, v2

    .line 1108
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    :goto_17
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_27

    .line 1109
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_27
    return-wide v20

    .line 1125
    .end local v36    # "powerKeyCode":Z
    .restart local v2    # "powerKeyCode":Z
    :cond_28
    move/from16 v36, v2

    .line 1125
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    if-nez v4, :cond_29

    .line 1126
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1127
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1128
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    if-eqz v3, :cond_2b

    .line 1129
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1130
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1131
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1132
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    
    const v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    goto :goto_18

    .line 1134
    :cond_29
    if-eqz v29, :cond_2b

    .line 1135
    if-nez v5, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-nez v2, :cond_2b

    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_2b

    .line 1137
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v2, :cond_2b

    .line 1138
    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1139
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1140
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1141
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I
    
    const v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1184
    :cond_2b
    :goto_18
    return-wide v27

    .line 1145
    .end local v36    # "powerKeyCode":Z
    .restart local v2    # "powerKeyCode":Z
    :cond_2c
    move/from16 v36, v2

    .line 1145
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1146
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-eqz v3, :cond_2d

    .line 1147
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1148
    return-wide v27

    .line 1151
    :cond_2d
    if-eqz v26, :cond_2f

    .line 1152
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 1153
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "Ignoring HOME; event canceled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_2e
    return-wide v27

    .line 1162
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 1163
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1165
    const-string v3, "OemPhoneWindowManager"

    const-string v8, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-wide v27

    .line 1172
    :cond_30
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v3, :cond_32

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-eqz v3, :cond_31

    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v3, :cond_32

    .line 1174
    :cond_31
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1175
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1176
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v3, v8, v10, v11}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1178
    return-wide v27

    .line 1181
    :cond_32
    const/16 v3, 0xc

    const/4 v8, 0x0

    invoke-direct {v0, v3, v8, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1182
    return-wide v27

    .line 1185
    .end local v36    # "powerKeyCode":Z
    .local v2, "powerKeyCode":Z
    :cond_33
    move/from16 v36, v2

    .line 1185
    .end local v2    # "powerKeyCode":Z
    .restart local v36    # "powerKeyCode":Z
    if-eqz v15, :cond_3f

    .line 1186
    if-eqz v23, :cond_35

    if-nez v22, :cond_35

    .line 1187
    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v2, :cond_34

    .line 1188
    return-wide v27

    .line 1191
    :cond_34
    return-wide v20

    .line 1196
    :cond_35
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-nez v2, :cond_36

    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-nez v2, :cond_36

    .line 1198
    return-wide v20

    .line 1201
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1202
    return-wide v20

    .line 1205
    :cond_37
    if-eqz v6, :cond_3a

    .line 1206
    if-nez v4, :cond_38

    .line 1207
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1208
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    if-eqz v3, :cond_39

    .line 1209
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1210
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1211
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1212
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I
    
    const v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    goto :goto_19

    .line 1214
    :cond_38
    if-eqz v29, :cond_39

    .line 1215
    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-nez v2, :cond_39

    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v2, :cond_39

    .line 1216
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1217
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1218
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1219
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1220
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I
    
    const v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1249
    :cond_39
    :goto_19
    return-wide v27

    .line 1224
    :cond_3a
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1225
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v3, :cond_3b

    .line 1226
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1227
    return-wide v27

    .line 1230
    :cond_3b
    if-eqz v26, :cond_3d

    .line 1231
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_3c

    .line 1232
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "Ignoring BACK; event canceled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_3c
    return-wide v27

    .line 1238
    :cond_3d
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-eqz v2, :cond_3e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1239
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1240
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1241
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1243
    return-wide v27

    .line 1246
    :cond_3e
    const/16 v2, 0xd
    
    const v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1247
    return-wide v27

    .line 1250
    :cond_3f
    if-eqz v7, :cond_4b

    .line 1251
    if-eqz v14, :cond_42

    .line 1252
    if-eq v12, v3, :cond_40

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_42

    .line 1255
    :cond_40
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_41

    .line 1256
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_41
    return-wide v27

    .line 1263
    :cond_42
    if-eqz v6, :cond_45

    .line 1264
    if-nez v4, :cond_43

    .line 1265
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1266
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1267
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    if-eqz v3, :cond_44

    .line 1268
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1269
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1270
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1271
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I
    
    const v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    goto :goto_1a

    .line 1273
    :cond_43
    if-eqz v29, :cond_44

    .line 1274
    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v2, :cond_44

    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-eqz v2, :cond_44

    .line 1275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_44

    .line 1276
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1277
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1278
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1279
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I
    
    const v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1317
    :cond_44
    :goto_1a
    return-wide v27

    .line 1283
    :cond_45
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1284
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v3, :cond_46

    .line 1285
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1286
    return-wide v27

    .line 1289
    :cond_46
    if-eqz v26, :cond_48

    .line 1290
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 1291
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "Ignoring APP_SWITCH; event canceled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_47
    return-wide v27

    .line 1297
    :cond_48
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-eqz v2, :cond_49

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_49

    .line 1298
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1299
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1300
    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    return-wide v27

    .line 1307
    :cond_49
    iget v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1308
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1309
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1310
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1312
    :cond_4a
    const/4 v2, 0x2

    const v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 1315
    :goto_1b
    return-wide v27

    .line 1318
    :cond_4b
    if-eqz v25, :cond_4d

    .line 1321
    if-eqz v9, :cond_4d

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1323
    .local v2, "now":J
    iget-wide v10, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    const-wide/16 v16, 0x12c

    add-long v10, v10, v16

    cmp-long v8, v2, v10

    if-gez v8, :cond_4c

    .line 1324
    const-string v8, "OemPhoneWindowManager"

    const-string/jumbo v10, "volume key trigger trace"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1326
    .local v8, "intent":Landroid/content/Intent;
    const-string v10, "com.android.traceur.HOTKEY"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v10, "com.android.traceur"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    iget-object v10, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1330
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4c
    iput-wide v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    .line 1337
    .end local v2    # "now":J
    :cond_4d
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 22
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    .line 740
    .local v3, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 741
    .local v4, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    .line 742
    .local v5, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 743
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 744
    .local v9, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 745
    .local v10, "isFromNavbar":Z
    :goto_2
    const/high16 v11, 0x20000000

    and-int v11, p2, v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 746
    .local v11, "interactive":Z
    :goto_3
    const/4 v12, 0x4

    if-ne v4, v12, :cond_4

    move v12, v7

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 747
    .local v12, "backKeyCode":Z
    :goto_4
    const/4 v13, 0x3

    if-ne v4, v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 748
    .local v13, "homeKeyCode":Z
    :goto_5
    const/16 v14, 0xbb

    if-ne v4, v14, :cond_6

    move v14, v7

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 749
    .local v14, "switchKeyCode":Z
    :goto_6
    const/high16 v15, 0x10000000

    and-int/2addr v15, v5

    if-eqz v15, :cond_7

    move v15, v7

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    .line 751
    .local v15, "oemSource":Z
    :goto_7
    sget-boolean v16, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v16, :cond_8

    .line 752
    const-string v7, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    .end local v5    # "source":I
    .local v17, "source":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 755
    .end local v17    # "source":I
    .restart local v5    # "source":I
    :cond_8
    move/from16 v17, v5

    .end local v5    # "source":I
    .restart local v17    # "source":I
    :goto_8
    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    if-nez v5, :cond_9

    .line 757
    const/4 v5, 0x0

    return v5

    .line 762
    :cond_9
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_a

    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    .line 763
    .local v5, "powerKeyCode":Z
    :goto_9
    if-eqz v5, :cond_d

    .line 764
    const/4 v7, 0x2

    if-eqz v6, :cond_b

    .line 765
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    .line 766
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 767
    .local v7, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 768
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v18, v4

    move/from16 v19, v5

    const-wide/16 v4, 0x1388

    .end local v4    # "keyCode":I
    .end local v5    # "powerKeyCode":Z
    .local v18, "keyCode":I
    .local v19, "powerKeyCode":Z
    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 769
    .end local v7    # "msg":Landroid/os/Message;
    nop

    .line 784
    .end local v6    # "down":Z
    .local v20, "down":Z
    :goto_a
    move/from16 v20, v6

    goto :goto_b

    .line 770
    .end local v18    # "keyCode":I
    .end local v19    # "powerKeyCode":Z
    .end local v20    # "down":Z
    .restart local v4    # "keyCode":I
    .restart local v5    # "powerKeyCode":Z
    .restart local v6    # "down":Z
    :cond_b
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "keyCode":I
    .end local v5    # "powerKeyCode":Z
    .restart local v18    # "keyCode":I
    .restart local v19    # "powerKeyCode":Z
    iget-boolean v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    if-nez v4, :cond_c

    .line 771
    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    .line 773
    :cond_c
    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 774
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 775
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v20, v6

    const-wide/16 v5, 0x0

    .end local v6    # "down":Z
    .restart local v20    # "down":Z
    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_b

    .line 784
    .end local v18    # "keyCode":I
    .end local v19    # "powerKeyCode":Z
    .end local v20    # "down":Z
    .local v4, "keyCode":I
    .restart local v5    # "powerKeyCode":Z
    .restart local v6    # "down":Z
    :cond_d
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v4    # "keyCode":I
    .end local v5    # "powerKeyCode":Z
    .end local v6    # "down":Z
    .restart local v18    # "keyCode":I
    .restart local v19    # "powerKeyCode":Z
    .restart local v20    # "down":Z
    :goto_b
    const/4 v4, 0x1

    new-array v5, v4, [I

    const/16 v4, 0xb

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 785
    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v6, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v6}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_c

    .line 815
    :pswitch_0
    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_e

    .line 816
    goto/16 :goto_c

    .line 818
    :cond_e
    if-nez v10, :cond_11

    if-nez v12, :cond_f

    if-eqz v14, :cond_11

    :cond_f
    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v5, :cond_11

    .line 819
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_10

    .line 820
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_10
    const/4 v4, 0x0

    return v4

    .line 824
    :cond_11
    if-nez v10, :cond_17

    if-eqz v13, :cond_17

    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_17

    .line 825
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v5, :cond_17

    .line 826
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_12

    .line 827
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_12
    const/4 v4, 0x0

    return v4

    .line 807
    :pswitch_1
    if-nez v10, :cond_17

    if-nez v12, :cond_13

    if-nez v13, :cond_13

    if-eqz v14, :cond_17

    .line 808
    :cond_13
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_14

    .line 809
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_14
    const/4 v4, 0x0

    return v4

    .line 799
    :pswitch_2
    if-nez v10, :cond_17

    if-eqz v13, :cond_17

    .line 800
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_15

    .line 801
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_15
    const/4 v4, 0x0

    return v4

    .line 794
    :pswitch_3
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_16

    .line 795
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_16
    const/4 v4, 0x1

    return v4

    .line 787
    :pswitch_4
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_17

    .line 788
    const-string v5, "OemPhoneWindowManager"

    const-string v6, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_17
    :goto_c
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v5, :cond_19

    .line 838
    if-nez v10, :cond_19

    if-nez v13, :cond_18

    if-nez v12, :cond_18

    if-eqz v14, :cond_19

    .line 839
    :cond_18
    const/4 v4, 0x0

    return v4

    .line 844
    :cond_19
    if-nez v20, :cond_1d

    .line 845
    if-eqz v12, :cond_1b

    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v5, :cond_1b

    .line 846
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 847
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_1a

    .line 848
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_1a
    const/4 v5, 0x0

    return v5

    .line 853
    :cond_1b
    const/4 v5, 0x0

    if-eqz v14, :cond_1d

    iget-boolean v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v6, :cond_1d

    .line 854
    iput-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 855
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_1c

    .line 856
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1c
    const/4 v4, 0x0

    return v4

    .line 863
    :cond_1d
    if-nez v10, :cond_1e

    .line 864
    and-int/lit8 v2, p2, -0x3

    .end local p2    # "policyFlags":I
    .local v2, "policyFlags":I
    goto :goto_d

    .line 878
    .end local v2    # "policyFlags":I
    .restart local p2    # "policyFlags":I
    :cond_1e
    move/from16 v2, p2

    .end local p2    # "policyFlags":I
    .restart local v2    # "policyFlags":I
    :goto_d
    const/4 v5, 0x0

    if-nez v11, :cond_22

    .line 879
    if-nez v10, :cond_21

    if-nez v13, :cond_1f

    if-nez v12, :cond_1f

    if-eqz v14, :cond_21

    .line 880
    :cond_1f
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_20

    .line 881
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_20
    const/4 v4, 0x0

    return v4

    .line 897
    :cond_21
    const/4 v7, 0x1

    goto :goto_e

    .line 886
    :cond_22
    if-nez v10, :cond_21

    if-nez v13, :cond_23

    if-nez v12, :cond_23

    if-eqz v14, :cond_21

    :cond_23
    if-nez v9, :cond_21

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_21

    if-nez v15, :cond_21

    .line 888
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 897
    :goto_e
    const/16 v6, 0x86

    move/from16 v8, v18

    if-eq v8, v6, :cond_24

    .end local v18    # "keyCode":I
    .local v8, "keyCode":I
    goto :goto_f

    .line 900
    :cond_24
    new-array v6, v7, [I

    const/16 v7, 0x11

    const/16 v16, 0x0

    aput v7, v6, v16

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 901
    if-nez v11, :cond_26

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v6, :cond_26

    .line 902
    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6, v7}, Lcom/android/server/policy/DeviceKeyHandler;->setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 903
    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v6, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 904
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_25

    .line 905
    const-string v4, "OemPhoneWindowManager"

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_25
    const/4 v4, 0x0

    return v4

    .line 921
    :cond_26
    :goto_f
    const/4 v6, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_12

    .line 923
    :sswitch_0
    if-eqz v20, :cond_2a

    .line 924
    iget-boolean v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    if-eqz v6, :cond_27

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_27

    const-string v6, "com.oneplus.camera"

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 925
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 927
    const/16 v4, 0x1b

    invoke-direct {v0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 928
    const/4 v4, 0x0

    return v4

    .line 931
    :cond_27
    iget v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    if-ne v6, v4, :cond_29

    .line 934
    if-eqz v11, :cond_28

    iget v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v4, :cond_29

    .line 935
    :cond_28
    const/4 v4, 0x0

    return v4

    .line 939
    :cond_29
    const-string v4, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: long press on FP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    if-eqz v4, :cond_2a

    .line 941
    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 942
    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I
    
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z
    
    move-result v0
    
    if-eqz v0, :cond_2a
    
    move-object/from16 v0, p0
    
    const v3, 0x1

    invoke-direct {v0, v5, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    goto :goto_10

    .line 945
    :cond_2a
    const/4 v4, 0x0

    :goto_10
    return v4

    .line 949
    :sswitch_1
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v5, :cond_2d

    .line 951
    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    if-eqz v5, :cond_2b

    if-eqz v20, :cond_2b

    if-eqz v11, :cond_2b

    .line 952
    const v3, 0x0
    
    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;Z)V

    .line 954
    :cond_2b
    const/4 v4, 0x0

    return v4

    .line 967
    :sswitch_2
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v4, :cond_2d

    iget v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v4, v6, :cond_2d

    if-eqz v20, :cond_2d

    .line 968
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: Cancelled by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " focus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_2d

    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d8

    if-eq v4, v5, :cond_2d

    .line 971
    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget-boolean v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    if-eqz v4, :cond_2c

    .line 972
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_11

    .line 974
    :cond_2c
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto :goto_12

    .line 960
    :sswitch_3
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v4, :cond_2d

    iget v4, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v4, v6, :cond_2d

    if-eqz v20, :cond_2d

    .line 961
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: Cancelled by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 982
    :cond_2d
    :goto_12
    invoke-super {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_0
        0xbb -> :sswitch_3
    .end sparse-switch
.end method

.method isFingerprintGestureLimit()Z
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    invoke-virtual {v0}, Lcom/oneplus/server/FingerprintGestureLimit;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    const/4 v0, 0x1

    return v0

    .line 3023
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    .line 3003
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    return v0

    .line 3006
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonRegion(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2995
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->isGestureButtonRegion(II)Z

    move-result v0

    return v0

    .line 2998
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1813
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1814
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    return v0

    .line 1816
    :cond_1
    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "net.oneplus.h2launcher"

    .line 1817
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDefaultHomeApp:Ljava/lang/String;

    .line 1820
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1816
    :goto_1
    return v0
.end method

.method protected isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1826
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    return v0

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 1829
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 1828
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1830
    .local v0, "mode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1832
    .local v3, "isScreenCompat":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v4, :cond_2

    .line 1833
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v4, :cond_2

    .line 1832
    move v1, v2

    goto :goto_1

    .line 1834
    :cond_2
    nop

    .line 1832
    :goto_1
    return v1
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configVersionName"    # Ljava/lang/String;

    .line 2959
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, ""

    if-ne p2, v0, :cond_0

    goto :goto_4

    .line 2963
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2964
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2965
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, ""

    .line 2966
    .local v2, "nowVersionName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 2967
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v2, v3

    .line 2968
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2969
    .local v3, "nowVersion":[Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2970
    .local v4, "configVersion":[Ljava/lang/String;
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2971
    .local v5, "length":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 2972
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 2973
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v1

    .line 2974
    .local v7, "nowV":I
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_2

    .line 2975
    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v8, v1

    .line 2976
    .local v8, "newV":I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 2977
    const/4 v1, 0x1

    return v1

    .line 2978
    :cond_3
    if-le v7, v8, :cond_4

    .line 2979
    return v1

    .line 2971
    .end local v7    # "nowV":I
    .end local v8    # "newV":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2984
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "nowVersionName":Ljava/lang/String;
    .end local v3    # "nowVersion":[Ljava/lang/String;
    .end local v4    # "configVersion":[Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_5
    goto :goto_3

    .line 2983
    :catch_0
    move-exception v0

    .line 2985
    :goto_3
    return v1

    .line 2960
    :cond_6
    :goto_4
    return v1
.end method

.method protected isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1805
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1806
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1807
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    return v0

    .line 1808
    :cond_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;

    .line 2872
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2873
    .local v0, "which":I
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 2874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 2875
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2876
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: App Launch Failed, restart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2878
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2879
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2880
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 2881
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2882
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$11;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager$11;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 2894
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 1949
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 1950
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLidSwitchChanged :mLidState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->notifyLidSwitchChanged(Z)V

    .line 1960
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v1, p0, p3}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1969
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1972
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1973
    return-void
.end method

.method public notifyLockTaskMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2064
    if-eqz p1, :cond_0

    .line 2065
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    goto :goto_0

    .line 2068
    :cond_0
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    .line 2071
    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 3070
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    .line 3072
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->onConfigurationChanged()V

    .line 3075
    :cond_0
    return-void
.end method

.method public onKeyguardDone()V
    .locals 1

    .line 2534
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardDone()V

    .line 2537
    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 2544
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)V

    .line 2545
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardOccludedChangedLw(Z)V

    .line 2548
    :cond_0
    return-void
.end method

.method public preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .line 3011
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 3012
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V

    .line 3015
    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I
    .param p3, "defaultDisplay"    # Z

    .line 3095
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 3096
    const/4 v0, 0x0

    return v0

    .line 3098
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(IIZ)I

    move-result v0

    return v0
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 2500
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 2501
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOff()V

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2506
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .line 2513
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 2514
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOn()V

    .line 2517
    :cond_0
    return-void
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .line 1672
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1673
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    if-eqz v0, :cond_0

    .line 1674
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "return -1 for moving home gesture."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v0, -0x1

    return v0

    .line 1681
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2
    .param p1, "anim"    # [I

    .line 1655
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton;->isScreenShotShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    .line 1658
    return-void

    .line 1664
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 1665
    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 1686
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1692
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_navigation_bar_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1695
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_navigation_bar_type"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1697
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureButton: setCurrentUserLw update navbar type to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v0    # "type":I
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .line 1706
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1711
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    .line 1715
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "GestureButton: setInitialDisplaySize force set mHasNavigationBar to false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    return-void
.end method

.method public setRotationLw(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 2480
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2481
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2482
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2484
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2485
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2488
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2490
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setRotationLw(I)V

    .line 2491
    return-void
.end method

.method public startedWakingUp()V
    .locals 1

    .line 2525
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 2526
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onStartedWakingUp()V

    .line 2529
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    .line 490
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 496
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v3, 0xb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 507
    .local v0, "showNavBar":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 508
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 511
    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    .line 510
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    .end local v0    # "showNavBar":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 528
    :cond_2
    invoke-static {}, Lcom/android/server/policy/ScreenDecor;->isSupportRoundScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-nez v0, :cond_3

    .line 529
    new-instance v0, Lcom/android/server/policy/ScreenDecor;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/ScreenDecor;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2929
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2930
    .local v0, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    move v2, v1

    .line 2930
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2931
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2932
    .local v3, "config":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2933
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_4

    .line 2934
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2935
    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2936
    .local v5, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    aget-object v6, v4, v1

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2937
    const/4 v6, 0x1

    aget-object v7, v4, v6

    const-string/jumbo v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2938
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 2939
    :cond_0
    aget-object v7, v4, v6

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2940
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 2942
    :cond_1
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 2943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 2945
    :goto_1
    const-string v7, "default"

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2946
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 2948
    :cond_2
    const-string v6, "class"

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2949
    aget-object v6, v4, v7

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 2951
    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2952
    const-string v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2956
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method updateSwapKey()V
    .locals 4

    .line 2000
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2001
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .local v0, "setVal":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2003
    .end local v0    # "setVal":Ljava/lang/String;
    :cond_1
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "1"

    .line 2007
    .restart local v0    # "setVal":Ljava/lang/String;
    :goto_1
    :try_start_0
    const-string v1, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2008
    const-string v1, "/proc/s1302/key_rep"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2010
    :cond_3
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-nez v1, :cond_4

    .line 2011
    const-string v1, "/proc/touchpanel/key_switch"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :cond_4
    :goto_2
    goto :goto_3

    .line 2014
    :catch_0
    move-exception v1

    .line 2015
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "OemPhoneWindowManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method public killApp()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKillProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public customApp(IZ)V
    .registers 5
    .param p1, "KeyCode"    # I
    .param p2, "LongPress"    # Z

    .line 597
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    .line 598
    if-eqz p2, :cond_1a

    .line 599
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressBackCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 600
    .local v0, "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_18

    .line 601
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_18
    goto/16 :goto_9f

    .line 604
    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mDoublePressBackCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 605
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_2d

    .line 606
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 608
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_2d
    goto/16 :goto_9f

    .line 609
    :cond_2f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5c

    .line 610
    if-eqz p2, :cond_48

    .line 611
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressHomeCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 612
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_47

    .line 613
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_47
    goto :goto_9f

    .line 616
    :cond_48
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mDoublePressHomeCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 617
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_5b

    .line 618
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 620
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_5b
    goto :goto_9f

    .line 622
    :cond_5c
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_8a

    .line 623
    if-eqz p2, :cond_76

    .line 624
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressRecentCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 625
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_75

    .line 626
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_75
    goto :goto_9f

    .line 629
    :cond_76
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mDoublePressRecentCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 630
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_89

    .line 631
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 633
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_89
    goto :goto_9f

    .line 635
    :cond_8a
    if-eqz p2, :cond_9f

    .line 636
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressFingerprintCustomApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 637
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_9f

    .line 638
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 642
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_9f
    :goto_9f
    return-void
.end method
