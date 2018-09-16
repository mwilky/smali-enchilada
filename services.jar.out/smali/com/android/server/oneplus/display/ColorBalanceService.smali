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
.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

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

.field private mFactor:F

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

    .line 91
    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 92
    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 93
    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 212
    const v0, 0x1fa264c

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 238
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    .line 240
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 243
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    .line 289
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    .line 290
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    .line 291
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
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    .line 145
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 146
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 147
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 148
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 149
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 150
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 151
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 152
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 153
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 154
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    .line 155
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 156
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 157
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    .line 158
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 159
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 160
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 161
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    .line 162
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    .line 163
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    .line 165
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 166
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 167
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 168
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 169
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 170
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 171
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 174
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 179
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 182
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 184
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 188
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 191
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 193
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 199
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    .line 202
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 203
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 204
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 226
    const/16 v3, 0x10

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    .line 234
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 242
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    const/16 v4, 0x84

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    .line 261
    const/16 v5, 0x36

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    .line 269
    new-array v6, v5, [I

    fill-array-data v6, :array_3

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    .line 276
    new-array v5, v5, [[I

    const/4 v6, 0x7

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v0

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const/4 v7, 0x6

    new-array v8, v7, [I

    fill-array-data v8, :array_7

    const/4 v9, 0x3

    aput-object v8, v5, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_8

    const/4 v9, 0x4

    aput-object v8, v5, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_9

    const/4 v9, 0x5

    aput-object v8, v5, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_a

    aput-object v8, v5, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_b

    aput-object v8, v5, v6

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    const/16 v8, 0x8

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    const/16 v8, 0x9

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    const/16 v8, 0xa

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_f

    const/16 v8, 0xb

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_10

    const/16 v8, 0xc

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    const/16 v8, 0xd

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_12

    const/16 v8, 0xe

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_13

    const/16 v8, 0xf

    aput-object v6, v5, v8

    new-array v6, v7, [I

    fill-array-data v6, :array_14

    aput-object v6, v5, v3

    new-array v3, v7, [I

    fill-array-data v3, :array_15

    const/16 v6, 0x11

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_16

    const/16 v6, 0x12

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_17

    const/16 v6, 0x13

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_18

    const/16 v6, 0x14

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_19

    const/16 v6, 0x15

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1a

    const/16 v6, 0x16

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1b

    const/16 v6, 0x17

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1c

    const/16 v6, 0x18

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1d

    const/16 v6, 0x19

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1e

    const/16 v6, 0x1a

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_1f

    const/16 v6, 0x1b

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_20

    const/16 v6, 0x1c

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_21

    const/16 v6, 0x1d

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_22

    const/16 v6, 0x1e

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_23

    const/16 v6, 0x1f

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_24

    const/16 v6, 0x20

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_25

    const/16 v6, 0x21

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_26

    const/16 v6, 0x22

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_27

    const/16 v6, 0x23

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_28

    const/16 v6, 0x24

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_29

    const/16 v6, 0x25

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2a

    const/16 v6, 0x26

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2b

    const/16 v6, 0x27

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2c

    const/16 v6, 0x28

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2d

    const/16 v6, 0x29

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2e

    const/16 v6, 0x2a

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_2f

    const/16 v6, 0x2b

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_30

    const/16 v6, 0x2c

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_31

    const/16 v6, 0x2d

    aput-object v3, v5, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_32

    aput-object v3, v5, v1

    new-array v1, v7, [I

    fill-array-data v1, :array_33

    const/16 v3, 0x2f

    aput-object v1, v5, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_34

    const/16 v3, 0x30

    aput-object v1, v5, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_35

    const/16 v3, 0x31

    aput-object v1, v5, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_36

    const/16 v6, 0x32

    aput-object v1, v5, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_37

    const/16 v6, 0x33

    aput-object v1, v5, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_38

    const/16 v6, 0x34

    aput-object v1, v5, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_39

    const/16 v6, 0x35

    aput-object v1, v5, v6

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 299
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 1911
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    .line 1934
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 302
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    .line 303
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 304
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "ColorBalanceThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 306
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    .line 308
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v5, "oem.read_mode.support"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 309
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const/16 v1, 0x5a

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 311
    sput v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    goto :goto_0

    .line 313
    :cond_0
    const/16 v1, 0x50

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 314
    const/16 v1, 0x82

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 316
    :goto_0
    new-array v1, v2, [I

    aput v3, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 318
    sput v7, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 320
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 327
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
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

    .line 3047
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3048
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 3049
    const-string v0, "ColorBalanceService"

    const-string v1, "already disable color mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    return-void

    .line 3052
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 3054
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3055
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-ne v1, v3, :cond_3

    .line 3056
    if-ne v0, v4, :cond_1

    .line 3057
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3058
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3060
    :cond_1
    if-ne v0, v2, :cond_2

    .line 3061
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3062
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3064
    :cond_2
    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_6

    .line 3065
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_0

    .line 3068
    :cond_3
    if-ne v0, v4, :cond_4

    .line 3069
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3070
    :cond_4
    if-ne v0, v2, :cond_5

    .line 3071
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3072
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 3073
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3076
    .end local v0    # "status":I
    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Lcom/oneplus/display/SDManager;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5004(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 86
    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 86
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method private changeNight2ReadingMode(II)V
    .locals 18
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2922
    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2923
    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_11

    .line 2924
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

    .line 2925
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2926
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2927
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2928
    invoke-direct {v1, v5, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2929
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2931
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2932
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2934
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2935
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_6

    .line 2937
    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v11, 0x2710

    const/4 v12, 0x0

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v15, 0x3fefff2e48e8a71eL    # 0.9999

    const/16 v5, 0xf

    const/16 v7, 0xd

    if-nez v0, :cond_5

    .line 2938
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2939
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

    .line 2941
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpl-double v0, v9, v15

    if-lez v0, :cond_1

    .line 2942
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2943
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    .line 2944
    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpg-double v0, v9, v13

    if-gez v0, :cond_2

    .line 2945
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2946
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2947
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

    .line 2949
    :cond_2
    :goto_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2950
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

    .line 2952
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v6, 0x1f40

    const/16 v8, 0x7d0

    if-le v0, v8, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-ge v0, v6, :cond_3

    .line 2953
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 2953
    .local v0, "target":I
    :goto_1
    goto :goto_2

    .line 2954
    .end local v0    # "target":I
    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-le v0, v8, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-ge v0, v6, :cond_4

    .line 2955
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_1

    .line 2957
    :cond_4
    const/16 v0, -0x14

    .line 2958
    .restart local v0    # "target":I
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

    .line 2959
    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2960
    const-string v6, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2962
    .end local v0    # "target":I
    goto/16 :goto_6

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v9, 0x3a98

    if-ne v0, v11, :cond_e

    .line 2963
    const/4 v0, 0x0

    .line 2964
    .local v0, "count":I
    move v6, v3

    .line 2965
    .local v6, "target":I
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v11, v6, :cond_7

    .line 2966
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

    .line 2967
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2968
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v11, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2969
    add-int/lit8 v0, v0, 0x1

    .line 2971
    :cond_7
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c3c6a7f    # 0.0115f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_c

    .line 2972
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2973
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39930c    # 0.7249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_8

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39a027    # 0.7251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_8

    .line 2974
    const/4 v8, 0x5

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2975
    const/4 v8, 0x6

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2976
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

    .line 2977
    :cond_8
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3efae148    # 0.49f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_9

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f028f5c    # 0.51f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_9

    .line 2978
    const/4 v8, 0x7

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2979
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

    .line 2980
    :cond_9
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e7ef9db    # 0.249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_a

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e808312    # 0.251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_a

    .line 2981
    const/16 v8, 0x8

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2982
    const/16 v8, 0x9

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2983
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

    .line 2984
    :cond_a
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v10, v11

    cmpg-double v10, v10, v13

    if-gez v10, :cond_b

    .line 2985
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2986
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2987
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

    .line 2989
    :cond_b
    :goto_4
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2990
    add-int/lit8 v0, v0, 0x2

    .line 2992
    :cond_c
    if-lez v0, :cond_d

    .line 2993
    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_5

    .line 2995
    :cond_d
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2996
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

    .line 2997
    const-string v5, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3000
    .end local v0    # "count":I
    .end local v6    # "target":I
    :goto_5
    goto :goto_6

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-ne v0, v9, :cond_10

    .line 3001
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v0

    cmpl-double v0, v8, v15

    if-lez v0, :cond_f

    .line 3002
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3004
    const/16 v0, 0x4e20

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3005
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const/4 v0, 0x0

    invoke-virtual {v1, v7, v2, v0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    .line 3008
    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3009
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3010
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 3011
    const/4 v0, 0x0

    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_6

    .line 3013
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_11

    .line 3014
    const/4 v0, 0x6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3016
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_11
    :goto_6
    monitor-exit v4

    .line 3021
    return-void

    .line 3020
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeReading2NightMode(II)V
    .locals 16
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2816
    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2817
    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_f

    .line 2818
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

    .line 2819
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2820
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2821
    const-string v0, "ColorBalanceService"

    const-string v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2823
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2824
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2825
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "oem_nightmode_progress_status"

    invoke-static {v4, v10, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 2828
    .local v0, "progress":I
    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2829
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2831
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2832
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2833
    .end local v0    # "progress":I
    goto/16 :goto_4

    .line 2834
    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x1388

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0xf

    const/16 v14, 0xe

    if-nez v0, :cond_2

    .line 2835
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v0

    cmpg-double v0, v4, v11

    if-gez v0, :cond_1

    .line 2836
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2837
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2838
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2839
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2840
    invoke-virtual {v1, v14, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2841
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2843
    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2844
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2845
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2846
    invoke-virtual {v1, v14, v2, v9, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_4

    .line 2848
    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v15, 0x2710

    if-ne v0, v10, :cond_4

    .line 2849
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2850
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "oem_nightmode_progress_status"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 2853
    .local v0, "target":I
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2854
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

    .line 2856
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2857
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2858
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v4

    cmpg-double v4, v4, v11

    if-gez v4, :cond_3

    .line 2859
    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2860
    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2862
    :cond_3
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2863
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2864
    const-string v4, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    .end local v0    # "target":I
    goto/16 :goto_4

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x4e20

    if-ne v0, v15, :cond_e

    .line 2866
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2867
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "oem_nightmode_progress_status"

    invoke-static {v4, v11, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 2870
    .restart local v0    # "target":I
    const/4 v4, 0x0

    .line 2871
    .local v4, "count":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 2872
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v5, v0, :cond_6

    .line 2873
    const/4 v4, 0x1

    .line 2874
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

    .line 2875
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2876
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_1

    .line 2878
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 2881
    :cond_7
    add-int/2addr v4, v8

    .line 2883
    :goto_1
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    .line 2884
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 2885
    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2886
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

    .line 2887
    :cond_8
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    .line 2888
    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2889
    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2890
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

    .line 2891
    :cond_9
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 2892
    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2893
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2894
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

    .line 2896
    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x2

    .line 2897
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2898
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2900
    :cond_b
    if-lt v4, v7, :cond_c

    .line 2901
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    .line 2902
    :cond_c
    if-ne v4, v8, :cond_d

    .line 2903
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_3

    .line 2905
    :cond_d
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2906
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

    .line 2907
    const-string v5, "ColorBalanceService"

    const-string v6, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2910
    .end local v0    # "target":I
    .end local v4    # "count":I
    :goto_3
    goto :goto_4

    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    if-ne v0, v10, :cond_f

    .line 2911
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2912
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2913
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2915
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode done(20000)!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_f
    :goto_4
    monitor-exit v3

    .line 2920
    return-void

    .line 2919
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeMatrix()V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 625
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 628
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 632
    const-string v2, "ColorBalanceService"

    const-string v3, "close matrix!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    return-void

    .line 629
    :cond_2
    :goto_0
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .locals 17
    .param p1, "CTemp"    # I

    move-object/from16 v0, p0

    .line 2106
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2107
    .local v2, "elemIndex":I
    const/16 v3, 0x36

    .line 2108
    .local v3, "elementLen":I
    const/4 v4, 0x0

    .line 2109
    .local v4, "enviroment_step":I
    const/4 v5, 0x0

    .line 2110
    .local v5, "balance":I
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

    .line 2111
    const-string v6, "ColorBalanceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    if-gez v1, :cond_0

    .line 2113
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    return v9

    .line 2117
    :cond_0
    div-int/lit8 v4, v1, 0x64

    .line 2118
    if-ge v4, v13, :cond_1

    .line 2119
    const/4 v4, 0x0

    goto :goto_0

    .line 2120
    :cond_1
    if-lt v4, v13, :cond_2

    if-ge v4, v12, :cond_2

    .line 2121
    const/4 v4, 0x1

    goto :goto_0

    .line 2122
    :cond_2
    if-lt v4, v12, :cond_3

    if-ge v4, v11, :cond_3

    .line 2123
    const/4 v4, 0x2

    goto :goto_0

    .line 2124
    :cond_3
    if-lt v4, v11, :cond_4

    if-ge v4, v10, :cond_4

    .line 2125
    const/4 v4, 0x3

    goto :goto_0

    .line 2126
    :cond_4
    if-lt v4, v10, :cond_5

    if-ge v4, v8, :cond_5

    .line 2127
    const/4 v4, 0x4

    goto :goto_0

    .line 2129
    :cond_5
    const/4 v4, 0x5

    .line 2130
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

    .line 2131
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2133
    .local v6, "status":I
    if-eq v6, v14, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 2137
    :cond_6
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v5, v7, v4

    goto :goto_2

    .line 2134
    :cond_7
    :goto_1
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v5, v7, v4

    .line 2139
    :goto_2
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2140
    .end local v6    # "status":I
    goto/16 :goto_7

    .line 2141
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

    .line 2143
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    if-gez v1, :cond_9

    .line 2145
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return v9

    .line 2149
    :cond_9
    div-int/lit8 v4, v1, 0x64

    .line 2150
    if-ge v4, v13, :cond_a

    .line 2151
    const/4 v4, 0x0

    goto :goto_3

    .line 2152
    :cond_a
    if-lt v4, v13, :cond_b

    if-ge v4, v12, :cond_b

    .line 2153
    const/4 v4, 0x1

    goto :goto_3

    .line 2154
    :cond_b
    if-lt v4, v12, :cond_c

    if-ge v4, v11, :cond_c

    .line 2155
    const/4 v4, 0x2

    goto :goto_3

    .line 2157
    :cond_c
    if-lt v4, v11, :cond_d

    if-ge v4, v10, :cond_d

    .line 2158
    const/4 v4, 0x3

    goto :goto_3

    .line 2160
    :cond_d
    if-lt v4, v10, :cond_e

    if-ge v4, v8, :cond_e

    .line 2161
    const/4 v4, 0x4

    goto :goto_3

    .line 2164
    :cond_e
    const/4 v4, 0x5

    .line 2165
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

    .line 2166
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2168
    .restart local v6    # "status":I
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v7, v7, v4

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v5, v7, v8

    .line 2169
    .end local v6    # "status":I
    goto/16 :goto_7

    .line 2172
    :cond_f
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2173
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v14, "oem_nightmode_progress_status"

    const/16 v15, 0x67

    const/4 v8, -0x2

    invoke-static {v7, v14, v15, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2175
    .local v6, "manualSeekbarPos":I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    .line 2176
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v7, v7, v2

    if-gt v6, v7, :cond_10

    .line 2177
    goto :goto_5

    .line 2179
    :cond_10
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_11

    .line 2180
    add-int/lit8 v2, v3, -0x1

    .line 2181
    goto :goto_5

    .line 2175
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2184
    :cond_12
    :goto_5
    if-ltz v2, :cond_1a

    const/16 v7, 0x35

    if-le v2, v7, :cond_13

    goto/16 :goto_8

    .line 2188
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

    .line 2189
    if-gez v1, :cond_14

    .line 2190
    const-string v7, "ColorBalanceService"

    const-string v8, " The RGB sensor output negative data this is error !  "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    return v9

    .line 2194
    :cond_14
    div-int/lit8 v4, v1, 0x64

    .line 2195
    if-ge v4, v13, :cond_15

    .line 2196
    const/4 v4, 0x0

    goto :goto_6

    .line 2197
    :cond_15
    if-lt v4, v13, :cond_16

    if-ge v4, v12, :cond_16

    .line 2198
    const/4 v4, 0x1

    goto :goto_6

    .line 2199
    :cond_16
    if-lt v4, v12, :cond_17

    if-ge v4, v11, :cond_17

    .line 2200
    const/4 v4, 0x2

    goto :goto_6

    .line 2201
    :cond_17
    if-lt v4, v11, :cond_18

    if-ge v4, v10, :cond_18

    .line 2202
    const/4 v4, 0x3

    goto :goto_6

    .line 2203
    :cond_18
    if-lt v4, v10, :cond_19

    const/16 v7, 0x42

    if-ge v4, v7, :cond_19

    .line 2204
    const/4 v4, 0x4

    goto :goto_6

    .line 2206
    :cond_19
    const/4 v4, 0x5

    .line 2207
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

    .line 2208
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v7, v7, v2

    aget v5, v7, v4

    .line 2209
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2212
    .end local v6    # "manualSeekbarPos":I
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

    .line 2213
    return v5

    .line 2185
    .restart local v6    # "manualSeekbarPos":I
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

    .line 2186
    return v9
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1411
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1412
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1411
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1415
    .local v0, "ldt":Ljava/time/LocalDateTime;
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
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1403
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1404
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1403
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1407
    .local v0, "ldt":Ljava/time/LocalDateTime;
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
    .param p1, "colortemperature"    # I

    .line 2040
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_8

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_8

    .line 2041
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2042
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2043
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2044
    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2047
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 2048
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2049
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2051
    :cond_1
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v0, v2, :cond_6

    .line 2052
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2053
    .local v0, "delta":I
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    .line 2054
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2055
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2056
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v2, v3, :cond_5

    .line 2057
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v2, :cond_2

    .line 2058
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2059
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

    .line 2061
    :cond_2
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2062
    const/16 v2, 0x320

    if-ge v0, v2, :cond_3

    .line 2064
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

    .line 2066
    :cond_3
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2067
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2068
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

    .line 2070
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2071
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 2077
    :cond_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2078
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2080
    .end local v0    # "delta":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 2082
    :cond_6
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2083
    .restart local v0    # "delta":I
    const/16 v2, 0x64

    if-ge v0, v2, :cond_7

    .line 2085
    return-void

    .line 2088
    :cond_7
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2089
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2095
    .end local v0    # "delta":I
    :cond_8
    :goto_1
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 358
    :cond_0
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 446
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
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    move-object/from16 v1, p0

    .line 2353
    move/from16 v2, p2

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2354
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

    .line 2359
    .local v3, "progress":I
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2360
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

    .line 2361
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    .line 2362
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2363
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2364
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2365
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2366
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2367
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2368
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2369
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2370
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2371
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2372
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2373
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2374
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2376
    :cond_0
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2377
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2379
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2380
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2381
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2382
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2387
    :cond_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_17

    .line 2388
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v12, 0x5

    const/16 v13, 0x39

    const/16 v14, 0xf

    const/16 v15, 0x2b

    const/16 v6, 0xa

    if-eqz v0, :cond_d

    .line 2389
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v8, :cond_17

    .line 2390
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2391
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v0, :cond_5

    .line 2392
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2394
    .local v0, "status":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2395
    if-ne v0, v12, :cond_3

    .line 2396
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2397
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2398
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2400
    :cond_3
    if-eq v0, v9, :cond_4

    .line 2401
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2402
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2403
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2404
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2405
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2407
    :cond_4
    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "oem_screen_better_value"

    invoke-static {v7, v9, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2410
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2411
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :goto_0
    invoke-virtual {v1, v6, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2414
    .end local v0    # "status":I
    goto/16 :goto_a

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v8, :cond_8

    .line 2415
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2416
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v15, :cond_6

    .line 2417
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2418
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2420
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2421
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_2

    .line 2423
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

    .line 2425
    :goto_2
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2426
    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v9, :cond_b

    .line 2428
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v3, :cond_9

    .line 2429
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2430
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

    .line 2432
    :cond_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v3, :cond_a

    const/16 v16, -0x1

    goto :goto_3

    :cond_a
    move/from16 v16, v10

    :goto_3
    move/from16 v0, v16

    .line 2433
    .local v0, "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2435
    .end local v0    # "delta":I
    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2436
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2437
    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v7, :cond_17

    .line 2438
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2440
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2441
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2442
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2445
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2447
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2448
    const-string v0, "ColorBalanceService"

    const-string v5, "#2 night mode had been opened!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2450
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2451
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2452
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2453
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2454
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2456
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    .line 2460
    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v7, :cond_17

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_17

    .line 2461
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v0, :cond_10

    .line 2462
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v15, v0, :cond_e

    .line 2463
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2464
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2465
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2467
    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v15, :cond_f

    const/16 v16, -0x1

    goto :goto_5

    :cond_f
    move/from16 v16, v10

    :goto_5
    move/from16 v0, v16

    .line 2468
    .restart local v0    # "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2469
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2470
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2471
    .end local v0    # "delta":I
    goto/16 :goto_a

    .line 2472
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v10, :cond_12

    .line 2473
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v0

    .line 2474
    .local v0, "status":I
    if-eq v0, v9, :cond_11

    .line 2475
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2476
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2477
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2479
    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2480
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2481
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2483
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2484
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2485
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :goto_6
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2488
    .end local v0    # "status":I
    goto/16 :goto_a

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v8, :cond_15

    .line 2489
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v0, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    .line 2492
    .local v0, "value":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v5, v0, :cond_13

    .line 2493
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2494
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2495
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2497
    :cond_13
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v0, :cond_14

    const/16 v16, -0x1

    goto :goto_7

    :cond_14
    move/from16 v16, v10

    :goto_7
    move/from16 v5, v16

    .line 2498
    .local v5, "delta":I
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2499
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v7, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2500
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2502
    .end local v0    # "value":I
    .end local v5    # "delta":I
    :goto_8
    goto :goto_a

    :cond_15
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v9, :cond_17

    .line 2503
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v0, v6, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2505
    .local v0, "status":I
    if-eq v0, v12, :cond_16

    .line 2506
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_9

    .line 2508
    :cond_16
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2509
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2510
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2512
    :goto_9
    const-string v6, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2515
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v6, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2523
    .end local v0    # "status":I
    :cond_17
    :goto_a
    monitor-exit v4

    .line 2524
    return-void

    .line 2523
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 409
    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 414
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    .line 419
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 421
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    .line 422
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 437
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 439
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 443
    :cond_3
    :goto_1
    return-void
.end method

.method private oneplusSetColorBalance(II)V
    .locals 50
    .param p1, "iValue"    # I
    .param p2, "delta"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3078
    move/from16 v3, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 3079
    .local v11, "r":D
    const-wide/16 v4, 0x0

    .line 3080
    .local v4, "g":D
    const-wide/16 v6, 0x0

    .line 3081
    .local v6, "b":D
    int-to-double v13, v2

    .line 3082
    .local v13, "value":D
    int-to-double v9, v3

    .line 3083
    .local v9, "dDelta":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 3084
    .local v15, "factor":D
    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3085
    :try_start_0
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-wide/from16 v17, v4

    .line 3085
    .end local v4    # "g":D
    .local v17, "g":D
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

    .line 3164
    :cond_0
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    goto/16 :goto_f

    .line 3241
    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3241
    .end local v9    # "dDelta":D
    .end local v17    # "g":D
    .restart local v4    # "g":D
    .local v28, "dDelta":D
    :goto_0
    move-wide/from16 v4, v17

    goto/16 :goto_20

    .line 3086
    .end local v4    # "g":D
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    .restart local v17    # "g":D
    :cond_1
    :goto_1
    const/16 v0, 0x64

    if-le v2, v0, :cond_2

    const/16 v0, -0x64

    if-ge v2, v0, :cond_2

    .line 3087
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 3090
    :cond_2
    cmpg-double v0, v13, v25

    if-ltz v0, :cond_8

    cmpl-double v0, v13, v25

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 3125
    :cond_3
    const-wide v19, -0x41554c77250726f2L    # -7.9576095929934E-7

    const-wide v25, 0x3ff0958debe66d88L    # 1.0365123

    const-wide v28, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    const-wide v30, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    if-nez v3, :cond_5

    .line 3128
    mul-double v30, v30, v13

    mul-double v30, v30, v13

    mul-double v28, v28, v13

    add-double v30, v30, v28

    add-double v4, v30, v25

    .line 3129
    .end local v11    # "r":D
    .local v4, "r":D
    mul-double v19, v19, v13

    mul-double v19, v19, v13

    const-wide v11, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double/2addr v11, v13

    add-double v19, v19, v11

    const-wide v11, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v19, v11

    .line 3130
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3132
    :try_start_3
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_4

    .line 3133
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3136
    :cond_4
    nop

    .line 3241
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

    .line 3134
    :catch_0
    move-exception v0

    .line 3135
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object/from16 v39, v0

    :try_start_4
    const-string v0, "ColorBalanceService"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3135
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v39, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v40, v4

    :try_start_5
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3135
    .end local v4    # "r":D
    .local v40, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3136
    .end local v39    # "e":Ljava/lang/NullPointerException;
    nop

    .line 3241
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :goto_2
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3241
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_20

    .line 3241
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :catchall_3
    move-exception v0

    move-wide/from16 v40, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3241
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_20

    .line 3138
    .end local v40    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_5
    const/16 v27, 0x0

    .line 3138
    .local v27, "i":I
    :goto_3
    move/from16 v5, v27

    .line 3138
    .end local v27    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_7

    .line 3139
    sub-double v15, v15, v21

    .line 3140
    move/from16 v42, v5

    int-to-double v4, v2

    .line 3140
    .end local v5    # "i":I
    .local v42, "i":I
    mul-double v32, v9, v15

    sub-double v13, v4, v32

    .line 3143
    mul-double v4, v30, v13

    mul-double/2addr v4, v13

    mul-double v32, v28, v13

    add-double v4, v4, v32

    add-double v4, v4, v25

    .line 3144
    .end local v11    # "r":D
    .restart local v4    # "r":D
    mul-double v11, v19, v13

    mul-double/2addr v11, v13

    const-wide v32, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v32, v32, v13

    add-double v11, v11, v32

    const-wide v32, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v32

    .line 3145
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3148
    :try_start_6
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_6

    .line 3149
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3152
    :cond_6
    nop

    .line 3154
    move-wide/from16 v44, v4

    goto :goto_4

    .line 3150
    :catch_1
    move-exception v0

    .line 3151
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v43, v0

    :try_start_7
    const-string v0, "ColorBalanceService"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 3151
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v43, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v44, v4

    :try_start_8
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3151
    .end local v4    # "r":D
    .local v44, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 3154
    .end local v43    # "e":Ljava/lang/NullPointerException;
    :goto_4
    const-wide/16 v4, 0xf

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 3157
    goto :goto_5

    .line 3155
    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    .line 3156
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 3138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5
    add-int/lit8 v27, v42, 0x1

    .line 3138
    .end local v42    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v17, v11

    move-wide/from16 v11, v44

    const/4 v4, 0x5

    goto :goto_3

    .line 3241
    .end local v27    # "i":I
    :catchall_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    goto/16 :goto_20

    .line 3241
    .end local v44    # "r":D
    .restart local v4    # "r":D
    :catchall_5
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    .line 3241
    .end local v4    # "r":D
    .restart local v44    # "r":D
    goto/16 :goto_20

    .line 3241
    .end local v44    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_7
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    goto/16 :goto_1f

    .line 3091
    :cond_8
    :goto_6
    const-wide/16 v4, 0xf

    if-nez v3, :cond_a

    .line 3094
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3095
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3097
    .end local v6    # "b":D
    .local v19, "b":D
    :try_start_b
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_9

    .line 3098
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-wide v5, v11

    move-object/from16 v23, v8

    move-wide/from16 v7, v17

    move-wide/from16 v28, v9

    move-wide/from16 v9, v19

    .line 3098
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :try_start_c
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    .line 3099
    :catch_3
    move-exception v0

    goto :goto_8

    .line 3101
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :cond_9
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3101
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :goto_7
    goto :goto_9

    .line 3241
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3241
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    goto/16 :goto_20

    .line 3099
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catch_4
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3100
    .end local v9    # "dDelta":D
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v28    # "dDelta":D
    :goto_8
    :try_start_d
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 3100
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_7

    .line 3241
    :goto_9
    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_1f

    :catchall_7
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_20

    .line 3104
    .end local v19    # "b":D
    .end local v28    # "dDelta":D
    .restart local v6    # "b":D
    .restart local v9    # "dDelta":D
    :cond_a
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3104
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    const/16 v27, 0x0

    .line 3104
    .restart local v27    # "i":I
    :goto_a
    move/from16 v9, v27

    .line 3104
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v8, 0x5

    if-ge v9, v8, :cond_c

    .line 3105
    sub-double v15, v15, v21

    .line 3106
    int-to-double v4, v2

    mul-double v19, v28, v15

    sub-double v13, v4, v19

    .line 3109
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3110
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3112
    .end local v6    # "b":D
    .restart local v19    # "b":D
    :try_start_e
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_b

    .line 3113
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

    .line 3113
    .end local v11    # "r":D
    .local v46, "r":D
    move/from16 v24, v9

    move-wide/from16 v9, v19

    .line 3113
    .end local v9    # "i":I
    .local v24, "i":I
    :try_start_f
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_b

    .line 3114
    :catch_5
    move-exception v0

    goto :goto_c

    .line 3116
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :cond_b
    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3116
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_b
    goto :goto_d

    .line 3241
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v11    # "r":D
    :catchall_8
    move-exception v0

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3241
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_20

    .line 3114
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :catch_6
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3115
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_c
    :try_start_10
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 3118
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_d
    :try_start_11
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 3121
    goto :goto_e

    .line 3119
    :catch_7
    move-exception v0

    move-object v4, v0

    .line 3120
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 3104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_e
    add-int/lit8 v27, v24, 0x1

    .line 3104
    .end local v24    # "i":I
    .restart local v27    # "i":I
    move-wide v4, v11

    move-wide/from16 v6, v19

    move-wide/from16 v11, v46

    goto/16 :goto_a

    .line 3241
    .end local v27    # "i":I
    :catchall_9
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto :goto_10

    .line 3241
    .end local v19    # "b":D
    .end local v46    # "r":D
    .restart local v6    # "b":D
    .restart local v11    # "r":D
    :cond_c
    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3241
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_1f

    .line 3241
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .local v9, "dDelta":D
    .restart local v11    # "r":D
    :catchall_a
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3241
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    goto/16 :goto_20

    .line 3164
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .restart local v9    # "dDelta":D
    .restart local v11    # "r":D
    :cond_d
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3164
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    :goto_f
    const/16 v0, 0x64

    if-le v2, v0, :cond_e

    const/16 v0, -0x64

    if-ge v2, v0, :cond_e

    .line 3165
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

    .line 3166
    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    return-void

    .line 3241
    :catchall_b
    move-exception v0

    move-wide/from16 v4, v17

    .line 3241
    .end local v17    # "g":D
    .end local v46    # "r":D
    .local v4, "g":D
    .restart local v11    # "r":D
    :goto_10
    move-wide/from16 v11, v46

    goto/16 :goto_20

    .line 3168
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_e
    cmpg-double v0, v13, v25

    const-wide v19, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    if-ltz v0, :cond_14

    cmpl-double v0, v13, v25

    if-nez v0, :cond_f

    goto/16 :goto_17

    .line 3205
    :cond_f
    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v3, :cond_11

    .line 3208
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

    .line 3209
    .end local v46    # "r":D
    .local v8, "r":D
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

    .line 3210
    .end local v17    # "g":D
    .restart local v4    # "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3212
    :try_start_14
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_10

    .line 3213
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v8

    move-wide/from16 v33, v4

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 3216
    :cond_10
    :goto_11
    goto :goto_12

    .line 3241
    :catchall_c
    move-exception v0

    move-wide v11, v8

    goto/16 :goto_20

    .line 3214
    :catch_8
    move-exception v0

    .line 3215
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_15
    const-string v10, "ColorBalanceService"

    const-string/jumbo v11, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 3215
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_11

    .line 3241
    :goto_12
    move-wide v11, v8

    goto/16 :goto_1f

    .line 3218
    .end local v4    # "g":D
    .end local v8    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_11
    const/16 v27, 0x0

    .line 3218
    .restart local v27    # "i":I
    :goto_13
    move/from16 v8, v27

    .line 3218
    .end local v27    # "i":I
    .local v8, "i":I
    const/4 v9, 0x5

    if-ge v8, v9, :cond_13

    .line 3219
    sub-double v15, v15, v21

    .line 3220
    int-to-double v9, v2

    mul-double v24, v28, v15

    sub-double v13, v9, v24

    .line 3223
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

    .line 3224
    .end local v46    # "r":D
    .local v9, "r":D
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

    .line 3225
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3227
    :try_start_16
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_12

    .line 3228
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v9

    move-wide/from16 v33, v17

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 3231
    :cond_12
    goto :goto_14

    .line 3241
    .end local v8    # "i":I
    :catchall_d
    move-exception v0

    move-wide v11, v9

    goto/16 :goto_0

    .line 3229
    .restart local v8    # "i":I
    :catch_9
    move-exception v0

    .line 3230
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    :try_start_17
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 3233
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_14
    :try_start_18
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 3236
    goto :goto_15

    .line 3234
    :catch_a
    move-exception v0

    move-object v4, v0

    .line 3235
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 3218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_15
    add-int/lit8 v27, v8, 0x1

    .line 3218
    .end local v8    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v46, v9

    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    goto/16 :goto_13

    .line 3241
    .end local v9    # "r":D
    .end local v27    # "i":I
    .restart local v46    # "r":D
    :cond_13
    move-wide/from16 v4, v17

    .line 3241
    .end local v17    # "g":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v11    # "r":D
    :goto_16
    move-wide/from16 v11, v46

    goto/16 :goto_1f

    .line 3169
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_14
    :goto_17
    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    if-nez v3, :cond_16

    .line 3172
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

    .line 3173
    .end local v17    # "g":D
    .local v11, "g":D
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

    .line 3176
    .end local v6    # "b":D
    .local v17, "b":D
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_15

    .line 3177
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-wide/from16 v5, v46

    move-wide v7, v11

    move-wide/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 3180
    :cond_15
    :goto_18
    goto :goto_19

    .line 3241
    :catchall_e
    move-exception v0

    move-wide v4, v11

    move-wide/from16 v6, v17

    goto/16 :goto_10

    .line 3178
    :catch_b
    move-exception v0

    .line 3179
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1b
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 3179
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_18

    .line 3241
    :goto_19
    move-wide v4, v11

    move-wide/from16 v6, v17

    goto :goto_16

    .line 3183
    .end local v11    # "g":D
    .restart local v6    # "b":D
    .local v17, "g":D
    :cond_16
    const/16 v27, 0x0

    .line 3183
    .restart local v27    # "i":I
    :goto_1a
    move/from16 v9, v27

    .line 3183
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v10, 0x5

    if-ge v9, v10, :cond_13

    .line 3184
    sub-double v15, v15, v21

    .line 3185
    int-to-double v4, v2

    mul-double v26, v28, v15

    sub-double v13, v4, v26

    .line 3188
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

    .line 3189
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

    .line 3192
    .end local v6    # "b":D
    .local v26, "b":D
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_17

    .line 3193
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    move-wide/from16 v5, v46

    move-wide/from16 v7, v17

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v26

    .line 3193
    .end local v9    # "i":I
    .local v30, "i":I
    :try_start_1d
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    goto :goto_1b

    .line 3194
    :catch_c
    move-exception v0

    goto :goto_1c

    .line 3196
    .end local v30    # "i":I
    .restart local v9    # "i":I
    :cond_17
    move/from16 v30, v9

    move/from16 v31, v10

    .line 3196
    .end local v9    # "i":I
    .restart local v30    # "i":I
    :goto_1b
    goto :goto_1d

    .line 3241
    .end local v30    # "i":I
    :catchall_f
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v26

    goto/16 :goto_10

    .line 3194
    .restart local v9    # "i":I
    :catch_d
    move-exception v0

    move/from16 v30, v9

    move/from16 v31, v10

    .line 3195
    .end local v9    # "i":I
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v30    # "i":I
    :goto_1c
    :try_start_1e
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 3198
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1d
    :try_start_1f
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    .line 3201
    goto :goto_1e

    .line 3199
    :catch_e
    move-exception v0

    move-object v4, v0

    .line 3200
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 3183
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1e
    add-int/lit8 v0, v30, 0x1

    .line 3183
    .end local v30    # "i":I
    .local v0, "i":I
    move-wide/from16 v6, v26

    move/from16 v27, v0

    goto/16 :goto_1a

    .line 3241
    .end local v0    # "i":I
    .end local v17    # "g":D
    .end local v26    # "b":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v6    # "b":D
    .local v11, "r":D
    :goto_1f
    :try_start_21
    monitor-exit v23

    .line 3242
    return-void

    .line 3241
    .end local v28    # "dDelta":D
    .local v9, "dDelta":D
    :catchall_10
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    .line 3241
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
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
    .locals 1
    .param p1, "mode"    # I

    .line 644
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    .line 646
    :cond_0
    return-void
.end method

.method private opSetColorBalance(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "delta"    # I

    .line 639
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetColorBalance: value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    .line 641
    return-void
.end method

.method private opSetDefaultModesId(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 649
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetDefaultModesId(I)V

    .line 651
    :cond_0
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 7

    .line 1983
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1984
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1985
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1986
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1987
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1988
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1989
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

    .line 1990
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_0

    .line 1991
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 1992
    .local v1, "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1993
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1994
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1995
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 1996
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1997
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

    .line 2000
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
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

    .line 2001
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2002
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2003
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2004
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2005
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2006
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

    .line 2007
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_2

    .line 2008
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2009
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2010
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2011
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2012
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_2

    .line 2013
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2014
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

    .line 2017
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
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

    .line 2018
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2019
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2020
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2021
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2022
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2023
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

    .line 2024
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_4

    .line 2025
    const/16 v1, 0x12c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2026
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2027
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2028
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2029
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_4

    .line 2030
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2031
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

    .line 2035
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return-void
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 3301
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3302
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3303
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3306
    .local v3, "target":I
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

    .line 3307
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 3310
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v4, v6, :cond_0

    .line 3312
    const/16 v5, 0x2b

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3313
    invoke-direct {p0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3315
    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3317
    :try_start_0
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3318
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

    .line 3319
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v7, v3, :cond_1

    const/4 v6, -0x1

    nop

    .line 3320
    .local v6, "delta":I
    :cond_1
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 3321
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3323
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v7, v3, :cond_2

    .line 3324
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_3

    .line 3325
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 3326
    .local v7, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->what:I

    .line 3327
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3328
    .local v8, "bundle":Landroid/os/Bundle;
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 3329
    iget v9, p1, Landroid/os/Message;->arg2:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 3330
    const-string v9, "delay"

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3331
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3332
    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3333
    .end local v7    # "msg2":Landroid/os/Message;
    .end local v8    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 3335
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

    .line 3338
    .end local v6    # "delta":I
    :cond_3
    :goto_0
    monitor-exit v5

    .line 3339
    return-void

    .line 3338
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 3245
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3246
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3247
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3248
    .local v3, "target":I
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3249
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

    .line 3252
    .local v4, "currentSeekBar":I
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v4, v5, :cond_2

    .line 3253
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v3, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 3254
    .local v5, "delta":I
    :goto_0
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3255
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3256
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_1

    .line 3257
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v6, :cond_2

    .line 3258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 3259
    .local v6, "msg2":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v6, Landroid/os/Message;->what:I

    .line 3260
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3261
    .local v7, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 3262
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    .line 3263
    const-string v8, "delay"

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3264
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3265
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3266
    .end local v6    # "msg2":Landroid/os/Message;
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3268
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

    .line 3271
    .end local v5    # "delta":I
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 3273
    return-void
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3275
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3276
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3277
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3279
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v4, :cond_2

    .line 3280
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, v3, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 3281
    .local v4, "delta":I
    :goto_0
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3282
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3284
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v5, v3, :cond_1

    .line 3285
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v5, :cond_2

    .line 3286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3287
    .local v5, "msg2":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3288
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3289
    .local v6, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3290
    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3291
    const-string v7, "delay"

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3292
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3293
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3294
    .end local v5    # "msg2":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3296
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

    .line 3299
    .end local v4    # "delta":I
    :cond_2
    :goto_1
    return-void
.end method

.method private processScreenOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 3023
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3024
    :try_start_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3026
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3030
    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3031
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v5, -0x2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3033
    .local v2, "status_new":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 3034
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3035
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 3035
    .end local v2    # "status_new":I
    goto :goto_1

    .line 3028
    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3039
    :cond_4
    :goto_1
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v2, 0x1fa2639

    if-ne v1, v2, :cond_6

    .line 3040
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    goto :goto_2

    .line 3042
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3044
    :cond_6
    :goto_2
    monitor-exit v0

    .line 3045
    return-void

    .line 3044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processSetColorBalance(I)V
    .locals 4
    .param p1, "setColorBalance"    # I

    .line 3368
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 3369
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

    .line 3370
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    .line 3371
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v1, :cond_0

    .line 3372
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3375
    :cond_0
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .locals 17
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 2527
    move/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2528
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

    .line 2529
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_34

    .line 2530
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2531
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2532
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2533
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2534
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2535
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2537
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2538
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2539
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2540
    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2542
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2543
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2544
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2546
    :cond_0
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto/16 :goto_a

    .line 2549
    :cond_1
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2550
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2551
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2552
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2553
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2554
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2558
    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_34

    .line 2559
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v7, 0x5

    const/4 v13, -0x2

    const/16 v15, 0xb

    if-eqz v0, :cond_19

    .line 2560
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_4

    .line 2561
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2562
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2564
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2565
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2566
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    monitor-exit v4

    return-void

    .line 2569
    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v9, :cond_34

    .line 2570
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2571
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v0, :cond_7

    .line 2572
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2573
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2575
    .local v0, "status":I
    if-ne v0, v7, :cond_5

    .line 2576
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2577
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2578
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2580
    :cond_5
    if-eq v0, v6, :cond_6

    .line 2581
    const/16 v5, 0x3a98

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2582
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2583
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2585
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

    .line 2588
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v5, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2589
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2590
    invoke-virtual {v1, v15, v2, v12, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2591
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2593
    .end local v0    # "status":I
    :cond_7
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x2710

    if-ne v0, v13, :cond_a

    .line 2594
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_8

    .line 2595
    const/16 v0, 0x3a98

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2596
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2597
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2599
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

    .line 2600
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2601
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2604
    :cond_a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x3a98

    if-ne v0, v13, :cond_13

    .line 2605
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_d

    .line 2606
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2607
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2608
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2609
    const/16 v0, 0x2b

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2611
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_b

    .line 2612
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 2612
    .local v0, "target":I
    :goto_0
    goto :goto_1

    .line 2613
    .end local v0    # "target":I
    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_c

    .line 2614
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_0

    .line 2616
    :cond_c
    const/16 v0, -0x14

    .line 2617
    .restart local v0    # "target":I
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

    .line 2618
    const/16 v5, 0x96

    invoke-virtual {v1, v15, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2619
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    .end local v0    # "target":I
    goto/16 :goto_a

    .line 2621
    :cond_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_e

    .line 2622
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

    .line 2624
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_2

    .line 2626
    :cond_e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39930c    # 0.7249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39a027    # 0.7251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    .line 2627
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

    .line 2628
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2629
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_2

    .line 2631
    :cond_f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    .line 2632
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2633
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

    .line 2634
    :cond_10
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_11

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_11

    .line 2635
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2636
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2638
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

    .line 2640
    :cond_11
    :goto_2
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2641
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_12

    .line 2642
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2644
    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2645
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2646
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2648
    :cond_13
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v10, :cond_16

    .line 2649
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_14

    .line 2651
    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2652
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2653
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2655
    invoke-virtual {v1, v15, v2, v3, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2656
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

    .line 2658
    :cond_14
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, v3, :cond_15

    const/4 v11, -0x1

    nop

    :cond_15
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2659
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2660
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2662
    :cond_16
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x7530

    if-ne v0, v6, :cond_34

    .line 2663
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v6, v10

    if-lez v0, :cond_17

    .line 2664
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2665
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2666
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2667
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2668
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2670
    :cond_17
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2671
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2672
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2673
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2677
    :cond_18
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2678
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2679
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2680
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2681
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2682
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2683
    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2685
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2686
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2687
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_a

    .line 2691
    :cond_19
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v14, 0x8

    if-eq v0, v14, :cond_34

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_34

    .line 2692
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v0, :cond_30

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_1a

    goto/16 :goto_9

    .line 2713
    :cond_1a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x3e8

    if-ne v0, v14, :cond_20

    .line 2714
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_1b

    .line 2715
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2716
    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2717
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

    .line 2718
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2720
    :cond_1b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1c

    const/4 v6, -0x1

    goto :goto_3

    :cond_1c
    move v6, v11

    :goto_3
    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2721
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v0, v3, :cond_1e

    .line 2722
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1d

    const/4 v11, -0x1

    nop

    :cond_1d
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2723
    :cond_1e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v5, :cond_1f

    .line 2724
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2727
    :cond_1f
    invoke-virtual {v1, v15, v2, v3, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2729
    :cond_20
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x9c4

    if-ne v0, v5, :cond_26

    .line 2730
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_21

    .line 2731
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2732
    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2733
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2736
    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d48b439    # 0.049f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_22

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d50e560    # 0.051f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_22

    .line 2737
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

    .line 2738
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_4

    .line 2739
    :cond_22
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_23

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_23

    .line 2740
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2741
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2742
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

    .line 2743
    :cond_23
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_24

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_24

    .line 2744
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2745
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2746
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

    .line 2747
    :cond_24
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f3fbe77    # 0.749f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_25

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f404189    # 0.751f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_25

    .line 2748
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2749
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2750
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

    .line 2752
    :cond_25
    :goto_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2753
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2755
    const/16 v0, 0xf

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_a

    .line 2757
    :cond_26
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x1388

    if-ne v0, v5, :cond_2a

    .line 2758
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2760
    .local v0, "status":I
    if-ne v0, v11, :cond_27

    .line 2761
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2762
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2763
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2764
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2765
    :cond_27
    const/4 v5, 0x2

    if-eq v0, v5, :cond_29

    const/4 v5, 0x4

    if-ne v0, v5, :cond_28

    goto :goto_5

    .line 2771
    :cond_28
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2772
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2773
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2774
    const/16 v5, 0x2b

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2775
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2776
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2766
    :cond_29
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2767
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2769
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :goto_6
    invoke-virtual {v1, v15, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_a

    .line 2779
    .end local v0    # "status":I
    :cond_2a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x2710

    if-ne v0, v5, :cond_2e

    .line 2780
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2782
    .restart local v0    # "status":I
    const/16 v5, 0x2b

    .line 2783
    .local v5, "value":I
    if-ne v0, v6, :cond_2b

    .line 2784
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    const/16 v8, 0x2b

    invoke-static {v6, v7, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v5, v6, 0x64

    .line 2787
    :cond_2b
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v6, v5, :cond_2c

    .line 2788
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2789
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2791
    :cond_2c
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v5, :cond_2d

    const/4 v11, -0x1

    nop

    :cond_2d
    add-int/2addr v6, v11

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2792
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2794
    :goto_7
    const/16 v6, 0xa

    invoke-virtual {v1, v15, v2, v12, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2795
    .end local v5    # "value":I
    goto/16 :goto_a

    .line 2795
    .end local v0    # "status":I
    :cond_2e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v0, v10, :cond_34

    .line 2796
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2799
    .restart local v0    # "status":I
    if-eq v0, v7, :cond_2f

    .line 2800
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_8

    .line 2802
    :cond_2f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2803
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2804
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2806
    :goto_8
    const/16 v5, 0x8

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2807
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    .end local v0    # "status":I
    goto :goto_a

    .line 2693
    :cond_30
    :goto_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v5, v7

    if-gez v0, :cond_33

    .line 2694
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2695
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2696
    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2697
    const/16 v0, 0x2b

    .line 2698
    .local v0, "target":I
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v5, v6, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2700
    .local v5, "status":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_31

    const/4 v6, 0x4

    if-ne v5, v6, :cond_32

    .line 2701
    :cond_31
    const/16 v0, 0x2d

    .line 2703
    :cond_32
    invoke-virtual {v1, v15, v2, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2704
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    .end local v0    # "target":I
    goto :goto_a

    .line 2706
    .end local v5    # "status":I
    :cond_33
    const/16 v0, 0x1f4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2707
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2708
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2709
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2710
    const/16 v0, 0x8

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2711
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

    .line 2813
    :cond_34
    :goto_a
    monitor-exit v4

    .line 2814
    return-void

    .line 2813
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private revertStatus()V
    .locals 6

    .line 654
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 655
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 660
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 662
    .local v0, "status":I
    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revertStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v1, 0x2b

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 724
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 725
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 726
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 727
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 728
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 729
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 730
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 731
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    goto/16 :goto_0

    .line 711
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 712
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 713
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 714
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 715
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 716
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 717
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 718
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 720
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 721
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 722
    goto/16 :goto_0

    .line 703
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 704
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 705
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 706
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 707
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 708
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 709
    goto/16 :goto_0

    .line 687
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 688
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 689
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 690
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 691
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 692
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 693
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 694
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v5, 0x39

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 697
    .local v1, "value":I
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 698
    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 699
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 700
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    goto :goto_0

    .line 678
    .end local v1    # "value":I
    :pswitch_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 679
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 680
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 682
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 683
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 684
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 685
    goto :goto_0

    .line 666
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 667
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 668
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 669
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 670
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 671
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 672
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 673
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 674
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 675
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 676
    nop

    .line 735
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
    .param p1, "v"    # I

    .line 3505
    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3506
    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 556
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 557
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 562
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 567
    :cond_1
    :goto_0
    return-void
.end method

.method private setColorMartix(F)V
    .locals 6
    .param p1, "factor"    # F

    .line 3669
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/4 v4, 0x0

    aput v2, v0, v4

    .line 3670
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 3671
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    .line 3672
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3673
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aput v3, v0, v5

    .line 3674
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    const/4 v5, 0x5

    aput v3, v0, v5

    .line 3675
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    .line 3676
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 3677
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3da7ef9e    # 0.082f

    mul-float/2addr v3, v4

    const/16 v5, 0x8

    aput v3, v0, v5

    .line 3678
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    const/16 v5, 0x9

    aput v3, v0, v5

    .line 3679
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    const/16 v3, 0xa

    aput v4, v0, v3

    .line 3680
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 3681
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 3682
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 3683
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 3684
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 3685
    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 7
    .param p1, "RED"    # F
    .param p2, "Green"    # F
    .param p3, "Blue"    # F
    .param p4, "factor"    # F
    .param p5, "factor2"    # F

    .line 3687
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

    .line 3688
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

    .line 3689
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

    .line 3690
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 3691
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

    .line 3692
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

    .line 3693
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

    .line 3694
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v4, 0x7

    aput v2, v0, v4

    .line 3695
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

    .line 3696
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

    .line 3697
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

    .line 3698
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 3699
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 3700
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 3701
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 3702
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 3703
    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 5
    .param p1, "factor"    # F

    .line 3705
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3707
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3709
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3712
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3713
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 3714
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 3715
    :cond_1
    return-void

    .line 3710
    :cond_2
    :goto_0
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 5

    .line 612
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 614
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 617
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_1

    .line 620
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 621
    :cond_1
    return-void

    .line 618
    :cond_2
    :goto_0
    return-void
.end method

.method private setDciP3(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 543
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 544
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 549
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 554
    :cond_1
    :goto_0
    return-void
.end method

.method private setDefaultMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 597
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 599
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 604
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 610
    :cond_1
    :goto_0
    return-void
.end method

.method private setNightMode(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 583
    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 584
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 589
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 595
    :cond_1
    :goto_0
    return-void
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 461
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 464
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 465
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 467
    :cond_1
    return v0
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 449
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 451
    .local v0, "status":I
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_1

    .line 452
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 458
    :goto_1
    return v0
.end method

.method private setSRGB(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 570
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 571
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v0}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    .line 576
    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 581
    :cond_1
    :goto_0
    return-void
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 1883
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1885
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v2, :cond_2

    .line 1886
    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1888
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 1889
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1891
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1893
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1894
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return v1

    .line 1899
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1900
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1901
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    .line 1902
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1903
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1904
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return v1

    .line 1909
    :cond_2
    return v0
.end method

.method private setUp()V
    .locals 7

    .line 471
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 473
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "colorbalanceservice-night-reading-mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 475
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v1, :cond_0

    .line 476
    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v1, v3, v4}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 477
    const-string v1, "ColorBalanceService"

    const-string v3, "ColorDisplayController is NULL"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 482
    const-string v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUp: currentUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 490
    .local v1, "isNightOn":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 491
    .local v3, "isReadon":Ljava/lang/Boolean;
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#0 reading mode isReadingModeActivated isReadon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 493
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 494
    const-string v4, "ColorBalanceService"

    const-string v6, "#1 reading mode had been opened!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_0

    .line 497
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 498
    const-string v4, "ColorBalanceService"

    const-string v6, "#1 reading mode had been close!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 501
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 502
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    goto :goto_1

    .line 505
    :cond_2
    sget-object v4, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v4}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 506
    const-string v4, "ColorBalanceService"

    const-string v6, "#2 reading mode had been close!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v4, :cond_5

    .line 509
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    .line 510
    const-string v2, "ColorBalanceService"

    const-string v4, "#1 night mode had been opened!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    .line 513
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 516
    :goto_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_3

    .line 519
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 520
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 521
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 522
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 523
    const-string v2, "ColorBalanceService"

    const-string v4, "#3 night mode have to  closed!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 526
    return-void
.end method

.method private shading(II)I
    .locals 8
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2270
    move v0, p1

    .line 2271
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2272
    .local v1, "delta":I
    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    .line 2273
    :goto_0
    if-ge v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    .line 2274
    add-int/2addr v0, v1

    .line 2275
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2276
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :goto_1
    goto :goto_0

    .line 2279
    :catch_0
    move-exception v5

    .line 2280
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2280
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2285
    :cond_0
    :goto_2
    if-le v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    .line 2286
    sub-int/2addr v0, v1

    .line 2287
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2288
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2293
    :goto_3
    goto :goto_2

    .line 2291
    :catch_1
    move-exception v5

    .line 2292
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2292
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 2296
    :cond_1
    return v0
.end method

.method private shadingSeekBar(II)I
    .locals 11
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2217
    move v0, p1

    .line 2218
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2219
    .local v1, "delta":I
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p2, p1, :cond_2

    .line 2222
    :goto_0
    if-gt v0, p2, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_0

    .line 2223
    invoke-direct {p0, v0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2224
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    goto :goto_1

    .line 2227
    :catch_0
    move-exception v8

    .line 2228
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2222
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 2231
    :cond_0
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    .line 2232
    :goto_2
    if-gt v0, p2, :cond_1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_1

    .line 2233
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2234
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 2237
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2240
    :goto_3
    goto :goto_7

    .line 2238
    :catch_1
    move-exception v2

    .line 2239
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2239
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 2245
    :cond_2
    :goto_4
    if-lt v0, p2, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_3

    .line 2246
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2247
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2252
    goto :goto_5

    .line 2250
    :catch_2
    move-exception v8

    .line 2251
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2245
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_5
    sub-int/2addr v0, v1

    goto :goto_4

    .line 2254
    :cond_3
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    .line 2255
    :goto_6
    if-lt v0, p2, :cond_4

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_4

    .line 2256
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2257
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    add-int/lit8 v0, v0, -0x3

    goto :goto_6

    .line 2260
    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2263
    goto :goto_7

    .line 2261
    :catch_3
    move-exception v2

    .line 2262
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2266
    .end local v2    # "e":Ljava/lang/InterruptedException;
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

    .line 2267
    return v0
.end method

.method private tearDown()V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
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

    .line 532
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 534
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 538
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 540
    :cond_1
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .line 991
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 995
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 996
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

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1001
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1002
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

    .line 1006
    :cond_1
    :goto_0
    return-void
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/Boolean;

    .line 771
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 774
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 775
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 776
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-on"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 780
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 781
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-off"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 785
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Night2ReadMode()V
    .locals 3

    .line 1243
    const-string v0, "ColorBalanceService"

    const-string v1, "Night2ReadMode changing night to reading mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1245
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1246
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1247
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1248
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1249
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1250
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1251
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1252
    return-void
.end method

.method public NightModeActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .line 1272
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1273
    const-string v0, "ColorBalanceService"

    const-string v2, "Gray color is on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1275
    return-void

    .line 1277
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1278
    const/16 v0, 0xa

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1279
    const-string v3, "ColorBalanceService"

    const-string v4, "NightModeActivated: turn on night mode!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1281
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1282
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1283
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1284
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1285
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1286
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_0

    .line 1288
    :cond_1
    const-string v3, "ColorBalanceService"

    const-string v4, "NightModeActivated: turn off night mode!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1290
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1291
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1292
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1293
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1294
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1295
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1296
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1298
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1300
    :goto_0
    return-void
.end method

.method public Read2NightMode()V
    .locals 6

    .line 1255
    const-string v0, "ColorBalanceService"

    const-string v1, "Read2NightMode changing read to nighting mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1258
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1259
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1260
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1261
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1265
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1266
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1267
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1269
    return-void
.end method

.method public ReadModeActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .line 1214
    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1215
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning on reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1217
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1218
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1220
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1221
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1222
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1223
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1224
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1225
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1226
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1227
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1228
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_0

    .line 1230
    :cond_0
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning off reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1232
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1233
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1234
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1235
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1236
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1237
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1238
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1240
    :goto_0
    return-void
.end method

.method public getAutoTime()Z
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 857
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2
    .param p1, "autoMode"    # I

    .line 1357
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 1358
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 1363
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1364
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1365
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1366
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1368
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1369
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1374
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_3

    .line 1375
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    .line 1377
    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 364
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    .line 365
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 371
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    .line 374
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    .line 375
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    .line 377
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 378
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 382
    :cond_2
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    .line 384
    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1390
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 1395
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1381
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 1386
    :cond_0
    return-void
.end method

.method public onModeSettingChange()V
    .locals 1

    .line 1350
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1351
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 1352
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 10
    .param p1, "activated"    # Z

    .line 860
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNightModeActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 863
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 865
    monitor-exit v0

    return-void

    .line 874
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 875
    const/4 v1, -0x2

    if-eqz p1, :cond_1

    .line 876
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    .line 879
    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 882
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

    .line 883
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 885
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 886
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated: reading mode disable App!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
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

    .line 894
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_c

    .line 895
    :cond_3
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 896
    if-eqz p1, :cond_4

    const-string v5, " Turning on night display"

    goto :goto_1

    :cond_4
    const-string v5, " Turning off night display"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 895
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 899
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 900
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v4, :cond_5

    .line 901
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 903
    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 905
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_9

    .line 906
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 907
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 908
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 910
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 911
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

    .line 914
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 930
    :cond_6
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 931
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 932
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 933
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 934
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 935
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    .line 915
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 916
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 922
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 924
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 925
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 926
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 927
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 928
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 939
    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 940
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 941
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 942
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 944
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    .line 945
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 946
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 947
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 949
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 950
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 953
    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 970
    .local v4, "isAutoReadingModeOn":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 971
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 973
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 974
    const-string v1, "ColorBalanceService"

    const-string v2, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 976
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 977
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 979
    :cond_b
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 980
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 981
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 983
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 988
    .end local v4    # "isAutoReadingModeOn":Ljava/lang/Boolean;
    :cond_c
    :goto_3
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 1304
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 1306
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1307
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

    .line 1325
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

    .line 1326
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

    .line 1327
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1328
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1329
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1330
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_1

    .line 1332
    :cond_3
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1334
    :goto_1
    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1335
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

    .line 1336
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1337
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto :goto_3

    .line 1339
    :cond_5
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1340
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1341
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1343
    :cond_6
    monitor-exit v0

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 7
    .param p1, "activated"    # Z

    .line 1009
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

    .line 1010
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 1012
    monitor-exit v0

    return-void

    .line 1014
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

    .line 1015
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1016
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    monitor-exit v0

    return-void

    .line 1019
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1020
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 1021
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1023
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1024
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1025
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1026
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1028
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1029
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1030
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1031
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1032
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1035
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1036
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1037
    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1038
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1040
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1041
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1042
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1043
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1044
    const/16 v2, -0x14

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1045
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1047
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1048
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1049
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1

    .line 1053
    :cond_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, -0x2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 1068
    :cond_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1069
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1070
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1071
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1073
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1074
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1075
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1077
    :cond_5
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 1078
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1080
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1082
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1083
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 1084
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 1054
    :cond_6
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1055
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1056
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1057
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1059
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1060
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1061
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

    .line 1064
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1065
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1066
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1088
    :cond_7
    :goto_1
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 10
    .param p1, "activated"    # Z

    .line 1092
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1094
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1095
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    monitor-exit v0

    return-void

    .line 1099
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 1100
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 1101
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    .line 1104
    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1107
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

    .line 1108
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1110
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 1111
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "reaing disable app,ignore!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1113
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1114
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1115
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1116
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1118
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    .line 1119
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1122
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1123
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    .line 1125
    :cond_4
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1127
    :goto_2
    monitor-exit v0

    return-void

    .line 1129
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

    .line 1151
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_a

    .line 1152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1153
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v8, 0xb

    if-eqz v3, :cond_7

    .line 1154
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1155
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1156
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1158
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1159
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1160
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1161
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1162
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1163
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1164
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1165
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1167
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1168
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1169
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    .line 1171
    :cond_6
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1172
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1174
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1175
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1176
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1177
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1178
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    .line 1182
    :cond_7
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1183
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1201
    :cond_8
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1202
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1203
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1204
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1205
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1206
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_4

    .line 1186
    :cond_9
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1187
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1188
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1189
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1190
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1191
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1192
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

    .line 1195
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1196
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1197
    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1199
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_a
    :goto_4
    monitor-exit v0

    .line 1211
    return-void

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResetStatus(I)V
    .locals 9
    .param p1, "enable"    # I

    .line 788
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 792
    .local v1, "status":I
    const/4 v2, 0x4

    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 793
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 794
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 795
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 796
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 797
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 798
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 799
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 800
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 801
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 802
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 803
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 804
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 805
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 806
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 807
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_0

    .line 808
    :cond_0
    if-ne p1, v4, :cond_3

    .line 809
    if-eq v1, v4, :cond_1

    .line 810
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 811
    :cond_1
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 812
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v2, v3

    .line 815
    .local v2, "progress":I
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 816
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 817
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 818
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 819
    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 821
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 822
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 823
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 825
    :cond_2
    const-string v3, "ColorBalanceService"

    const-string v4, "Screen off,nightModeSwitch ON done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v2    # "progress":I
    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    const/4 v6, 0x3

    if-ne p1, v3, :cond_5

    .line 827
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 828
    if-eq v1, v4, :cond_4

    .line 829
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 830
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 831
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 832
    const/16 v2, -0x14

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 833
    const-string v2, "ColorBalanceService"

    const-string v3, "Screen off,readingModeSwitch ON done!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 835
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 836
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    .line 838
    :cond_5
    if-ne p1, v6, :cond_6

    .line 839
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 840
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 841
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 842
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 843
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 844
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 845
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 846
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 847
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    .line 848
    :cond_6
    if-ne p1, v2, :cond_7

    .line 849
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 850
    if-eq v1, v4, :cond_7

    .line 851
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 853
    .end local v1    # "status":I
    :cond_7
    :goto_0
    monitor-exit v0

    .line 854
    return-void

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 351
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 353
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 387
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 388
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 402
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 403
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 404
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 395
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 396
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 398
    return-void
.end method

.method public sendMsg(I)V
    .locals 4
    .param p1, "v"    # I

    .line 1832
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1833
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1834
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1836
    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1841
    :cond_1
    :goto_0
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 3
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .line 1843
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1844
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1848
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1849
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 1850
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1853
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1855
    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delay"    # I

    .line 1857
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1858
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1859
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1860
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1861
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1867
    :cond_0
    return-void
.end method
