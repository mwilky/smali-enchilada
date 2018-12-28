.class public Lcom/android/systemui/statusbar/phone/OPFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static FACELOCK_PACKAGE_NAME:Ljava/lang/String;

.field private static FACELOCK_SERVICE_NAME:Ljava/lang/String;

.field private static FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private LIGHTING_MODE_BRIGHTNESS:I

.field private LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

.field private LIGHTING_MODE_SENSOR_THRESHOLD:I

.field private final MSG_CAMERA_ERROR:I

.field private final MSG_FAIL:I

.field private final MSG_NO_FACE:I

.field private final MSG_NO_PERMISSION:I

.field private final MSG_RESET_FACELOCK_PENDING:I

.field private final MSG_RESET_LOCKOUT:I

.field private final MSG_SKIP_BOUNCER:I

.field private final MSG_START_FACELOCK:I

.field private final MSG_STOP_FACELOCK:I

.field private final MSG_UNLOCK:I

.field private final MSG_UPDATE_FACE_ADDED:I

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCloseLightView:Landroid/view/View;

.field private mCameraLaunching:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsScreenTurningOn:Z

.field private mIsSleep:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

.field private mLightingModeEnabled:Z

.field private mLockout:Z

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

.field private final mOffAuthenticateRunnable:Ljava/lang/Runnable;

.field private mPendingFacelockWhenBouncer:Z

.field private mPendingLaunchCameraSource:Ljava/lang/String;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

.field private mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field mSleepTime:J

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    const-string v0, "com.oneplus.faceunlock"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.oneplus.faceunlock.FaceUnlockService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    const-string v0, "com.oneplus.faceunlock.FaceSettingService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    const-wide v1, 0x3fd2d0e560418937L    # 0.294

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_START_FACELOCK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_STOP_FACELOCK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UNLOCK:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_FAIL:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_FACE:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_LOCKOUT:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_SKIP_BOUNCER:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_FACELOCK_PENDING:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_CAMERA_ERROR:I

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_PERMISSION:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UPDATE_FACE_ADDED:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const-string v1, "OPFacelockController"

    const-string v2, "new facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FacelockThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mWM:Landroid/view/IWindowManager;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v1, :cond_0

    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightView == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->init()V

    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "Binding ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    goto :goto_0

    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "return Binding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    goto :goto_0

    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    :cond_4
    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetFacelockPending, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleStartFacelock()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle startFacelock, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pendingStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", live wp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cameraError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    const-string v1, "OPFacelockController"

    const-string v2, "not start Facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "OPFacelockController"

    const-string v2, "not start when camera error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_2

    const-string v1, "OPFacelockController"

    const-string v2, "pending in bouncer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    const-string v1, "OPFacelockController"

    const-string v2, "pending start to screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v2, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFacelock mService null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    return-void

    :catch_1
    move-exception v2

    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFacelock fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleStopFacelock()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not stop facelock, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "pending stop facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle stopFacelock, pending camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock mService null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private launchCamera(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private unlockKeyguard()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockKeyguard, bouncer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", live wp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", interactive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", offUnlock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hideFODDim()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    return-void

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v3, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIsFaceAdded fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceAdded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pre:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    const-string v1, "OPFacelockController"

    const-string v4, "face is added and not allowed, update Prompt reason"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    if-eq v0, v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateKeyguardAlpha(IZ)V
    .locals 6

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v0, v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne p1, v0, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v0

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateNotifyMessage(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRecognizedState(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v2, "not start when camera launching"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v2, "not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OPFacelockController"

    const-string/jumbo v2, "timeout, not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "  OPFacelockController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mFailAttempts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mLockout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBinding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCameraLaunching: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBoundToService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mFaceLockActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  isFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isAutoFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isFacelockLightingEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  FacelockRunningType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  isFacelockTimeout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isFacelockAllowed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsKeyguardShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBouncer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsScreenTurnedOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPendingLaunchCameraSource: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsScreenOffUnlock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mLightingModeEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  LIGHTING_MODE_SENSOR_THRESHOLD: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  LIGHTING_MODE_BRIGHTNESS: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public isFacelockRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method public isFacelockTimeout()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

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

.method public isLighModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method public isScreenOffUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    :cond_0
    const/4 v0, 0x0

    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCameraLaunching, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", facelockActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    :cond_2
    return v0
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onClick to stop Lighting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceProvisioned, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStateChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    const-string v1, "persist.sys.facelock.lsensor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    const-string v0, "persist.sys.facelock.bright"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", unlocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OPFacelockController"

    const-string v1, "just keyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyguardReset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    :cond_5
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 3

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OPFacelockController"

    const-string v1, "onStrongAuthStateChanged to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    :cond_1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    return-void
.end method

.method public onThemeColorUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    :cond_0
    return-void
.end method

.method public resetFacelockPending()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method public tryToStartFaceLock()Z
    .locals 3

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToStartFaceLock, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v1
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string/jumbo v1, "tryToStartFaceLockAfterScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
