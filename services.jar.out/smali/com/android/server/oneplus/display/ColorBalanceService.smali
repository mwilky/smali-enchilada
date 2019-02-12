.class public final Lcom/android/server/oneplus/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CMH;,
        Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    }
.end annotation


# static fields
.field private static final ADAPTION_ADJUSTMENT_SHADING_TIME:I = 0x12c

.field private static final ADAPTION_INIT_COLOR:I = 0x2b

.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static COLOR_DELTA:I = 0x0

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_AUTOCHANGE_ENVIRONMENT_CHANGED:I = 0x14

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_CLOSEPTOPETIES:I = 0x18

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_DISABLECOLOR:I = 0x17

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT2READMODE:I = 0x16

.field private static final MSG_NIGHT_ACTIVATED:I = 0x13

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READ2NIGHTMODE:I = 0x15

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ACTIVATED:I = 0x12

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static final NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x67

.field private static NIGHT_MODE_SEEKBAR_MAX:I = 0x0

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_AUTO_COLOR_MODE:I = 0x4

.field private static final OP_DCIP3_MODE:I = 0x2

.field private static final OP_DEFAULT_COLOR_MODE:I = 0x5

.field private static final OP_NIGHT_MODE:I = 0x3

.field private static final OP_SRGB_MODE:I = 0x1

.field private static final OP_SYS_Auto_Color_PROPERTY:Ljava/lang/String; = "sys.automode"

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_INIT_COLOR:I = -0x14

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final RESET_NODE_DELAY:I = 0x11

.field private static RGBSENSOR_Dither:I = 0x0

.field private static SENSOR_TYPE_RGB:I = 0x0

.field private static final STAGE_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_oneplus_mode_adaption:[I

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I


# instance fields
.field colorbalance_stop:Z

.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field flinger:Landroid/os/IBinder;

.field has_fingerprint:Z

.field private mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

.field private mAutoSensor:Ljava/lang/Boolean;

.field private mAutoState:Ljava/lang/Boolean;

.field private mAverageColor:I

.field private mBootColorStatus:Ljava/lang/Boolean;

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private mBootStatus:Ljava/lang/Boolean;

.field private final mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorDisableStatus:Ljava/lang/Boolean;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCreateModeState:I

.field private mCurrentAdaptionColorbalance:I

.field private mCurrentColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mDisableStatus:I

.field private mDozeColorStatus:I

.field private mFactor:F

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsAutoModeActivated:Ljava/lang/Boolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mIsSupportReadingMode:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Lcom/oneplus/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mScreenOff_Quick:Ljava/lang/Boolean;

.field private mScreenOn_Quick:Ljava/lang/Boolean;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mSwitchUser:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    return-void

    :array_0
    .array-data 4
        0x23
        0x2a
        0x3c
        0x45
        0x4e
        0x55
    .end array-data

    :array_1
    .array-data 4
        0x36
        0x3d
        0x4e
        0x57
        0x5d
        0x63
    .end array-data

    :array_2
    .array-data 4
        0x66
        0x70
        0x7a
        0x80
        0x86
        0x8a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDozeColorStatus:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v5, 0x10

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v6, 0x84

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    const/16 v7, 0x36

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    new-array v7, v7, [[I

    const/4 v8, 0x7

    new-array v9, v8, [I

    fill-array-data v9, :array_4

    aput-object v9, v7, v0

    new-array v9, v8, [I

    fill-array-data v9, :array_5

    aput-object v9, v7, v2

    new-array v9, v8, [I

    fill-array-data v9, :array_6

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_7

    const/4 v11, 0x3

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_8

    const/4 v11, 0x4

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_9

    const/4 v11, 0x5

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_a

    aput-object v10, v7, v9

    new-array v10, v9, [I

    fill-array-data v10, :array_b

    aput-object v10, v7, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_c

    const/16 v10, 0x8

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_d

    const/16 v10, 0x9

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_e

    aput-object v8, v7, v3

    new-array v3, v9, [I

    fill-array-data v3, :array_f

    const/16 v8, 0xb

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_10

    const/16 v8, 0xc

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_11

    const/16 v8, 0xd

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_12

    const/16 v8, 0xe

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_13

    const/16 v8, 0xf

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_14

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x11

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x12

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x13

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x14

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x15

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x16

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x17

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x18

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_21

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_22

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_23

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_24

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_25

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_26

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_27

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_28

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_29

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2a

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2b

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2c

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2d

    const/16 v5, 0x29

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2e

    const/16 v5, 0x2a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_2f

    const/16 v5, 0x2b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_30

    const/16 v5, 0x2c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_31

    const/16 v5, 0x2d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_32

    aput-object v3, v7, v1

    new-array v1, v9, [I

    fill-array-data v1, :array_33

    const/16 v3, 0x2f

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_34

    const/16 v3, 0x30

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_35

    const/16 v3, 0x31

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_36

    const/16 v5, 0x32

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_37

    const/16 v5, 0x33

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_38

    const/16 v5, 0x34

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_39

    const/16 v5, 0x35

    aput-object v1, v7, v5

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "ColorBalanceThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "oem.read_mode.support"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sput v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    const/16 v1, 0x82

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    :goto_0
    new-array v1, v2, [I

    aput v3, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    sput v9, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    :array_2
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    :array_f
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    :array_14
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    :array_19
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    :array_1e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_20
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    :array_22
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_23
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    :array_27
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_28
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_29
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    :array_2b
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_2d
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_2e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_2f
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    :array_30
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_32
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_34
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    :array_35
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_36
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_37
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_38
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_39
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private ResetNode()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    const-string v0, "ColorBalanceService"

    const-string v1, "already disable color mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-ne v1, v3, :cond_4

    if-ne v0, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_3
    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_7

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    :cond_5
    if-ne v0, v2, :cond_6

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closePropeties()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method private changeNight2ReadingMode(II)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_11

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v5, -0x14

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v5, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_6

    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v11, 0x2710

    const/4 v12, 0x0

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v15, 0x3fefff2e48e8a71eL    # 0.9999

    const/16 v5, 0xf

    const/16 v7, 0xd

    if-nez v0, :cond_5

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpl-double v0, v9, v15

    if-lez v0, :cond_1

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpg-double v0, v9, v13

    if-gez v0, :cond_2

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v6, 0x1f40

    const/16 v8, 0x7d0

    if-le v0, v8, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-ge v0, v6, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    :goto_1
    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-le v0, v8, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-ge v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v0, -0x14

    :goto_2
    const-string v6, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mStableColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-string v6, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_6

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v9, 0x3a98

    if-ne v0, v11, :cond_e

    const/4 v0, 0x0

    move v6, v3

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v11, v6, :cond_7

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v15, v6, :cond_6

    const/4 v15, -0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x1

    :goto_3
    add-int/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v11, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c3c6a7f    # 0.0115f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_c

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39930c    # 0.7249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_8

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39a027    # 0.7251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_8

    const/4 v8, 0x5

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v8, 0x6

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3efae148    # 0.49f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_9

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f028f5c    # 0.51f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_9

    const/4 v8, 0x7

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e7ef9db    # 0.249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_a

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e808312    # 0.251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_a

    const/16 v8, 0x8

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v8, 0x9

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v10, v11

    cmpg-double v10, v10, v13

    if-gez v10, :cond_b

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const-string v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    add-int/lit8 v0, v0, 0x2

    :cond_c
    if-lez v0, :cond_d

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_5

    :cond_d
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-string v5, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  mFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_5
    goto :goto_6

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-ne v0, v9, :cond_10

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v0

    cmpl-double v0, v8, v15

    if-lez v0, :cond_f

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const/16 v0, 0x4e20

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v5, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/4 v0, 0x0

    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_11

    const/4 v0, 0x6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeReading2NightMode(II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_f

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/16 v6, 0x67

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_0

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const-string v0, "ColorBalanceService"

    const-string v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "oem_nightmode_progress_status"

    invoke-static {v4, v10, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_4

    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x1388

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0xf

    const/16 v14, 0xe

    if-nez v0, :cond_2

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v0

    cmpg-double v0, v4, v11

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    invoke-virtual {v1, v14, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    invoke-virtual {v1, v14, v2, v9, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_4

    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v15, 0x2710

    if-ne v0, v10, :cond_4

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "oem_nightmode_progress_status"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeReading2NightMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v4

    cmpg-double v4, v4, v11

    if-gez v4, :cond_3

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_3
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v4, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x4e20

    if-ne v0, v15, :cond_e

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "oem_nightmode_progress_status"

    invoke-static {v4, v11, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v5, v0, :cond_6

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v11, v0, :cond_5

    const/4 v11, -0x1

    goto :goto_0

    :cond_5
    move v11, v8

    :goto_0
    add-int/2addr v5, v11

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    add-int/2addr v4, v8

    :goto_1
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMod mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x2

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    :cond_b
    if-lt v4, v7, :cond_c

    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    :cond_c
    if-ne v4, v8, :cond_d

    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    :cond_d
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ColorBalanceService"

    const-string v6, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_3
    goto :goto_4

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    if-ne v0, v10, :cond_f

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode done(20000 -> 30000)!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeMatrix()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    const-string v2, "ColorBalanceService"

    const-string v4, "close matrix!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x18

    const/16 v4, 0x20

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private closePropeties()V
    .locals 6

    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_0
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties flinger is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "read flinger 1015 is fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x39

    const/16 v11, 0x2f

    const/16 v12, 0x24

    const/16 v13, 0x1a

    const/4 v14, 0x1

    if-ne v6, v14, :cond_8

    const-string v6, "ColorBalanceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_0

    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-lt v4, v13, :cond_2

    if-ge v4, v12, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-lt v4, v12, :cond_3

    if-ge v4, v11, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-lt v4, v11, :cond_4

    if-ge v4, v10, :cond_4

    const/4 v4, 0x3

    goto :goto_0

    :cond_4
    if-lt v4, v10, :cond_5

    if-ge v4, v8, :cond_5

    const/4 v4, 0x4

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    :goto_0
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in reading mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v14, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v5, v7, v4

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v5, v7, v4

    :goto_2
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    goto/16 :goto_7

    :cond_8
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v14, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_9

    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_9
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_a

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    if-lt v4, v13, :cond_b

    if-ge v4, v12, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    if-lt v4, v12, :cond_c

    if-ge v4, v11, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    :cond_c
    if-lt v4, v11, :cond_d

    if-ge v4, v10, :cond_d

    const/4 v4, 0x3

    goto :goto_3

    :cond_d
    if-lt v4, v10, :cond_e

    if-ge v4, v8, :cond_e

    const/4 v4, 0x4

    goto :goto_3

    :cond_e
    const/4 v4, 0x5

    :goto_3
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in adaption mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v7, v7, v4

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v5, v7, v8

    goto/16 :goto_7

    :cond_f
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v14, "oem_nightmode_progress_status"

    const/16 v15, 0x67

    const/4 v8, -0x2

    invoke-static {v7, v14, v15, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v7, v7, v2

    if-gt v6, v7, :cond_10

    goto :goto_5

    :cond_10
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_11

    add-int/lit8 v2, v3, -0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    if-ltz v2, :cond_1a

    const/16 v7, 0x35

    if-le v2, v7, :cond_13

    goto/16 :goto_8

    :cond_13
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_14

    const-string v7, "ColorBalanceService"

    const-string v8, " The RGB sensor output negative data this is error !  "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_14
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_15

    const/4 v4, 0x0

    goto :goto_6

    :cond_15
    if-lt v4, v13, :cond_16

    if-ge v4, v12, :cond_16

    const/4 v4, 0x1

    goto :goto_6

    :cond_16
    if-lt v4, v12, :cond_17

    if-ge v4, v11, :cond_17

    const/4 v4, 0x2

    goto :goto_6

    :cond_17
    if-lt v4, v11, :cond_18

    if-ge v4, v10, :cond_18

    const/4 v4, 0x3

    goto :goto_6

    :cond_18
    if-lt v4, v10, :cond_19

    const/16 v7, 0x42

    if-ge v4, v7, :cond_19

    const/4 v4, 0x4

    goto :goto_6

    :cond_19
    const/4 v4, 0x5

    :goto_6
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " when in night mode the enviroment_step = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v7, v7, v2

    aget v5, v7, v4

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    :goto_7
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBalanceByTemprature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1a
    :goto_8
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of range elemIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private handleSRGBSensorEvent(I)V
    .locals 5

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_8

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    :cond_1
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v2, :cond_2

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x320

    if-ge v0, v2, :cond_3

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjusted,Stable color is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_7

    return-void

    :cond_7
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    :cond_8
    :goto_1
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method private nightModeSwitch(ZI)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p2

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/4 v5, -0x2

    const/16 v6, 0x67

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v3, v0, v3

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_2

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_0
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v12, 0x5

    const/16 v13, 0x39

    const/16 v14, 0xf

    const/16 v15, 0x2b

    const/16 v6, 0xa

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v8, :cond_17

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    if-ne v0, v12, :cond_3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_3
    if-eq v0, v9, :cond_4

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "oem_screen_better_value"

    invoke-static {v7, v9, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1, v6, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_a

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v8, :cond_8

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v15, :cond_6

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_2

    :cond_6
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v15, :cond_7

    const/16 v16, -0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v10

    :goto_1
    add-int v0, v0, v16

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_2
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v9, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v3, :cond_9

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v3, :cond_a

    const/16 v16, -0x1

    goto :goto_3

    :cond_a
    move/from16 v16, v10

    :goto_3
    move/from16 v0, v16

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v7, :cond_17

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    const-string v0, "ColorBalanceService"

    const-string v5, "#2 night mode had been opened!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v7, :cond_17

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_17

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v0, :cond_10

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v15, v0, :cond_e

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v15, :cond_f

    const/16 v16, -0x1

    goto :goto_5

    :cond_f
    move/from16 v16, v10

    :goto_5
    move/from16 v0, v16

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v10, :cond_12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v0

    if-eq v0, v9, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v8, :cond_15

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v0, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v5, v0, :cond_13

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v0, :cond_14

    const/16 v16, -0x1

    goto :goto_7

    :cond_14
    move/from16 v16, v10

    :goto_7
    move/from16 v5, v16

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v7, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_8
    goto :goto_a

    :cond_15
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v9, :cond_17

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v0, v6, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v12, :cond_16

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_9

    :cond_16
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :goto_9
    const-string v6, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v6, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    :cond_17
    :goto_a
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserChanged(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    :cond_3
    :goto_1
    return-void
.end method

.method private oneplusSetColorBalance(II)V
    .locals 50

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    int-to-double v13, v2

    int-to-double v9, v3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-wide/from16 v17, v4

    const-wide v21, 0x3fc999999999999aL    # 0.2

    const/4 v4, 0x5

    const-wide v25, 0x4045800000000000L    # 43.0

    if-eqz v0, :cond_d

    :try_start_1
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const v5, 0x1fa264c

    if-eq v0, v5, :cond_1

    :try_start_2
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v5, 0x1fa2639

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    :goto_0
    move-wide/from16 v4, v17

    goto/16 :goto_20

    :cond_1
    :goto_1
    const/16 v0, 0x64

    if-le v2, v0, :cond_2

    const/16 v0, -0x64

    if-ge v2, v0, :cond_2

    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    cmpg-double v0, v13, v25

    if-ltz v0, :cond_8

    cmpl-double v0, v13, v25

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    const-wide v19, -0x41554c77250726f2L    # -7.9576095929934E-7

    const-wide v25, 0x3ff0958debe66d88L    # 1.0365123

    const-wide v28, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    const-wide v30, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    if-nez v3, :cond_5

    mul-double v30, v30, v13

    mul-double v30, v30, v13

    mul-double v28, v28, v13

    add-double v30, v30, v28

    add-double v4, v30, v25

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    const-wide v11, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double/2addr v11, v13

    add-double v19, v19, v11

    const-wide v11, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v19, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    nop

    move-wide/from16 v40, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v48, v4

    move-wide v4, v11

    move-wide/from16 v11, v48

    goto/16 :goto_20

    :catch_0
    move-exception v0

    move-object/from16 v39, v0

    :try_start_4
    const-string v0, "ColorBalanceService"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide/from16 v40, v4

    :try_start_5
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    :goto_2
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    move-wide/from16 v40, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_20

    :cond_5
    const/16 v27, 0x0

    :goto_3
    move/from16 v5, v27

    if-ge v5, v4, :cond_7

    sub-double v15, v15, v21

    move/from16 v42, v5

    int-to-double v4, v2

    mul-double v32, v9, v15

    sub-double v13, v4, v32

    mul-double v4, v30, v13

    mul-double/2addr v4, v13

    mul-double v32, v28, v13

    add-double v4, v4, v32

    add-double v4, v4, v25

    mul-double v11, v19, v13

    mul-double/2addr v11, v13

    const-wide v32, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v32, v32, v13

    add-double v11, v11, v32

    const-wide v32, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v32

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :try_start_6
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    nop

    move-wide/from16 v44, v4

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v43, v0

    :try_start_7
    const-string v0, "ColorBalanceService"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-wide/from16 v44, v4

    :try_start_8
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_4
    const-wide/16 v4, 0xf

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_5
    add-int/lit8 v27, v42, 0x1

    move-wide/from16 v17, v11

    move-wide/from16 v11, v44

    const/4 v4, 0x5

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    goto/16 :goto_20

    :catchall_5
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    goto/16 :goto_20

    :cond_7
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    goto/16 :goto_1f

    :cond_8
    :goto_6
    const-wide/16 v4, 0xf

    if-nez v3, :cond_a

    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    :try_start_b
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_9

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-wide v5, v11

    move-object/from16 v23, v8

    move-wide/from16 v7, v17

    move-wide/from16 v28, v9

    move-wide/from16 v9, v19

    :try_start_c
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_9
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    :goto_7
    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    :goto_8
    :try_start_d
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :goto_9
    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_1f

    :catchall_7
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_20

    :cond_a
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    const/16 v27, 0x0

    :goto_a
    move/from16 v9, v27

    const/4 v8, 0x5

    if-ge v9, v8, :cond_c

    sub-double v15, v15, v21

    int-to-double v4, v2

    mul-double v19, v28, v15

    sub-double v13, v4, v19

    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    :try_start_e
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_b

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move v10, v8

    const-wide/16 v7, 0xf

    move-wide v5, v11

    move-wide/from16 v46, v11

    move-wide v11, v7

    move-wide/from16 v7, v17

    move/from16 v24, v9

    move-wide/from16 v9, v19

    :try_start_f
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_c

    :cond_b
    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    :goto_b
    goto :goto_d

    :catchall_8
    move-exception v0

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_20

    :catch_6
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    :goto_c
    :try_start_10
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :goto_d
    :try_start_11
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_e

    :catch_7
    move-exception v0

    move-object v4, v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :goto_e
    add-int/lit8 v27, v24, 0x1

    move-wide v4, v11

    move-wide/from16 v6, v19

    move-wide/from16 v11, v46

    goto/16 :goto_a

    :catchall_9
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto :goto_10

    :cond_c
    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    goto/16 :goto_1f

    :catchall_a
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    goto/16 :goto_20

    :cond_d
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    :goto_f
    const/16 v0, 0x64

    if-le v2, v0, :cond_e

    const/16 v0, -0x64

    if-ge v2, v0, :cond_e

    :try_start_13
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    move-wide/from16 v4, v17

    :goto_10
    move-wide/from16 v11, v46

    goto/16 :goto_20

    :cond_e
    cmpg-double v0, v13, v25

    const-wide v19, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    if-ltz v0, :cond_14

    cmpl-double v0, v13, v25

    if-nez v0, :cond_f

    goto/16 :goto_17

    :cond_f
    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v3, :cond_11

    const-wide v8, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v19

    const-wide v10, 0x3ff02d0e56041893L    # 1.011

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double/2addr v10, v13

    add-double/2addr v8, v10

    const-wide v10, 0x3ff63126e978d4feL    # 1.387

    add-double/2addr v8, v10

    const-wide v10, 0x3ff553f7ced91687L    # 1.333

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    const-wide v19, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v10, v10, v19

    const-wide v19, -0x3fffeb851eb851ecL    # -2.01

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    mul-double v19, v19, v4

    add-double v10, v10, v19

    const-wide v4, 0x3f7c0767d34df04eL    # 0.006843

    mul-double/2addr v4, v13

    add-double/2addr v10, v4

    const-wide v4, 0x3feef765fd8adabaL    # 0.9677

    add-double/2addr v4, v10

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :try_start_14
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v8

    move-wide/from16 v33, v4

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :cond_10
    :goto_11
    goto :goto_12

    :catchall_c
    move-exception v0

    move-wide v11, v8

    goto/16 :goto_20

    :catch_8
    move-exception v0

    :try_start_15
    const-string v10, "ColorBalanceService"

    const-string/jumbo v11, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    goto :goto_11

    :goto_12
    move-wide v11, v8

    goto/16 :goto_1f

    :cond_11
    const/16 v27, 0x0

    :goto_13
    move/from16 v8, v27

    const/4 v9, 0x5

    if-ge v8, v9, :cond_13

    sub-double v15, v15, v21

    int-to-double v9, v2

    mul-double v24, v28, v15

    sub-double v13, v9, v24

    const-wide v9, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double v9, v9, v19

    const-wide v24, 0x3ff02d0e56041893L    # 1.011

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v4

    add-double v9, v9, v24

    const-wide v24, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v24, v24, v13

    add-double v9, v9, v24

    const-wide v24, 0x3ff63126e978d4feL    # 1.387

    add-double v9, v9, v24

    const-wide v24, 0x3ff553f7ced91687L    # 1.333

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    const-wide v26, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v24, v24, v26

    const-wide v26, -0x3fffeb851eb851ecL    # -2.01

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v4

    add-double v24, v24, v26

    const-wide v26, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v26, v26, v13

    add-double v24, v24, v26

    const-wide v26, 0x3feef765fd8adabaL    # 0.9677

    add-double v17, v24, v26

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :try_start_16
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v9

    move-wide/from16 v33, v17

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :cond_12
    goto :goto_14

    :catchall_d
    move-exception v0

    move-wide v11, v9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :try_start_17
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    :goto_14
    :try_start_18
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v4, v0

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :goto_15
    add-int/lit8 v27, v8, 0x1

    move-wide/from16 v46, v9

    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    goto/16 :goto_13

    :cond_13
    move-wide/from16 v4, v17

    :goto_16
    move-wide/from16 v11, v46

    goto/16 :goto_1f

    :cond_14
    :goto_17
    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    if-nez v3, :cond_16

    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x400522d0e5604189L    # -1.679

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f66feb4a66559f7L    # 0.002807

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v11, v4, v8

    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x3fff9db22d0e5604L    # -2.048

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v17, v4, v8

    :try_start_1a
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_15

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-wide/from16 v5, v46

    move-wide v7, v11

    move-wide/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :cond_15
    :goto_18
    goto :goto_19

    :catchall_e
    move-exception v0

    move-wide v4, v11

    move-wide/from16 v6, v17

    goto/16 :goto_10

    :catch_b
    move-exception v0

    :try_start_1b
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_18

    :goto_19
    move-wide v4, v11

    move-wide/from16 v6, v17

    goto :goto_16

    :cond_16
    const/16 v27, 0x0

    :goto_1a
    move/from16 v9, v27

    const/4 v10, 0x5

    if-ge v9, v10, :cond_13

    sub-double v15, v15, v21

    int-to-double v4, v2

    mul-double v26, v28, v15

    sub-double v13, v4, v26

    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x400522d0e5604189L    # -1.679

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v17, v4, v26

    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x3fff9db22d0e5604L    # -2.048

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v26, v4, v26

    :try_start_1c
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_17

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    move-wide/from16 v5, v46

    move-wide/from16 v7, v17

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v26

    :try_start_1d
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    goto :goto_1b

    :catch_c
    move-exception v0

    goto :goto_1c

    :cond_17
    move/from16 v30, v9

    move/from16 v31, v10

    :goto_1b
    goto :goto_1d

    :catchall_f
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v26

    goto/16 :goto_10

    :catch_d
    move-exception v0

    move/from16 v30, v9

    move/from16 v31, v10

    :goto_1c
    :try_start_1e
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    :goto_1d
    :try_start_1f
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    goto :goto_1e

    :catch_e
    move-exception v0

    move-object v4, v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    :goto_1e
    add-int/lit8 v0, v30, 0x1

    move-wide/from16 v6, v26

    move/from16 v27, v0

    goto/16 :goto_1a

    :goto_1f
    :try_start_21
    monitor-exit v23

    return-void

    :catchall_10
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    :goto_20
    monitor-exit v23
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_20
.end method

.method private opSetActiveModesId(I)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetActiveModesId: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    :cond_0
    return-void
.end method

.method private opSetColorBalance(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    :cond_0
    return-void
.end method

.method private opSetDefaultModesId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetDefaultModesId(I)V

    :cond_0
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoMode mCurrenAdaptionColorbalance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_4

    const/16 v1, 0x12c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoMode mCurrentAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processEnvironmentColorChangeAtAdaptionMode:++++mIsAutoModeActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v4, v6, :cond_0

    const/16 v5, 0x2b

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-direct {p0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode mCurrentAdaptionColorbalance: == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v7, v3, :cond_1

    const/4 v6, -0x1

    nop

    :cond_1
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v7, v3, :cond_2

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->what:I

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    const-string v9, "delay"

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode shading done,mCurrentaAdaptionColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v3, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v6, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    const-string v8, "delay"

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    return-void
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, v3, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    const-string v7, "delay"

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private processScreenOn(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_1

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "mKeyguardManager is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    move v2, v3

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKeyguard =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    new-array v3, v5, [I

    const/16 v6, 0x47

    aput v6, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    goto :goto_2

    :cond_4
    const-string v3, "ColorBalanceService"

    const-string/jumbo v6, "mFpm == null"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sput v4, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has_fingerprint = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    const/4 v4, 0x2

    if-nez v3, :cond_5

    const-string v3, "ColorDisable"

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    const-string v3, "FingerPrintMode"

    invoke-static {v3, v4, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    :cond_5
    const-string v3, "FingerPrintMode"

    invoke-static {v3, v5, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    :cond_9
    iget-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-nez v4, :cond_b

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_5

    :cond_a
    :goto_4
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :cond_b
    :goto_5
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v3, 0x1fa2639

    if-ne v1, v3, :cond_c

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    :cond_c
    goto :goto_6

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :goto_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processSetColorBalance(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartSetCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :cond_0
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v5, 0x9c40

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x6

    const/16 v10, 0x4e20

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_0
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto/16 :goto_a

    :cond_1
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_35

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v7, 0x5

    const/4 v13, -0x2

    const/16 v15, 0xb

    if-eqz v0, :cond_1a

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_4

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v9, :cond_35

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v0, :cond_7

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_5
    if-eq v0, v6, :cond_6

    const/16 v5, 0x3a98

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_6
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v8, 0x39

    invoke-static {v5, v6, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v5, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-virtual {v1, v15, v2, v12, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_7
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x2710

    if-ne v0, v13, :cond_a

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_8

    const/16 v0, 0x3a98

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-le v5, v6, :cond_9

    const/4 v11, -0x1

    nop

    :cond_9
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x3a98

    if-ne v0, v13, :cond_13

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_d

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x2b

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    :goto_0
    goto :goto_1

    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_0

    :cond_c
    const/16 v0, -0x14

    :goto_1
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStableColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x96

    invoke-virtual {v1, v15, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_e

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_2

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39930c    # 0.7249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39a027    # 0.7251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_2

    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_11

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_11

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_12

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_13
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v10, :cond_16

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_14

    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v1, v15, v2, v3, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_14
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, v3, :cond_15

    const/4 v11, -0x1

    nop

    :cond_15
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_16
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x7530

    if-ne v0, v6, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v6, v10

    if-lez v0, :cond_17

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_17
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v7

    if-lez v0, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    :cond_18
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_19
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    :cond_1a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v14, 0x8

    if-eq v0, v14, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v0, :cond_31

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_1b

    goto/16 :goto_9

    :cond_1b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x3e8

    if-ne v0, v14, :cond_21

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_1c

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_1c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1d

    const/4 v6, -0x1

    goto :goto_3

    :cond_1d
    move v6, v11

    :goto_3
    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v0, v3, :cond_1f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1e

    const/4 v11, -0x1

    nop

    :cond_1e
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    :cond_1f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v5, :cond_20

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    :cond_20
    invoke-virtual {v1, v15, v2, v3, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x9c4

    if-ne v0, v5, :cond_27

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_22

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_22
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d48b439    # 0.049f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_23

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d50e560    # 0.051f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_23

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_4

    :cond_23
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_24

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_24

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_24
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_25

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_25

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_25
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f3fbe77    # 0.749f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_26

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f404189    # 0.751f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_26

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0xf

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_27
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x1388

    if-ne v0, v5, :cond_2b

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v11, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_28
    const/4 v5, 0x2

    if-eq v0, v5, :cond_2a

    const/4 v5, 0x4

    if-ne v0, v5, :cond_29

    goto :goto_5

    :cond_29
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v5, 0x2b

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_2a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v1, v15, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_a

    :cond_2b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x2710

    if-ne v0, v5, :cond_2f

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v5, 0x2b

    if-ne v0, v6, :cond_2c

    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    const/16 v8, 0x2b

    invoke-static {v6, v7, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v5, v6, 0x64

    :cond_2c
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v6, v5, :cond_2d

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_2d
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v5, :cond_2e

    const/4 v11, -0x1

    nop

    :cond_2e
    add-int/2addr v6, v11

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    :goto_7
    const/16 v6, 0xa

    invoke-virtual {v1, v15, v2, v12, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    :cond_2f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v0, v10, :cond_35

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v7, :cond_30

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_8

    :cond_30
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :goto_8
    const/16 v5, 0x8

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_31
    :goto_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v5, v7

    if-gez v0, :cond_34

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v0, 0x2b

    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v5, v6, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_32

    const/4 v6, 0x4

    if-ne v5, v6, :cond_33

    :cond_32
    const/16 v0, 0x2d

    :cond_33
    invoke-virtual {v1, v15, v2, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_34
    const/16 v0, 0x1f4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0x8

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_a
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private revertStatus()V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revertStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2b

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v5, 0x39

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMsgInternal(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setColorMartix(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/4 v4, 0x0

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    const/4 v5, 0x5

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3da7ef9e    # 0.082f

    mul-float/2addr v3, v4

    const/16 v5, 0x8

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    const/16 v5, 0x9

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    const/16 v3, 0xa

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p4

    mul-float/2addr v2, v4

    add-float/2addr v2, p4

    const v4, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    add-float/2addr v2, p5

    const/4 v5, 0x0

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v4, v2

    sub-float v2, v3, p5

    mul-float/2addr v4, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/4 v6, 0x4

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    add-float/2addr v4, p5

    const/4 v6, 0x5

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v5, v4

    sub-float v4, v3, p5

    mul-float/2addr v5, v4

    const/4 v4, 0x6

    aput v5, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v4, 0x7

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3da7ef9e    # 0.082f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x8

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x9

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v1

    sub-float v4, v3, p4

    mul-float/2addr v1, v4

    add-float/2addr v1, p4

    mul-float/2addr v5, v1

    sub-float v1, v3, p5

    mul-float/2addr v5, v1

    add-float/2addr v5, p5

    const/16 v1, 0xa

    aput v5, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setDciP3(Z)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDefaultMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNightMode(Z)V
    .locals 3

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    :cond_1
    return v0
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    :goto_1
    return v0
.end method

.method private setSRGB(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v0}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method private setUp()V
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "colorbalanceservice-night-reading-mode"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v1, v4, v5}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const-string v1, "ColorBalanceService"

    const-string v4, "ColorDisplayController is NULL"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUp: currentUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_daltonizer_enabled"

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v7}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#0 reading mode isReadingModeActivated isReadon = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " colorbalance_stop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v8, :cond_4

    const-string v8, "ColorBalanceService"

    const-string v9, "#1 reading mode had been opened!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    const-string v8, "ColorBalanceService"

    const-string v9, "#1 reading mode had been close!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    :cond_5
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_color_mode_settings_value"

    invoke-static {v8, v9, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_3

    :cond_6
    const/4 v8, 0x4

    if-ne v2, v8, :cond_7

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_7
    :goto_3
    goto :goto_4

    :cond_8
    sget-object v2, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v2}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const-string v2, "ColorBalanceService"

    const-string v8, "#2 reading mode had been close!"

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    const-string v2, "ColorBalanceService"

    const-string v3, "#1 night mode had been opened!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    :goto_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v2, "ColorBalanceService"

    const-string v3, "#3 night mode have to  closed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    return-void
.end method

.method private shading(II)I
    .locals 8

    move v0, p1

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    :goto_0
    if-ge v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_2
    if-le v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_1
    return v0
.end method

.method private shadingSeekBar(II)I
    .locals 11

    move v0, p1

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p2, p1, :cond_2

    :goto_0
    if-gt v0, p2, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_0

    invoke-direct {p0, v0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    :goto_2
    if-gt v0, p2, :cond_1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_1

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    goto :goto_7

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_2
    :goto_4
    if-lt v0, p2, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_3

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5
    sub-int/2addr v0, v1

    goto :goto_4

    :cond_3
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    :goto_6
    if-lt v0, p2, :cond_4

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_4

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x3

    goto :goto_6

    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5
    :goto_7
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mStopSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private tearDown()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-on"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-off"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Night2ReadMode()V
    .locals 4

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night2ReadMode changing night to reading mode mScreenOn_Quick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_0
    return-void
.end method

.method public NightModeActivated(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ColorBalanceService"

    const-string v2, "Gray color is on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/16 v0, 0xa

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NightModeActivated: turn on night mode! mScreenOn_Quick = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_1
    goto :goto_2

    :cond_4
    const-string v4, "ColorBalanceService"

    const-string v5, "NightModeActivated: turn off night mode!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_2
    return-void
.end method

.method public Read2NightMode()V
    .locals 6

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read2NightMode changing read to nighting mode mScreenOn_Quick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v0, 0xe

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_0
    return-void
.end method

.method public ReadModeActivated(Z)V
    .locals 6

    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivated Turning on reading mode mScreenOn_Quick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_0

    :cond_1
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning off reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_0
    return-void
.end method

.method public getAutoTime()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onActivated(Z)V
    .locals 0

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    :cond_2
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 7

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayInversionChange activated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez p1, :cond_3

    const-wide/16 v0, 0x20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_color_mode_settings_value"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_screen_better_value"

    const/16 v6, 0x39

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    :cond_2
    goto :goto_1

    :cond_3
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onModeSettingChange()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 10

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNightModeActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated: reading mode disable App!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current-status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_c

    :cond_3
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string v5, " Turning on night display"

    goto :goto_1

    :cond_4
    const-string v5, " Turning off night display"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_9

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v4, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string v2, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_b
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_c
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v3, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    :goto_1
    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "turn on reading mode!"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "turn off reading mode!"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto :goto_3

    :cond_5
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 7

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v2, -0x14

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, -0x2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_5
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v6, 0x67

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "reaing disable app,ignore!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    :cond_4
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    :goto_2
    monitor-exit v0

    return-void

    :cond_5
    const-string v3, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReadingModeActivatedManual:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " current-status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v8, 0xb

    if-eqz v3, :cond_7

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    :cond_6
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    :cond_7
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_4

    :cond_9
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResetStatus(I)V
    .locals 9

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDisableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x0

    if-nez p1, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v2, "ColorBalanceService"

    const-string v3, "close all color"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    if-eq v1, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_2
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "resume colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x2

    const/4 v6, 0x3

    if-ne p1, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v2, -0x14

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "resume gary color!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_7
    if-ne p1, v2, :cond_8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_8

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    return-void
.end method

.method public sendMsg(I)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
