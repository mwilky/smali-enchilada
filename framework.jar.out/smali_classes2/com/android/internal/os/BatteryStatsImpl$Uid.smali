.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1


# instance fields
.field mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mChildUids:Landroid/util/IntArray;

.field mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mInForegroundService:Z

.field final mJobCompletions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field final mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    mul-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x4

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsImpl$Uid;I[JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addProcStateTimesMs(I[JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsImpl$Uid;I[JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addProcStateScreenOffTimesMs(I[JZ)V

    return-void
.end method

.method private addProcStateScreenOffTimesMs(I[JZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    return-void
.end method

.method private addProcStateTimesMs(I[JZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    return-void
.end method

.method private nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method public createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x14

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xf

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x13

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x15

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x11

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x10

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x16

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuActiveTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCpuFreqTimes(II)[J
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    nop

    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    if-nez v5, :cond_1

    const-string v5, ",0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    const-string/jumbo v5, "times="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "count="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "totalLatencyMs="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_2

    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v5, v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v0

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1

    :cond_1
    return-wide v1
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/BatteryStats$Uid$Pid;

    invoke-direct {v1, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public bridge synthetic getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object p1

    return-object p1
.end method

.method public getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    aget-object v0, v0, p2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v6, p0

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v1
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_1
    return-object v0

    :pswitch_1
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_2

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_2
    return-object v0

    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_3

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_3
    return-object v0

    :cond_4
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_5

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0x12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_5
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .locals 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCountLocked(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isInBackground()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 9

    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v8, v0, p1

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 10

    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v8

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v1, p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v9

    move-object v4, p0

    move-object v6, v0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v1, p1

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteBluetoothScanResultsLocked(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    return-void
.end method

.method public noteBluetoothScanStartedLocked(JZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteForegroundServicePausedLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteForegroundServiceResumedLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteJobsDeferredLocked(IJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v2, v2, v0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteMobileRadioApWakeupLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_0

    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public noteResetAudioLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 1

    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v1

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    iput-wide p4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 1

    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;JI)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p4, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pid;

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_2

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    :cond_2
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    goto :goto_0

    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const/16 v1, 0x35

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    const/16 v1, 0x35

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    :cond_1
    return-void
.end method

.method public noteWifiRadioApWakeupLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v2, v12, v13, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v14

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_1
    move v15, v0

    if-ge v15, v14, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xd

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v17, v2

    move-object v2, v8

    move-object v11, v5

    move-object/from16 v5, v17

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move/from16 v19, v10

    move-object v10, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move/from16 v19, v10

    :goto_2
    add-int/lit8 v0, v15, 0x1

    move/from16 v10, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_3
    move v11, v0

    if-ge v11, v10, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v20, v6

    move-object/from16 v6, v16

    move/from16 v21, v10

    move-object v10, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v15, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    move/from16 v21, v10

    :goto_4
    add-int/lit8 v0, v11, 0x1

    move/from16 v10, v21

    goto :goto_3

    :cond_4
    move/from16 v21, v10

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v0, 0x0

    :goto_5
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readCounterFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v10, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v15, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x4

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object v2, v8

    move-object v7, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x5

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    goto :goto_a

    :cond_a
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x6

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v22, v6

    move-object/from16 v6, v16

    move/from16 v23, v10

    move-object v10, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_b

    :cond_b
    move/from16 v23, v10

    move-object v10, v7

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_b
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v0, 0x0

    :goto_c
    const/4 v7, 0x5

    if-ge v0, v7, :cond_d

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_c
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v10, v1, v0

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x7

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v5

    move-object/from16 v16, v2

    move-object v2, v8

    move-object v7, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    :cond_e
    move/from16 v16, v6

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xf

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    :cond_f
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    :cond_10
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_11

    :cond_11
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x11

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_12

    :cond_12
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0xa

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_13

    :cond_13
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x16

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_14

    :cond_14
    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x14

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v10, v7

    move/from16 v24, v11

    const/4 v11, 0x5

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_15

    :cond_15
    move/from16 v24, v11

    const/4 v11, 0x5

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x13

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v10

    move-object v2, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x15

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v10

    move-object v2, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v10, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :goto_19
    const/16 v0, 0x13

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    move/from16 v0, v16

    :goto_1a
    const/4 v6, 0x7

    if-ge v0, v6, :cond_1b

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    goto :goto_1b

    :cond_1a
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v3, 0x9

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    :goto_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move/from16 v1, v16

    :goto_1d
    if-ge v1, v0, :cond_1e

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :cond_1e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move/from16 v1, v16

    :goto_1e
    if-ge v1, v0, :cond_1f

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_1f
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_1f

    :cond_20
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_20

    :cond_21
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_21

    :cond_22
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v11, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_22

    :cond_23
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_22
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v1, :cond_25

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    if-ne v1, v0, :cond_24

    goto :goto_23

    :cond_24
    new-instance v1, Landroid/os/ParcelFormatException;

    const-string v2, "Incompatible number of cpu clusters"

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_23
    new-array v1, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move/from16 v1, v16

    :goto_24
    if-ge v1, v0, :cond_2b

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v3, :cond_27

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    if-ne v3, v2, :cond_26

    goto :goto_25

    :cond_26
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Incompatible number of cpu speeds"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    :goto_25
    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v3, v4, v1

    move/from16 v4, v16

    :goto_26
    if-ge v4, v2, :cond_29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v5, v7, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v3, v4

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_29
    nop

    const/4 v3, 0x0

    goto :goto_27

    :cond_2a
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2b
    const/4 v3, 0x0

    goto :goto_28

    :cond_2c
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_28
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$1;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_2d

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move/from16 v1, v16

    :goto_29
    if-ge v1, v0, :cond_2e

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_2d
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_2e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_2f

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    nop

    :goto_2a
    move/from16 v1, v16

    if-ge v1, v0, :cond_30

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v16, v1, 0x1

    goto :goto_2a

    :cond_2f
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_2b

    :cond_31
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_2c

    :cond_32
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_2c
    return-void
.end method

.method readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_3
    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    :cond_0
    return-void
.end method

.method public reset(JJ)Z
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr v5, v6

    :cond_0
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr v5, v6

    :cond_1
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr v5, v6

    :cond_2
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v9, 0x5

    if-eqz v6, :cond_6

    move v6, v5

    move v5, v8

    :goto_0
    if-ge v5, v9, :cond_4

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v10

    xor-int/2addr v10, v7

    or-int/2addr v6, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v8

    :goto_1
    or-int/2addr v5, v6

    :cond_6
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    or-int/2addr v5, v6

    :cond_7
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$800(Lcom/android/internal/os/BatteryStatsImpl$DualTimer;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    :cond_8
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    :cond_9
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_d

    move v6, v5

    move v5, v8

    :goto_2
    const/4 v10, 0x7

    if-ge v5, v10, :cond_b

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    if-eqz v10, :cond_a

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v5

    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v10

    xor-int/2addr v10, v7

    or-int/2addr v6, v10

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/16 v10, 0x13

    if-eq v5, v10, :cond_c

    move v5, v7

    goto :goto_3

    :cond_c
    move v5, v8

    :goto_3
    or-int/2addr v5, v6

    :cond_d
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/4 v10, 0x0

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    iput-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_4

    :cond_e
    const/4 v5, 0x1

    :cond_f
    :goto_4
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v11, 0x4

    if-eqz v6, :cond_10

    move v6, v8

    :goto_5
    if-ge v6, v11, :cond_10

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v12, v12, v6

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/16 v12, 0xa

    if-eqz v6, :cond_12

    move v6, v8

    :goto_6
    if-ge v6, v12, :cond_11

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v6

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v6

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    :cond_12
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    :cond_13
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    :cond_14
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    :cond_15
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v13, v6

    move v14, v8

    :goto_7
    if-ge v14, v13, :cond_18

    aget-object v15, v6, v14

    if-eqz v15, :cond_17

    array-length v12, v15

    move v11, v8

    :goto_8
    if-ge v11, v12, :cond_17

    aget-object v10, v15, v11

    if-eqz v10, :cond_16

    invoke-virtual {v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_17
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0xa

    goto :goto_7

    :cond_18
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    :cond_19
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    :cond_1a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v10, v6

    move v11, v8

    :goto_9
    if-ge v11, v10, :cond_1c

    aget-object v12, v6, v11

    if-eqz v12, :cond_1b

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_1c
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v6, :cond_1e

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v10, v6

    move v11, v8

    :goto_a
    if-ge v11, v10, :cond_1e

    aget-object v12, v6, v11

    if-eqz v12, :cond_1d

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->reset(Z)V

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_1e
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v7

    :goto_b
    if-ltz v10, :cond_20

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_c

    :cond_1f
    const/4 v5, 0x1

    :goto_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_b

    :cond_20
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v7

    :goto_d
    if-ltz v11, :cond_22

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_e

    :cond_21
    const/4 v5, 0x1

    :goto_e
    add-int/lit8 v11, v11, -0x1

    goto :goto_d

    :cond_22
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_f
    if-ltz v12, :cond_24

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_10

    :cond_23
    const/4 v5, 0x1

    :goto_10
    add-int/lit8 v12, v12, -0x1

    goto :goto_f

    :cond_24
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    move v12, v8

    :goto_11
    sget-object v13, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v13, v13

    if-ge v12, v13, :cond_26

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v13, v13, v12

    if-eqz v13, :cond_25

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v13, v13, v12

    invoke-virtual {v13, v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    :cond_25
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_26
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_12
    if-ltz v12, :cond_28

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v14

    if-eqz v14, :cond_27

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_13

    :cond_27
    const/4 v5, 0x1

    :goto_13
    add-int/lit8 v12, v12, -0x1

    goto :goto_12

    :cond_28
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_14
    if-ltz v12, :cond_29

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    add-int/lit8 v12, v12, -0x1

    goto :goto_14

    :cond_29
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_2b

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_15
    if-ltz v12, :cond_2b

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pid;

    iget v14, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v14, :cond_2a

    const/4 v5, 0x1

    goto :goto_16

    :cond_2a
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_16
    add-int/lit8 v12, v12, -0x1

    goto :goto_15

    :cond_2b
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_2e

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-lez v15, :cond_2c

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_18
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    nop

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_18

    :cond_2c
    nop

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_17

    :cond_2d
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    :cond_2e
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    if-nez v5, :cond_4e

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_2f

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    :cond_2f
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_30

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    :cond_30
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v7, :cond_31

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    :cond_31
    const/4 v7, 0x0

    :goto_19
    if-ge v7, v9, :cond_33

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v8, v8, v7

    if-eqz v8, :cond_32

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_33
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_34

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    :cond_34
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v7, :cond_35

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1a

    :cond_35
    const/4 v7, 0x0

    :goto_1a
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_36

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_36
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_37

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_37
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_38

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_38
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_39

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_39
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_3a
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_3b
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3c

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_3c
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v8, :cond_3d

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_3d
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v8, :cond_3e

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :cond_3e
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v8, :cond_3f

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    iput-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    :cond_3f
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v7, :cond_40

    const/4 v7, 0x0

    :goto_1b
    const/4 v8, 0x4

    if-ge v7, v8, :cond_40

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_40
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v7, :cond_41

    const/4 v7, 0x0

    :goto_1c
    const/16 v8, 0xa

    if-ge v7, v8, :cond_41

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_41
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_42

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    :cond_42
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_43

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    :cond_43
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v7, :cond_44

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    :cond_44
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v7, :cond_47

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v8, :cond_47

    aget-object v12, v7, v9

    if-eqz v12, :cond_46

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1e
    if-ge v14, v13, :cond_46

    aget-object v15, v12, v14

    if-eqz v15, :cond_45

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_47
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_48

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_48
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_49

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_49
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_4b

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v8, :cond_4b

    aget-object v12, v7, v9

    if-eqz v12, :cond_4a

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_4b
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v7, :cond_4d

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v8, :cond_4d

    aget-object v12, v7, v9

    if-eqz v12, :cond_4c

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_4d
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$1000(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$1000(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    :cond_4e
    if-nez v5, :cond_4f

    const/16 v17, 0x1

    goto :goto_21

    :cond_4f
    const/16 v17, 0x0

    :goto_21
    return v17
.end method

.method public setProcessStateForTest(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    return-void
.end method

.method public updateOnBatteryBgTimeBase(JJ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateUidProcessStateLocked(I)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBsi"
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/os/BatteryStats;->mapToInternalProcessState(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v4, v1, :cond_8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/16 v7, 0x13

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1300(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v9

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v10}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$Constants;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1408(Lcom/android/internal/os/BatteryStatsImpl;)J

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1508(Lcom/android/internal/os/BatteryStatsImpl;)J

    :goto_1
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_3

    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->CRITICAL_PROC_STATES:[I

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mPendingUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v1, v7, :cond_7

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, v1

    if-nez v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    :cond_6
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_7
    const-wide/16 v6, 0x3e8

    mul-long v8, v4, v6

    mul-long v10, v2, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    mul-long v8, v4, v6

    mul-long/2addr v6, v2

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-eq v0, v4, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServiceResumedLocked(J)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServicePausedLocked(J)V

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    :cond_a
    return-void
.end method

.method writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v7

    move-wide/from16 v3, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v7, v10, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    move v11, v3

    :goto_2
    if-ge v11, v10, :cond_2

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v7, v12, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    move v11, v3

    :goto_3
    sget-object v12, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v12, v12

    if-ge v11, v12, :cond_3

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v12, v12, v11

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeInt(I)V

    move v12, v3

    :goto_4
    if-ge v12, v11, :cond_4

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    move v13, v3

    :goto_5
    if-ge v13, v12, :cond_5

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v14, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_6

    :cond_6
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v14, 0x1

    if-eqz v13, :cond_7

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_7

    :cond_7
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_8

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_8

    :cond_8
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_9

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_9

    :cond_9
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    move v13, v3

    :goto_a
    const/4 v15, 0x5

    if-ge v13, v15, :cond_b

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    if-eqz v15, :cond_a

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_b

    :cond_a
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_b
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_c

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    :cond_c
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_d

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    :cond_d
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_e

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    :cond_e
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_f

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_f

    :cond_f
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_10

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_10

    :cond_10
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_11

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_11

    :cond_11
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v13, :cond_12

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_12

    :cond_12
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_13

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_13

    :cond_13
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_14

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_14

    :cond_14
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_15

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_15

    :cond_15
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_16

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_16

    :cond_16
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_17

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_17

    :cond_17
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    move v13, v3

    :goto_18
    const/4 v15, 0x7

    if-ge v13, v15, :cond_19

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    if-eqz v15, :cond_18

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_19

    :cond_18
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    :cond_19
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v13, :cond_1a

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1a

    :cond_1a
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v13, :cond_1b

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    move v13, v3

    :goto_1b
    const/4 v15, 0x4

    if-ge v13, v15, :cond_1c

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_1b
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1c
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v13, :cond_1e

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    move v13, v3

    :goto_1c
    const/16 v15, 0xa

    if-ge v13, v15, :cond_1d

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v13

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_1d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1d

    :cond_1e
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_1f

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1f
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_20

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    :cond_20
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v13, :cond_21

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v13, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :cond_21
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v13, :cond_26

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v13, v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v15, v13

    :goto_21
    if-ge v3, v15, :cond_25

    aget-object v14, v13, v3

    if-eqz v14, :cond_24

    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v1, v14

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v1, v14

    move/from16 v17, v2

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_23

    move/from16 v18, v1

    aget-object v1, v14, v2

    if-eqz v1, :cond_22

    move-object/from16 v19, v4

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    goto :goto_23

    :cond_22
    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    move-object/from16 v4, v19

    goto :goto_22

    :cond_23
    move-object/from16 v19, v4

    const/4 v4, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_24
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v4, v19

    const/4 v14, 0x1

    goto :goto_21

    :cond_25
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    goto :goto_25

    :cond_26
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v4

    move v4, v3

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->access$1100(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v1, v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    invoke-static {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_28
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v1, v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    invoke-static {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2a
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_28

    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_29

    :cond_2c
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    return-void
.end method
