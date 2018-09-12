.class public Lcom/oneplus/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeService$LightCheck;,
        Lcom/oneplus/doze/DozeService$ProximityCheck;,
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

.field private mNotificationPulseTime:J

.field private mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

.field private mPickupSensor:Lcom/oneplus/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

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

    .line 120
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 84
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

    .line 85
    iput-object p0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 99
    new-array v0, v1, [I

    const/16 v2, 0x47

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    .line 112
    iput v4, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    .line 115
    iput-boolean v4, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 537
    new-instance v0, Lcom/oneplus/doze/DozeService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$3;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    new-instance v0, Lcom/oneplus/doze/DozeService$4;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/doze/DozeService$4;-><init>(Lcom/oneplus/doze/DozeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 579
    new-instance v0, Lcom/oneplus/doze/DozeService$5;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$5;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    .line 121
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v2, "new DozeService()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeService;->setDebug(Z)V

    .line 123
    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/doze/DozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestNotificationPulse()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestThreeKeyStatePulse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->checkLightSensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TriggerEvent;

    .line 69
    invoke-static {p0}, Lcom/oneplus/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/doze/DozeService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/doze/DozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/doze/DozeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget v0, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/oneplus/doze/DozeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/doze/DozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/doze/DozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->reregisterAllSensors()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/DozeService;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method private checkLightSensor()V
    .locals 1

    .line 1129
    new-instance v0, Lcom/oneplus/doze/DozeService$6;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$6;-><init>(Lcom/oneplus/doze/DozeService;)V

    .line 1135
    invoke-virtual {v0}, Lcom/oneplus/doze/DozeService$6;->check()V

    .line 1137
    return-void
.end method

.method private continuePulsing(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 388
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    .line 390
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 394
    :cond_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    new-instance v1, Lcom/oneplus/doze/DozeService$2;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$2;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/oneplus/doze/DozeHost;->pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    .line 420
    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 630
    return-object v1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 633
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 634
    .local v3, "s":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    return-object v3

    .line 637
    .end local v3    # "s":Landroid/hardware/Sensor;
    :cond_1
    goto :goto_0

    .line 638
    :cond_2
    return-object v1
.end method

.method private finishForCarMode()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 444
    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 439
    return-void
.end method

.method public static isProximityDozeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1041
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prox_wake_enabled"

    .line 1043
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1041
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

    .line 262
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->startDozing()V

    .line 268
    :cond_0
    return-void
.end method

.method private listenForBroadcasts(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .line 487
    if-eqz p1, :cond_0

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.aod.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 494
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 500
    :goto_0
    return-void
.end method

.method private listenForNotifications(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .line 503
    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    .line 508
    :goto_0
    return-void
.end method

.method private listenForPulseSignals(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .line 447
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->isProximityDozeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setListening(Z)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->isProximityDozeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$PickupCheck;->setListening(Z)V

    .line 470
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->listenForNotifications(Z)V

    .line 471
    return-void
.end method

.method private requestNotificationPulse()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    .line 515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    .line 516
    return-void
.end method

.method private requestPulse(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    .line 312
    return-void
.end method

.method private requestPulse(IZ)V
    .locals 10
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .line 315
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

    .line 318
    iput p1, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "continuePusle":Z
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x47

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v1

    nop

    :cond_0
    move v0, v3

    .line 325
    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-eqz v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->continePulse(I)V

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-nez v2, :cond_8

    .line 336
    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v2

    if-nez v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 339
    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    .line 341
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v1

    if-nez v1, :cond_5

    .line 343
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    .line 344
    return-void

    .line 347
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 348
    .local v8, "start":J
    if-eqz p2, :cond_6

    .line 351
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    .line 355
    :cond_6
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v1

    if-nez v1, :cond_7

    .line 356
    new-instance v1, Lcom/oneplus/doze/DozeService$1;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, v8

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/doze/DozeService$1;-><init>(Lcom/oneplus/doze/DozeService;JIZ)V

    .line 379
    invoke-virtual {v1}, Lcom/oneplus/doze/DozeService$1;->check()V

    goto :goto_0

    .line 381
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    .line 385
    .end local v8    # "start":J
    :cond_8
    :goto_0
    return-void
.end method

.method private requestThreeKeyStatePulse()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    .line 522
    return-void
.end method

.method private reregisterAllSensors()V
    .locals 0

    .line 484
    return-void
.end method

.method private setDisplayMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1140
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->setDisplayMode(I)V

    .line 1141
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .line 525
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TriggerEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 527
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 528
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 530
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private turnDisplayOff()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    .line 426
    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    .line 432
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    nop

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    .line 434
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 129
    const-string v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 130
    const-string v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 131
    const-string v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 132
    const-string v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 133
    const-string v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "  mPickUp:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "  mMotion:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mLight:Lcom/oneplus/doze/DozeService$LightCheck;

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "  mLight:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mLight:Lcom/oneplus/doze/DozeService$LightCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 156
    :cond_2
    const-string v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 157
    const-string v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    const-string v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    const-string v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 160
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/oneplus/doze/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 163
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 229
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 170
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDozeHost()Lcom/oneplus/doze/DozeHost;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    .line 171
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    const-string v0, "DozeService"

    const-string v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->init()V

    .line 173
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setWindowless(Z)V

    .line 176
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 177
    new-instance v1, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 201
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Lcom/oneplus/doze/DozeService$PickupCheck;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$PickupCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mPickUp:Lcom/oneplus/doze/DozeService$PickupCheck;

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Lcom/oneplus/doze/DozeService$MotionCheck;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/doze/DozeService$MotionCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 210
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 211
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DozeService"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    .line 214
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 215
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    .line 216
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-nez v0, :cond_2

    .line 218
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mModeClient:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DozeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get IOneplusDisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public onDreamingStarted()V
    .locals 5

    .line 233
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 235
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 237
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    .line 240
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

    .line 241
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

    .line 243
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    .line 245
    return-void

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    .line 249
    return-void

    .line 252
    :cond_3
    iput-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    .line 253
    iput-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    .line 254
    invoke-direct {p0, v2}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    .line 255
    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    .line 256
    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService;->listenForBroadcasts(Z)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;

    invoke-direct {v2, p0}, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public onDreamingStopped()V
    .locals 3

    .line 273
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

    .line 274
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 276
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    .line 281
    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->setDisplayMode(I)V

    .line 283
    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    .line 284
    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    .line 285
    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->listenForBroadcasts(Z)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->stopDozing()V

    .line 289
    return-void
.end method

.method public onSingleTap()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 306
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    .line 307
    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mIsWakingUp:Z

    .line 295
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/oneplus/doze/DozeHost;->onWakingUp(Ljava/lang/String;)V

    .line 296
    return-void
.end method
