.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field public static mAllowCustomDozeBrightness:Z

.field public static mCustomDozeBrightness:I

.field static final synthetic $assertionsDisabled:Z = false

.field private static final BRIGHTNESS_RAMP_RATE_BRIGHTEN:I = 0x78

.field private static final BRIGHTNESS_RAMP_RATE_DARKEN:I = 0xa

.field private static final BRIGHTNESS_RAMP_RATE_SCREENON:I = 0x0

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x0

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field static DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_BRIGHTNESS_BOOST:I = 0xa

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREENON_BRIGHTNESS_BOOST_TIMEOUT:J = 0x3e8L

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static mAnimationEnd:Z

.field private static mAutoEnabled:Z

.field private static mCBM:Lcom/oneplus/display/ColorBalanceManager;

.field public static mQuickDarkToBright:Z

.field private static mQuicklyApplyDimming:Z

.field private static mScreenOnRampRate:I

.field private static mScreen_State_Onoff:Z

.field private static mTemporaryScreen:Z


# instance fields
.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private mBrightnessRampRateSlow:I

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayReadyLocked:Z

.field private mDozing:Z

.field private mForceUpdateBrightness:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mLastProximityForUpdatePowerState:I

.field private mLastUserSetScreenBrightness:I

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mPreScreeeStatus:Ljava/lang/Boolean;

.field private mProximity:I

.field private mProximityEventHandled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBecauseOfProximityForBak:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private mScreenState:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mTempScreenBrightnessRangeMinimum:I

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private mWakingUpReason:Ljava/lang/String;

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    const/4 v1, 0x1

    sput v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mQuicklyApplyDimming:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mQuickDarkToBright:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mScreen_State_Onoff:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mAnimationEnd:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mAutoEnabled:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 35

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    const/4 v14, -0x1

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v1, -0x1

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mLastProximityForUpdatePowerState:I

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    const/4 v11, 0x1

    iput-boolean v11, v15, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    new-instance v1, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    move-object/from16 v12, p2

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    new-instance v1, Lcom/oneplus/display/ColorBalanceManager;

    invoke-direct {v1, v13}, Lcom/oneplus/display/ColorBalanceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v10, p4

    iput-object v10, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v9, p5

    iput-object v9, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    
    invoke-virtual {v15}, Lcom/android/server/display/DisplayPowerController;->setAllowCustomDozeBrightness()V
    
    invoke-virtual {v15}, Lcom/android/server/display/DisplayPowerController;->setCustomDozeBrightness()V

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mQuicklyApplyDimming:Z

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mScreenState:I

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mQuickDarkToBright:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x10e0096

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v7

    const v1, 0x10e008c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    const v1, 0x10e008b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v2, 0x3ff

    if-ne v1, v2, :cond_0

    const v1, 0x10e001a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    const v1, 0x10e0094

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    goto :goto_0

    :cond_0
    const v1, 0x10e0019

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    const v1, 0x10e0093

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    :goto_0
    const v1, 0x10e0090

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const v1, 0x10e008f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    const v1, 0x10e008e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    const v1, 0x10e008d

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const v1, 0x112001f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const v1, 0x1120008

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    const v1, 0x10e001b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    const v1, 0x11200a4

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_4

    const v1, 0x1130003

    invoke-virtual {v8, v1, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v17

    const v1, 0x1070024

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    const v1, 0x1070025

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v1, 0x1070026

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    new-instance v1, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v1, v6, v5, v4}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v16, v1

    const v1, 0x10e000c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    const v1, 0x10e000d

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v14, v1

    const v1, 0x112001b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    const v1, 0x10e004f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    const v1, 0x10e000f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v11, 0x10e000e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1

    move v11, v1

    move-wide/from16 v24, v2

    :goto_1
    move/from16 v19, v11

    goto :goto_2

    :cond_1
    if-le v11, v1, :cond_2

    const-string v13, "DisplayPowerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v24, v2

    const-string v2, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide/from16 v24, v2

    goto :goto_1

    :goto_2
    invoke-static {v8}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    move-wide/from16 v26, v14

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_3

    new-instance v13, Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v11, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v14, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v3, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object v0, v13

    move/from16 v18, v1

    move-object v1, v15

    move/from16 v23, v3

    move-object v3, v10

    move-object/from16 v28, v4

    move-object v4, v11

    move-object/from16 v29, v5

    move/from16 v5, v21

    move-object/from16 v30, v6

    move v6, v14

    move/from16 v31, v7

    move/from16 v7, v23

    move-object v14, v8

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    const/16 v22, 0x1

    move-wide/from16 v11, v24

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    move-wide/from16 v13, v26

    move/from16 v15, v20

    invoke-direct/range {v0 .. v16}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;)V

    move-object/from16 v1, v33

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto :goto_3

    :cond_3
    move/from16 v18, v1

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move-object/from16 v32, v8

    move-object v0, v15

    const/16 v22, 0x1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_3

    :cond_4
    move/from16 v31, v7

    move-object/from16 v32, v8

    move/from16 v22, v11

    move-object v0, v15

    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v1, 0x1120018

    move-object/from16 v2, v32

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v1, 0x1120044

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v1, 0x1120045

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/high16 v1, 0x7fc00000    # NaNf

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method

.method private CalculateRampRate(II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p2, p1, :cond_0

    const v2, -0x468dc769    # -2.31E-4f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const v3, 0x3f119147

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x426db9f7

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const v2, 0x390a697b    # 1.32E-4f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const v3, 0x3ce4cf8d    # 0.027931f

    int-to-float v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x42201c77

    add-float/2addr v2, v3

    float-to-int v0, v2

    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->mAutoEnabled:Z

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0

    sput p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/display/DisplayPowerController;->mAnimationEnd:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method private animateScreenBrightness(II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x20000

    const-string v2, "TargetScreenBrightness"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "com.android.systemui:UnlockStart"

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DisplayPowerController"

    const-string v1, "fingerprint unlock, do not stop color fade"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eq p1, v2, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    nop

    move v5, v1

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_5
    if-eq p1, v3, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_8

    if-eq p1, v3, :cond_8

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_a

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_a
    const/4 v4, 0x5

    if-ne p1, v4, :cond_d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x3

    if-ne p1, v4, :cond_10

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_e

    return-void

    :cond_e
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_10
    const/4 v5, 0x4

    if-ne p1, v5, :cond_14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_13

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    :cond_13
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_14
    const/4 v4, 0x6

    if-ne p1, v4, :cond_18

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_17

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    :cond_17
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    :cond_18
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1a

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    :cond_1a
    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1b

    goto :goto_2

    :cond_1b
    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x20000

    const-string v2, "Screen off blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 3

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-ge v0, v1, :cond_0

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "override brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_0
    return v2
.end method

.method private getScreenBrightnessForVrSetting()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_for_vr"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSetting()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    if-eqz p3, :cond_2

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v0, 0xa

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    :cond_3
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 1
    
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->setAllowCustomDozeBrightness()V
    
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->setCustomDozeBrightness()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method private initialize()V
    .locals 6
    
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tweaks_allow_custom_doze_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v5, -0x1
    
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tweaks_custom_doze_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v5, -0x1
    
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_for_vr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    :cond_1
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Positive"

    return-object v0

    :pswitch_1
    const-string v0, "Negative"

    return-object v0

    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private putScreenBrightnessSetting(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    :pswitch_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    :pswitch_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendOnProximityNegativeSuspendWithWakelock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityPositiveSuspendWithWakelock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3

    const-string v0, "ReportedScreenStateToPolicy"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    return-void
.end method

.method private setScreenState(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_6

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v5, :cond_2

    return v0

    :cond_2
    :goto_1
    if-nez p2, :cond_6

    const-wide/32 v5, 0x20000

    const-string v7, "ScreenState"

    invoke-static {v5, v6, v7, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    if-ne p1, v3, :cond_3

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/display/ColorBalanceManager;->sendMsg(I)V

    :cond_3
    if-ne p1, v1, :cond_4

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    invoke-virtual {v5, v3}, Lcom/oneplus/display/ColorBalanceManager;->sendMsg(I)V

    :cond_4
    if-ne p1, v4, :cond_5

    const-string v3, "FingerPrintMode"

    invoke-static {v3, v1, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    const-string v3, "DisplayPowerController"

    const-string v5, " setScreenState doze"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_8
    :goto_3
    if-nez v2, :cond_a

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v3, :cond_a

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    :goto_4
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V

    :cond_b
    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->setScreenState(Z)V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_c

    move v0, v1

    nop

    :cond_c
    return v0
.end method

.method private setScreenStatus(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPreScreeeStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPreScreeeStatus:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPreScreeeStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->sendMsg(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->mCBM:Lcom/oneplus/display/ColorBalanceManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->sendMsg(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    :pswitch_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    :pswitch_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unblockScreenOff()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen off after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const-string v4, "Screen off blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->unblockScreenOn()V

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v2, 0x7fc00000    # NaNf

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    return v1

    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    return v0
.end method

.method private updatePowerState()V
    .locals 31

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_1

    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    :goto_0
    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    :cond_3
    const/4 v3, -0x1

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_5

    packed-switch v7, :pswitch_data_0

    move v7, v10

    goto :goto_2

    :pswitch_0
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    goto :goto_1

    :cond_4
    move v7, v9

    :goto_1
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->mAllowCustomDozeBrightness:Z
    
    if-eqz v8, :cond_stock

    const/4 v8, 0x0
	
    goto :goto_mw
    
    :cond_stock
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    :goto_mw
    if-nez v8, :cond_6

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I
    
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->mAllowCustomDozeBrightness:Z
    
    if-eqz v8, :cond_stock1

	sget v3, Lcom/android/server/display/DisplayPowerController;->mCustomDozeBrightness:I
    
    :cond_stock1
    goto :goto_2

    :pswitch_1
    const/4 v7, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x5

    nop

    :cond_6
    :goto_2
    nop

    nop

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_13

    const-string v8, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "useProximityForceSuspend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_a

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    if-nez v8, :cond_9

    const-string v8, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mProximity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v12}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v8, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveSuspendWithWakelock()V

    goto :goto_3

    :cond_7
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-nez v8, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    :cond_8
    :goto_3
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto/16 :goto_5

    :cond_9
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_14

    const-string v8, "DisplayPowerController"

    const-string/jumbo v11, "the last proximity event has been handled"

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_a
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v8, :cond_14

    const-string v8, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mPowerRequest.useProximitySensor = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mWaitingForNegativeProximity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v8, :cond_c

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v8, v5, :cond_c

    if-eq v7, v5, :cond_b

    if-ne v7, v9, :cond_c

    :cond_b
    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_5

    :cond_c
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    if-eq v7, v5, :cond_d

    if-ne v7, v9, :cond_e

    :cond_d
    const-string v8, "DisplayPowerController"

    const-string/jumbo v11, "turn on lcd light due to proximity released"

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    :cond_e
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto :goto_5

    :cond_f
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_10

    if-eq v7, v5, :cond_10

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_12

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v8, v5, :cond_12

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_4

    :cond_10
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v8, :cond_11

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_11

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v8, v5, :cond_11

    if-eq v7, v5, :cond_11

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_4

    :cond_11
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    :cond_12
    :goto_4
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_14

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v8, v5, :cond_14

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_5

    :cond_13
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    :cond_14
    :goto_5
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v8, :cond_15

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_15

    const/4 v7, 0x1

    :cond_15
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_16

    const-string v8, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OPTIMIZE SCREEN OFF TIME] mScreenOffBecauseOfProximityForBak = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " |mScreenOffBecauseOfProximity:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " |state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " |mPowerState.getScreenState():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " |mLastProximityForUpdatePowerState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mLastProximityForUpdatePowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " |mProximity:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_18

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_17

    if-eq v7, v5, :cond_17

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    if-nez v8, :cond_17

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v8, v5, :cond_17

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    :cond_17
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    if-eqz v8, :cond_18

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v8, v5, :cond_18

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    :cond_18
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximityForBak:Z

    if-eqz v8, :cond_1a

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mLastProximityForUpdatePowerState:I

    if-eq v8, v11, :cond_1a

    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_19

    const-string v8, "DisplayPowerController"

    const-string v11, "[OPTIMIZE SCREEN OFF TIME] state = Display.STATE_OFF"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v7, 0x1

    :cond_1a
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iput v8, v1, Lcom/android/server/display/DisplayPowerController;->mLastProximityForUpdatePowerState:I

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v8

    invoke-direct {v1, v7, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v7

    if-ne v7, v5, :cond_1b

    const/4 v3, 0x0

    :cond_1b
    const/4 v11, 0x5

    if-ne v7, v11, :cond_1d

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v12, :cond_1c

    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_1d

    :cond_1c
    const-string v12, "DisplayPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This STATE_VR brightness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-gez v3, :cond_20

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-lez v12, :cond_20

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v12, :cond_1e

    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_1f

    :cond_1e
    const-string v12, "DisplayPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This screenBrightnessOverride brightness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_6

    :cond_20
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    :goto_6
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->mAllowCustomDozeBrightness:Z
    
    if-eqz v12, :cond_stock2

	const/4 v12, 0x0
	
	goto :goto_mw2
    
    :cond_stock2
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    :goto_mw2
    if-eqz v12, :cond_21

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move v12, v5

    goto :goto_7

    :cond_21
    move v12, v0

    :goto_7
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v13, :cond_23

    if-eq v7, v10, :cond_22

    if-eqz v12, :cond_23

    :cond_22
    if-gez v3, :cond_23

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v13, :cond_23

    move v13, v5

    goto :goto_8

    :cond_23
    move v13, v0

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v22

    const/4 v15, -0x1

    if-eqz v22, :cond_24

    iput v15, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    :cond_24
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    if-lez v14, :cond_27

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v14, :cond_25

    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_26

    :cond_25
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "This mTemporaryScreenBrightness brightness = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    goto :goto_9

    :cond_27
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v11

    if-eqz v11, :cond_28

    const/high16 v14, 0x7fc00000    # NaNf

    iput v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    :cond_28
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_29

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    :goto_a
    move/from16 v23, v14

    goto :goto_b

    :cond_29
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_a

    :goto_b
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v14, :cond_2a

    if-eqz v3, :cond_2a

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_c

    :cond_2a
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    :goto_c
    if-gez v3, :cond_2c

    if-nez v11, :cond_2b

    if-eqz v22, :cond_2c

    :cond_2b
    move v14, v5

    goto :goto_d

    :cond_2c
    move v14, v0

    :goto_d
    move v15, v14

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v0

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    int-to-float v5, v5

    sget v10, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v10, v10

    div-float v17, v5, v10

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v24, v0

    move v10, v15

    const/4 v0, -0x1

    move v15, v13

    move-object/from16 v16, v9

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v11

    move/from16 v21, v5

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    move/from16 v14, v24

    goto :goto_e

    :cond_2d
    move v10, v15

    const/4 v0, -0x1

    :goto_e
    if-nez v13, :cond_2e

    sget v5, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_2e

    const/4 v5, 0x1

    sput v5, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    :cond_2e
    const/4 v5, 0x0

    if-gez v3, :cond_39

    move/from16 v9, v23

    if-eqz v13, :cond_2f

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v15}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v3

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v15}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v9

    :cond_2f
    if-ltz v3, :cond_37

    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    sget-boolean v15, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v15, :cond_31

    sget-boolean v15, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v15, :cond_30

    goto :goto_f

    :cond_30
    move/from16 v25, v2

    goto :goto_10

    :cond_31
    :goto_f
    const-string v15, "DisplayPowerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v2

    const-string v2, "This auto-brightness brightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v0, :cond_32

    if-eqz v11, :cond_33

    :cond_32
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    const v2, 0x42c8aa7f    # 100.333f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_33

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    const v2, 0x42c91c29    # 100.555f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    :cond_33
    const/4 v5, 0x1

    :cond_34
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    if-eq v0, v3, :cond_35

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/display/DisplayPowerController;->CalculateRampRate(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    :cond_35
    sget v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    const/4 v0, 0x3

    sput v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v27, v5

    move/from16 v26, v6

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v0, v5, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    :cond_36
    move/from16 v27, v5

    move/from16 v26, v6

    :goto_11
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(I)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v5, v27

    goto :goto_12

    :cond_37
    move/from16 v25, v2

    move/from16 v26, v6

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    :goto_12
    cmpl-float v0, v23, v9

    if-eqz v0, :cond_38

    invoke-direct {v1, v9}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    :cond_38
    goto :goto_13

    :cond_39
    move/from16 v25, v2

    move/from16 v26, v6

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    :goto_13
    if-gez v3, :cond_3b

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3b

    :cond_3a
    const-string v0, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This Apply manual brightness = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_40

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_3e

    add-int/lit8 v0, v3, -0xa

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v2, :cond_3c

    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3d

    :cond_3c
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This POLICY_DIM brightness = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v3, v0

    :cond_3e
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v0, :cond_3f

    const/4 v0, 0x0

    move v5, v0

    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_14

    :cond_40
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v0, :cond_41

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    :cond_41
    :goto_14
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_45

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_43

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v6, v3

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-boolean v9, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v9, :cond_42

    sget-boolean v9, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_43

    :cond_42
    const-string v9, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This lowPowerMode brightness = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v0, :cond_44

    const/4 v0, 0x0

    move v5, v0

    :cond_44
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_15

    :cond_45
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v0, :cond_46

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    :cond_46
    :goto_15
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-eq v0, v2, :cond_47

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v0, v2, :cond_48

    :cond_47
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z

    if-nez v0, :cond_48

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    :cond_48
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z

    :cond_49
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    if-eqz v0, :cond_4a

    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    :cond_4a
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    if-ne v7, v0, :cond_4d

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v0, :cond_4b

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v0, :cond_4b

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_16

    :cond_4b
    const/4 v0, 0x1

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v2, v0, :cond_4c

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_4c

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    if-eq v3, v0, :cond_4c

    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_16

    :cond_4c
    const/4 v0, 0x2

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v2, v0, :cond_4e

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_16

    :cond_4d
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    :cond_4e
    :goto_16
    const/4 v0, 0x5

    if-eq v7, v0, :cond_50

    if-ne v8, v0, :cond_4f

    goto :goto_17

    :cond_4f
    const/4 v0, 0x0

    goto :goto_18

    :cond_50
    :goto_17
    const/4 v0, 0x1

    :goto_18
    const/4 v2, 0x2

    if-ne v7, v2, :cond_51

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_19

    :cond_51
    const/4 v2, 0x0

    :goto_19
    nop

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v6

    if-eqz v6, :cond_52

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    goto :goto_1a

    :cond_52
    const/4 v6, 0x0

    :goto_1a
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v9, :cond_53

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v9}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v9

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v15

    if-nez v9, :cond_53

    const/4 v9, 0x1

    goto :goto_1b

    :cond_53
    const/4 v9, 0x0

    :goto_1b
    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v15, :cond_55

    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v15, :cond_54

    goto :goto_1c

    :cond_54
    const/4 v15, 0x0

    goto :goto_1d

    :cond_55
    :goto_1c
    const/4 v15, 0x1

    :goto_1d
    if-nez v2, :cond_5a

    if-nez v6, :cond_5a

    if-nez v0, :cond_5a

    if-eqz v9, :cond_5a

    if-eqz v15, :cond_56

    move/from16 v28, v0

    move/from16 v29, v2

    goto :goto_20

    :cond_56
    if-eqz v13, :cond_57

    move/from16 v28, v0

    sget v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I

    move/from16 v29, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v0, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    :goto_1e
    move/from16 v30, v5

    goto :goto_23

    :cond_57
    move/from16 v28, v0

    move/from16 v29, v2

    :cond_58
    if-eqz v5, :cond_59

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    goto :goto_1f

    :cond_59
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    :goto_1f
    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto :goto_1e

    :cond_5a
    move/from16 v28, v0

    move/from16 v29, v2

    :goto_20
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-nez v0, :cond_5c

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5b

    goto :goto_21

    :cond_5b
    move/from16 v30, v5

    goto :goto_22

    :cond_5c
    :goto_21
    const-string v0, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v5

    const-string v5, "This initialRampSkip brightness = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    const/4 v0, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    :goto_23
    if-nez v15, :cond_5e

    invoke-direct {v1, v3, v10, v14}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    goto :goto_24

    :cond_5d
    move/from16 v30, v5

    :cond_5e
    :goto_24
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_60

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_60

    :cond_5f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    goto :goto_25

    :cond_60
    const/4 v0, 0x0

    :goto_25
    move v2, v0

    if-eqz v2, :cond_61

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x1

    goto :goto_26

    :cond_61
    const/4 v0, 0x0

    :goto_26
    move v5, v0

    if-eqz v2, :cond_62

    const/4 v0, 0x1

    if-eq v7, v0, :cond_62

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v6, v0, :cond_62

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    :cond_62
    if-nez v5, :cond_64

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_64

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_63

    const-string v0, "DisplayPowerController"

    const-string v6, "Unfinished business..."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    :cond_64
    if-eqz v2, :cond_67

    if-eqz v4, :cond_67

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_65

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    sget-boolean v9, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v9, :cond_66

    const-string v9, "DisplayPowerController"

    const-string v15, "Display ready!"

    invoke-static {v9, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_65
    const/4 v0, 0x1

    :cond_66
    :goto_27
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_28

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_67
    const/4 v0, 0x1

    :goto_28
    if-eqz v5, :cond_69

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v6, :cond_69

    sget-boolean v6, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_68

    const-string v6, "DisplayPowerController"

    const-string v9, "Finished business..."

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v9}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_29

    :cond_69
    const/4 v6, 0x0

    :goto_29
    const/4 v9, 0x2

    if-eq v7, v9, :cond_6a

    goto :goto_2a

    :cond_6a
    move v0, v6

    :goto_2a
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    return-void

    :catchall_1
    move-exception v0

    move/from16 v25, v2

    goto :goto_2b

    :catchall_2
    move-exception v0

    :goto_2b
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    return v1

    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTempScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSwitchUser(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    return-void
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    const/4 v1, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_6

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTemporaryBrightness(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    :cond_0
    return-void
.end method

.method public setWakingupReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWakingUpReason:Ljava/lang/String;

    return-void
.end method

.method public updateBrightness()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public setAllowCustomDozeBrightness()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tweaks_allow_custom_doze_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mAllowCustomDozeBrightness:Z

    return-void
.end method

.method public setCustomDozeBrightness()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tweaks_custom_doze_brightness"

    const v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    
    sput v0, Lcom/android/server/display/DisplayPowerController;->mCustomDozeBrightness:I

    return-void
.end method
