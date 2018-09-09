.class public Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;
.super Landroid/os/BatteryStats$Uid;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyUid"
.end annotation


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 2077
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 2078
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    .line 2079
    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2093
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 2350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 2385
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 2380
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuActiveTime()J
    .locals 2

    .line 2418
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 1

    .line 2423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 2408
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(II)[J
    .locals 1
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 2428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 2395
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 2399
    return-void
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2191
    const-wide/16 v0, 0x0

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

    .line 2113
    const/4 v0, 0x0

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

    .line 2108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2325
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2320
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2403
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 2355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2098
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 2310
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 2315
    const-wide/16 v0, 0x0

    return-wide v0
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

    .line 2133
    const/4 v0, 0x0

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

    .line 2123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 2276
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "state"    # I

    .line 2281
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

    .line 2128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 2413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .locals 1
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 2433
    const/4 v0, 0x0

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

    .line 2118
    const/4 v0, 0x0

    return-object v0
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

    .line 2103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2335
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 2340
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 2083
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 2300
    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2330
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2251
    const/4 v0, 0x0

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

    .line 2088
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 1
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 2236
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 2231
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 2345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2390
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2186
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .line 2216
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2211
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .line 2221
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2201
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2196
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 2206
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .line 2305
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .line 2295
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2182
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2178
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2146
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2150
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0
    .param p1, "type"    # I

    .line 2291
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0
    .param p1, "csph"    # I
    .param p2, "elapsedRealtime"    # J

    .line 2162
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2166
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2174
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2170
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2138
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2154
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2158
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 2142
    return-void
.end method
