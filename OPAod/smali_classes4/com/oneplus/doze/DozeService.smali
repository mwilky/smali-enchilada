.class public Lcom/oneplus/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeService$LightCheck;,
        Lcom/oneplus/doze/DozeService$ProximityCheck;,
        Lcom/oneplus/doze/DozeService$CustomProximityCheck;,
        Lcom/oneplus/doze/DozeService$MotionCheck;,
        Lcom/oneplus/doze/DozeService$PickupCheck;,
        Lcom/oneplus/doze/DozeService$TriggerSensor;
    }
.end annotation


# static fields
.field private static final ACTION_BASE:Ljava/lang/String; = "com.oneplus.aod.doze"

.field private static final DEBUG:Z = true

.field private static final PULSE_ACTION:Ljava/lang/String; = "com.oneplus.aod.doze.pulse"

.field private static final REREGISTER_ALL_SENSORS_ON_SCREEN_OFF:Z = true

.field static final SCREEN_MODE_DARK:I = 0x0

.field static final SCREEN_MODE_LIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DozeService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/oneplus/doze/DozeParameters;

.field private mDreaming:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/oneplus/doze/DozeHost;

.field private final mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

.field private mIsWakingUp:Z

.field private mLight:Lcom/oneplus/doze/DozeService$LightCheck;

.field private mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

.field private mMotionResult:I

.field private mNotificationPulseTime:J

.field private mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

.field private mPickupSensor:Lcom/oneplus/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mProximity:Lcom/oneplus/doze/DozeService$CustomProximityCheck;

.field private mProximityResult:I

.field private mPulsing:Z

.field private mReason:I

.field private mScreenMode:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensors:[Lcom/oneplus/doze/DozeService$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSupportCustomFingerprint:Z

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    const-string v0, "DozeService.%08x"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    iput-object p0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    iput v4, p0, Lcom/oneplus/doze/DozeService;->mProximityResult:I

    iput v4, p0, Lcom/oneplus/doze/DozeService;->mMotionResult:I

    new-array v0, v1, [I

    const/16 v2, 0x47

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    iput v4, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    iput-boolean v4, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    new-instance v0, Lcom/oneplus/doze/DozeService$4;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$4;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/doze/DozeService$5;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/doze/DozeService$5;-><init>(Lcom/oneplus/doze/DozeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/doze/DozeService$6;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$6;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v2, "new DozeService()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeService;->setDebug(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->reregisterAllSensors()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/doze/DozeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/doze/DozeService;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/doze/DozeService;->mProximityResult:I

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestNotificationPulse()V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/doze/DozeService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/doze/DozeService;->mProximityResult:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestThreeKeyStatePulse()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->checkLightSensor()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/oneplus/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/doze/DozeService;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/doze/DozeService;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/doze/DozeService;->mMotionResult:I

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/doze/DozeService;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/doze/DozeService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/doze/DozeService;->mMotionResult:I

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/oneplus/doze/DozeService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    return p1
.end method

.method static synthetic access$3400(Lcom/oneplus/doze/DozeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/doze/DozeService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/doze/DozeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method private checkLightSensor()V
    .locals 1

    new-instance v0, Lcom/oneplus/doze/DozeService$7;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$7;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeService$7;->check()V

    return-void
.end method

.method private checkShouldPulseAfterScreenTurnOff()V
    .locals 3

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/Utils;->isMotionAwakeOn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSingleTapEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-nez v1, :cond_3

    const-string v1, "DozeService"

    const-string v2, "requestPulse when startDozing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    :cond_3
    return-void
.end method

.method private continuePulsing(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    new-instance v1, Lcom/oneplus/doze/DozeService$3;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$3;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/oneplus/doze/DozeHost;->pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private finishForCarMode()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    return-void
.end method

.method public static isProximityDozeEnable(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prox_wake_enabled"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method public static synthetic lambda$onDreamingStarted$0(Lcom/oneplus/doze/DozeService;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->startDozing()V

    :cond_0
    return-void
.end method

.method private listenForBroadcasts(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.aod.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    :goto_0
    return-void
.end method

.method private listenForNotifications(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    :goto_0
    return-void
.end method

.method private listenForPulseSignals(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->isProximityDozeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mProximity:Lcom/oneplus/doze/DozeService$CustomProximityCheck;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mProximity:Lcom/oneplus/doze/DozeService$CustomProximityCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$CustomProximityCheck;->setListening(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->isProximityDozeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$PickupCheck;->setListening(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->listenForNotifications(Z)V

    return-void
.end method

.method private requestNotificationPulse()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method private requestPulse(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method private requestPulse(IZ)V
    .locals 4

    const-string v0, "DozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPulseL: mHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPulsing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->continePulse(I)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/oneplus/doze/DozeService;->mProximityResult:I

    if-ne v3, v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->resetViewState()V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/oneplus/doze/DozeService$2;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/oneplus/doze/DozeService$2;-><init>(Lcom/oneplus/doze/DozeService;JI)V

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeService$2;->check()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private requestThreeKeyStatePulse()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method private reregisterAllSensors()V
    .locals 0

    return-void
.end method

.method private setDisplayMode(I)V
    .locals 1

    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->setDisplayMode(I)V

    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TriggerEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private turnDisplayOff()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    nop

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    if-eqz v0, :cond_0

    const-string v0, "  mPickUp:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    if-eqz v0, :cond_1

    const-string v0, "  mMotion:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mLight:Lcom/oneplus/doze/DozeService$LightCheck;

    if-eqz v0, :cond_2

    const-string v0, "  mLight:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mLight:Lcom/oneplus/doze/DozeService$LightCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    const-string v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/oneplus/doze/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDozeHost()Lcom/oneplus/doze/DozeHost;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    const-string v0, "DozeService"

    const-string v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->init()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setWindowless(Z)V

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$PickupCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/oneplus/doze/DozeService$MotionCheck;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/doze/DozeService$MotionCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    new-instance v1, Lcom/oneplus/doze/DozeService$1;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$1;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mProximity:Lcom/oneplus/doze/DozeService$CustomProximityCheck;

    :goto_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DozeService"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DozeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get IOneplusDisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onDreamingStarted()V
    .locals 5

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDreamingStarted canDoze="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->canDoze()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mPowerSaveActive="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCarMode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    iput-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    invoke-direct {p0, v2}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService;->listenForBroadcasts(Z)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;

    invoke-direct {v2, p0}, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->listenForBroadcasts(Z)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->stopDozing()V

    return-void
.end method

.method public onSingleTap()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/oneplus/doze/DozeHost;->onWakingUp(Ljava/lang/String;)V

    return-void
.end method
