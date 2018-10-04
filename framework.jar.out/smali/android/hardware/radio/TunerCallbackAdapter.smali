.class Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "TunerCallbackAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private mDelayedCompleteCallback:Z

.field private final mHandler:Landroid/os/Handler;

.field mIsAntennaConnected:Z

.field mLastCompleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mProgramList:Landroid/hardware/radio/ProgramList;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onAntennaState$9(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method public static synthetic lambda$onBackgroundScanAvailabilityChange$10(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$5(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic lambda$onCurrentProgramInfoChanged$6(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onEmergencyAnnouncement$8(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method public static synthetic lambda$onError$2(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method public static synthetic lambda$onParametersUpdated$13(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$onProgramListChanged$12(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method public static synthetic lambda$onTrafficAnnouncement$7(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method public static synthetic lambda$onTuneFailed$3(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method public static synthetic lambda$onTuneFailed$4(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method public static synthetic lambda$sendBackgroundScanCompleteLocked$11(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method public static synthetic lambda$setProgramListObserver$0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    invoke-interface {p2}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$setProgramListObserver$1(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    if-eqz v1, :cond_1

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Sending delayed onBackgroundScanComplete callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

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

.method private sendBackgroundScanCompleteLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$xIUT1Qu5TkA83V8ttYy1zv-JuFo;

    invoke-direct {v1, p0}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$xIUT1Qu5TkA83V8ttYy1zv-JuFo;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method clearLastCompleteList()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLastCompleteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAntennaConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    return v0
.end method

.method public onAntennaState(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$dR-VQmFrL_tBD2wpNvborTd8W08;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$dR-VQmFrL_tBD2wpNvborTd8W08;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$4zf9n0sz_rU8z6a9GJmRInWrYkQ;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$4zf9n0sz_rU8z6a9GJmRInWrYkQ;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Got onBackgroundScanComplete callback, but the program list didn\'t get through yet. Delaying it..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$B4BuskgdSatf-Xt5wzgLniEltQk;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string v1, "ProgramInfo must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$RSNrzX5-O3nayC2_jg0kAR6KkKY;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$RSNrzX5-O3nayC2_jg0kAR6KkKY;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$ZwPm3xxjeLvbP12KweyzqFJVnj4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$ZwPm3xxjeLvbP12KweyzqFJVnj4;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$jl29exheqPoYrltfLs9fLsjsI1A;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$jl29exheqPoYrltfLs9fLsjsI1A;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Yz-4KCDu1MOynGdkDf_oMxqhjeY;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Yz-4KCDu1MOynGdkDf_oMxqhjeY;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgramListChanged()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$UsmGhKordXy4lhCylRP0mm2NcYc;

    invoke-direct {v1, p0}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$UsmGhKordXy4lhCylRP0mm2NcYc;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramList;->apply(Landroid/hardware/radio/ProgramList$Chunk;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$tiaoLZrR2K56rYeqHvSRh5lRdBI;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$tiaoLZrR2K56rYeqHvSRh5lRdBI;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hj_P___HTEx_8p7qvYVPXmhwu7w;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hj_P___HTEx_8p7qvYVPXmhwu7w;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/16 v0, -0x26

    if-eq p1, v0, :cond_1

    const/16 v0, -0x20

    if-eq p1, v0, :cond_0

    const/16 v0, -0x16

    if-eq p1, v0, :cond_1

    const/16 v0, -0x13

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an error with no mapping to the legacy API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), doing a best-effort conversion to ERROR_SCAN_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x3

    :goto_1
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;

    invoke-direct {v2, p0, v0}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Previous program list observer wasn\'t properly closed, closing it..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    :cond_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    new-instance v1, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$V-mJUy8dIlOVjsZ1ckkgn490jFI;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$V-mJUy8dIlOVjsZ1ckkgn490jFI;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
