.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;,
        Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FRONT_CAMERA:Ljava/lang/String; = "FrontCamera"

.field private static final ACTION_OPEN_APP:Ljava/lang/String; = "OpenApp"

.field private static final ACTION_OPEN_CAMERA:Ljava/lang/String; = "OpenCamera"

.field private static final ACTION_OPEN_SHELF:Ljava/lang/String; = "OpenShelf"

.field private static final ACTION_OPEN_SHORTCUT:Ljava/lang/String; = "OpenShortcut"

.field private static final ACTION_OPEN_TORCH:Ljava/lang/String; = "OpenTorch"

.field private static final ACTION_TAKE_VIDEO:Ljava/lang/String; = "TakeVideo"

.field private static final BLACK_ENBALE_PATH:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final BLACK_VALUE_PATH:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final CAMERA_ID:Ljava/lang/String; = "0"

.field private static final DEBUG:Z

.field private static final GESTURE_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_NEW_M_SCANCODE:Ljava/lang/String; = "12"

.field private static final GESTURE_NEW_O_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_NEW_S_SCANCODE:Ljava/lang/String; = "14"

.field private static final GESTURE_NEW_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_NEW_W_SCANCODE:Ljava/lang/String; = "13"

.field private static final GESTURE_SINGLE_TAP:Ljava/lang/String; = "15"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_SWITCH:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATE_DURATION_LONG:J = 0x96L

.field private static final VIBRATE_DURATION_SHORT:J = 0x4bL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private gesture_switch_exist:Z

.field mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackEnableState:Z

.field private mBlackKeySettingState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

.field private mFlashlightEnabled:Z

.field final mGestureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKeyguardOcclude:Z

.field mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListenKeyguard:Z

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

.field private mOld_O:Z

.field private mOld_V:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketmodeEnabled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSleeping:Z

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 122
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 123
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 124
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 141
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 165
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 171
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenKeyguard:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 473
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 518
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 954
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 200
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 201
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 202
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 203
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2651

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 206
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 207
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "ProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PartialGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "AcquireCauseWakeUpGestureWakeLock"

    const v2, 0x10000001

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 219
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 221
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 225
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 228
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 5

    .line 584
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 589
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    .line 597
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v1, :cond_2

    .line 598
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 599
    const-string v1, "DeviceKeyHandler"

    const-string v3, "SensorProcessMessage(): sensor value change."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 602
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V

    .line 607
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 609
    return-void

    .line 607
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "gesture"    # Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 628
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 632
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 635
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 644
    :cond_3
    :goto_0
    return-void
.end method

.method private disableProximitySensor()V
    .locals 4

    .line 567
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "DeviceKeyHandler"

    const-string v1, "disableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 575
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 576
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    goto :goto_0

    .line 578
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 581
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .line 990
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 992
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 993
    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 995
    .local v1, "event":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 996
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 997
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 998
    .end local v1    # "event":Landroid/view/KeyEvent;
    goto :goto_0

    .line 999
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1000
    const-string v1, "DeviceKeyHandler"

    const-string v2, "MediaSessionLegacyHelper instance is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    :goto_0
    return-void
.end method

.method private enableProximitySensor()V
    .locals 6

    .line 548
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "DeviceKeyHandler"

    const-string v1, "enableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 556
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 564
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 938
    .local v4, "id":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 939
    .local v5, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 940
    .local v6, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 941
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 943
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v8, v3, :cond_0

    .line 944
    return-object v4

    .line 949
    .end local v5    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "flashAvailable":Ljava/lang/Boolean;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    nop

    .line 936
    .end local v4    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    .restart local v4    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "DeviceKeyHandler"

    const-string v5, "Couldn\'t get torch mode characteristics."

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    return-object v3

    .line 951
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getCameraType(Ljava/lang/String;)I
    .locals 2
    .param p1, "keyValue"    # Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2fb833ec

    if-eq v0, v1, :cond_2

    const v1, -0x2423cd72

    if-eq v0, v1, :cond_1

    const v1, 0x6f3d522f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 821
    const v0, 0x10000100

    goto :goto_2

    .line 818
    :pswitch_0
    const v0, 0x10000400

    .line 819
    .local v0, "param":I
    goto :goto_2

    .line 815
    .end local v0    # "param":I
    :pswitch_1
    const v0, 0x10000200

    .line 816
    .restart local v0    # "param":I
    goto :goto_2

    .line 812
    .end local v0    # "param":I
    :pswitch_2
    const v0, 0x10000100

    .line 813
    .restart local v0    # "param":I
    nop

    .line 821
    :goto_2
    nop

    .line 824
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 845
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 846
    const-string v2, "DeviceKeyHandler"

    const-string v3, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v2, ""

    return-object v2

    .line 849
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 850
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 851
    const-string v3, "DeviceKeyHandler"

    const-string v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v3, ""

    return-object v3

    .line 854
    :cond_1
    const-string v3, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
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

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .line 666
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private isAWakeUpGesture(Ljava/lang/String;)Z
    .locals 3
    .param p1, "gesture"    # Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "OpenApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "OpenShelf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "OpenShortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 622
    return v1

    .line 620
    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x764e2f30 -> :sswitch_6
        -0x2fb833ec -> :sswitch_5
        -0x2d113a20 -> :sswitch_4
        -0x2423cd72 -> :sswitch_3
        0x31 -> :sswitch_2
        0x17ed5757 -> :sswitch_1
        0x6f3d522f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performVibration()V
    .locals 1

    .line 979
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 980
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 983
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x96

    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 987
    :cond_1
    return-void
.end method

.method private processKeyEvent()V
    .locals 13

    .line 670
    const-string v0, "/proc/touchpanel/coordinate"

    invoke-static {v0}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    return-void

    .line 676
    :cond_0
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 677
    .local v1, "at":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "keyValue":Ljava/lang/String;
    const-string v4, "DeviceKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive gesture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->isInCall()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-nez v4, :cond_6

    .line 680
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v10, 0x31

    if-eq v4, v10, :cond_3

    const/16 v10, 0x37

    if-eq v4, v10, :cond_2

    const/16 v10, 0x624

    if-eq v4, v10, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v9

    goto :goto_1

    :pswitch_1
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_1
    const-string v4, "15"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_2
    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v8

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 707
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    if-eqz v4, :cond_6

    .line 708
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 709
    const-class v4, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/dreams/DreamManagerInternal;

    .line 710
    .local v4, "dreamService":Landroid/service/dreams/DreamManagerInternal;
    invoke-virtual {v4}, Landroid/service/dreams/DreamManagerInternal;->onSingleTap()V

    .line 711
    .end local v4    # "dreamService":Landroid/service/dreams/DreamManagerInternal;
    goto :goto_2

    .line 699
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v4, :cond_6

    .line 700
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 702
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_2

    .line 692
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 693
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 694
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 695
    goto :goto_2

    .line 687
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 689
    const/16 v4, 0x58

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 690
    goto :goto_2

    .line 682
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 684
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 685
    nop

    .line 719
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 720
    .local v4, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    if-eqz v4, :cond_b

    .line 721
    const-string v10, "DeviceKeyHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Corresponding action is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 723
    .local v10, "actionName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v5, "OpenCamera"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v9

    goto :goto_4

    :sswitch_1
    const-string v5, "OpenApp"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_2
    const-string v5, "FrontCamera"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_4

    :sswitch_3
    const-string v5, "OpenTorch"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_4

    :sswitch_4
    const-string v5, "OpenShelf"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_4

    :sswitch_5
    const-string v6, "TakeVideo"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :sswitch_6
    const-string v5, "OpenShortcut"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x6

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v8

    :goto_4
    packed-switch v5, :pswitch_data_2

    .end local v10    # "actionName":Ljava/lang/String;
    goto/16 :goto_6

    .line 740
    .restart local v10    # "actionName":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 741
    const/4 v5, 0x0

    .line 742
    .local v5, "success":Z
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_b

    .line 744
    const-string v6, "com.oneplus.soundrecorder"

    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 745
    invoke-virtual {v6, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    if-nez v6, :cond_8

    .line 748
    invoke-virtual {p0, v4, v9}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 749
    if-eqz v5, :cond_9

    .line 750
    iput-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    goto :goto_5

    .line 754
    :cond_8
    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 756
    :cond_9
    :goto_5
    if-eqz v5, :cond_b

    .line 757
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 758
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 760
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_b

    const-string v6, "com.oneplus.soundrecorder"

    .line 761
    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 762
    invoke-virtual {v6, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 763
    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v6, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v6, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 731
    .end local v5    # "success":Z
    :pswitch_8
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 732
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 733
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 735
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraType(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 736
    goto :goto_6

    .line 725
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :pswitch_9
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 726
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    xor-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 727
    nop

    .line 788
    .end local v10    # "actionName":Ljava/lang/String;
    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x764e2f30 -> :sswitch_6
        -0x2fb833ec -> :sswitch_5
        -0x2d113a20 -> :sswitch_4
        -0x2cffc44e -> :sswitch_3
        -0x2423cd72 -> :sswitch_2
        0x17ed5757 -> :sswitch_1
        0x6f3d522f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private startApp(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "test"    # Z

    .line 859
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 860
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 861
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 862
    return v1

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 865
    return v1

    .line 867
    :cond_1
    const-string v1, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed because intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v1, 0x0

    return v1
.end method

.method private startShelf(Z)Z
    .locals 4
    .param p1, "test"    # Z

    .line 828
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 830
    :cond_0
    const-string/jumbo v1, "net.oneplus.h2launcher"

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "net.oneplus.h2launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 834
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    return v0
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "test"    # Z

    move-object v1, p0

    move-object v8, p1

    .line 872
    iget-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "launcherapps"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 874
    iget-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 875
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 876
    new-instance v2, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 877
    .local v2, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v2, v8}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 878
    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 879
    iget-object v3, v1, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 881
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 882
    return v0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "DeviceKeyHandler"

    const-string v5, "get shortcuts failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return v9

    .line 886
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    nop

    .line 887
    .end local v2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 889
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v8

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 890
    return v0

    .line 891
    :catch_1
    move-exception v0

    .line 892
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "DeviceKeyHandler"

    const-string/jumbo v3, "start shortcut failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v9

    .line 897
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_2
    :goto_0
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v2, "shortcut service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return v9
.end method

.method private updateOemSettings()V
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 408
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 413
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 414
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 415
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 416
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 417
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 418
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x6

    invoke-static {v1, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_7

    move v1, v4

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 419
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_8

    move v1, v4

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 423
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-ne v1, v4, :cond_9

    .line 424
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 428
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->makeGestureMap(Landroid/content/ContentResolver;)V

    .line 431
    new-array v1, v5, [B

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 432
    .local v1, "enableByte":[B
    const-string v5, "/proc/touchpanel/gesture_enable"

    invoke-static {v5, v1}, Lcom/android/server/policy/FileUtils;->writeByteArray(Ljava/lang/String;[B)Z

    .line 434
    const-string/jumbo v5, "oem_acc_anti_misoperation_screen"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v4, :cond_a

    move v3, v4

    nop

    :cond_a
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 437
    return-void
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 502
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 503
    .local v0, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 504
    .local v1, "actionUp":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    nop

    .line 505
    .local v2, "shouldHandleEvent":Z
    :cond_1
    move v4, v2

    .line 506
    .local v4, "handled":Z
    if-eqz v4, :cond_3

    .line 507
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 508
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    goto :goto_1

    .line 511
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    :goto_1
    return v4
.end method

.method isInCall()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method makeGestureMap(Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 299
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_o"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "gestureActionO":Ljava/lang/String;
    const-string/jumbo v2, "oem_acc_blackscreen_gesture_v"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "gestureActionV":Ljava/lang/String;
    const-string/jumbo v3, "oem_acc_blackscreen_gesture_s"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "gestureActionS":Ljava/lang/String;
    const-string/jumbo v4, "oem_acc_blackscreen_gesture_w"

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "gestureActionW":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_m"

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "gestureActionM":Ljava/lang/String;
    if-nez v2, :cond_0

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    if-eqz v5, :cond_0

    .line 315
    const-string v2, "OpenTorch"

    .line 317
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    if-eqz v5, :cond_1

    .line 318
    const-string v0, "OpenCamera"

    .line 320
    :cond_1
    const-string v5, "6"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "2"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v5, "14"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v5, "13"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v5, "12"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onKeyguardDone()V
    .locals 2

    .line 465
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "receive keyguard done, process gesture action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 470
    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .line 1013
    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardOccludedChangedLw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    .line 1015
    return-void
.end method

.method onScreenTurnedOff()V
    .locals 5

    .line 441
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    if-eqz v0, :cond_0

    .line 442
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 443
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 446
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 448
    return-void
.end method

.method onScreenTurnedOn()V
    .locals 1

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 452
    return-void
.end method

.method onStartedWakingUp()V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 461
    :cond_0
    return-void
.end method

.method parseSettingData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "gesture"    # Ljava/lang/String;
    .param p2, "settingsValue"    # Ljava/lang/String;

    .line 328
    if-nez p2, :cond_0

    .line 329
    return-void

    .line 330
    :cond_0
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    .line 331
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, "colonIndex":I
    if-gez v1, :cond_1

    .line 335
    invoke-virtual {v0, p2}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 339
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 340
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "tmp":[Ljava/lang/String;
    array-length v5, v4

    const/4 v7, 0x1

    invoke-static {v4, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 343
    aget-object v5, v2, v7

    invoke-virtual {v0, v5}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 344
    const-string v5, "OpenApp"

    aget-object v7, v2, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_2

    .line 345
    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    const-string v5, "OpenShortcut"

    aget-object v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 347
    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 348
    aget-object v3, v2, v6

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 351
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public registerCameraManagerCallbacks()V
    .locals 3

    .line 906
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 907
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 910
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 913
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTorchMode() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    monitor-enter p0

    .line 918
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 919
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, "0"

    :goto_0
    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    const/4 v1, 0x1

    :try_start_2
    monitor-exit p0

    return v1

    .line 924
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "DeviceKeyHandler"

    const-string v3, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    .line 927
    monitor-exit p0

    return v1

    .line 930
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    monitor-exit p0

    .line 931
    return v1

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 902
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 903
    return-void
.end method

.method startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z
    .locals 5
    .param p1, "actionInfo"    # Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .param p2, "test"    # Z

    .line 796
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 798
    .local v1, "success":Z
    const-string v2, "OpenShelf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-direct {p0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShelf(Z)Z

    move-result v1

    goto :goto_0

    .line 800
    :cond_0
    const-string v2, "OpenApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startApp(Ljava/lang/String;IZ)Z

    move-result v1

    goto :goto_0

    .line 802
    :cond_1
    const-string v2, "OpenShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1

    .line 805
    :cond_2
    :goto_0
    return v1
.end method

.method public systemReady()V
    .locals 4

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.netease.cloudmusic"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 244
    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 243
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 245
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 247
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "com.netease.cloudmusic"

    invoke-interface {v2, v3, v1, v1}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    goto :goto_1

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void
.end method
