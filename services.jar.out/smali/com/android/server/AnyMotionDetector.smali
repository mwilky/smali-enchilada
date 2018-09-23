.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$Vector3;,
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final DEBUG:Z = false

.field private static final ORIENTATION_MEASUREMENT_DURATION_MILLIS:J = 0x9c4L

.field private static final ORIENTATION_MEASUREMENT_INTERVAL_MILLIS:J = 0x1388L

.field public static final RESULT_MOVED:I = 0x1

.field public static final RESULT_STATIONARY:I = 0x0

.field public static final RESULT_UNKNOWN:I = -0x1

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x28

.field private static final STALE_MEASUREMENT_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final STATE_ACTIVE:I = 0x1

.field private static final STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AnyMotionDetector"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final THRESHOLD_ENERGY:F

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field private mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMeasurementInProgress:Z

.field private final mMeasurementTimeout:Ljava/lang/Runnable;

.field private mMeasurementTimeoutIsActive:Z

.field private mNumSufficientSamples:I

.field private mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRestart:Ljava/lang/Runnable;

.field private mSensorRestartIsActive:Z

.field private mState:I

.field private final mThresholdAngle:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakelockTimeout:Ljava/lang/Runnable;

.field private mWakelockTimeoutIsActive:Z


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/AnyMotionDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$4;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AnyMotionDetector"

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    new-instance v1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-direct {v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    const-wide v1, 0x404f400000000000L    # 62.5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AnyMotionDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/AnyMotionDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AnyMotionDetector;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AnyMotionDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AnyMotionDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    return-void
.end method

.method private startOrientationMeasurementLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    const v3, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    :cond_1
    return-void
.end method

.method private stopOrientationMeasurementLocked()I
    .locals 5

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AnyMotionDetector"

    const-string v3, "No accelerometer data acquired for orientation measurement."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public checkForAnyMotion()V
    .locals 6

    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public getStationaryStatus()I
    .locals 10

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v3

    iget v4, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getEnergy()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    return v5

    :cond_2
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v8, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    return v1

    :cond_3
    return v5

    :cond_4
    :goto_0
    return v1
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
