.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.TunerCallback"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private mInitialConfigurationDone:Z

.field private final mNativeContext:J

.field private final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadioService.TunerCallback"

    const-string v2, "client died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleHwFailure()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method public static synthetic lambda$onAntennaState$5(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public static synthetic lambda$onBackgroundScanAvailabilityChange$6(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method public static synthetic lambda$onBackgroundScanComplete$7(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic lambda$onCurrentProgramInfoChanged$2(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic lambda$onEmergencyAnnouncement$4(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method public static synthetic lambda$onError$0(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method public static synthetic lambda$onProgramListChanged$8(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public static synthetic lambda$onProgramListUpdated$10(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic lambda$onTrafficAnnouncement$3(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method public static synthetic lambda$sendProgramListUpdate$9(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method

.method private sendProgramListUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v5, v5, v2, v4}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    new-instance v4, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$C_-9BcvTpHXxQ-jC-hu9LBHT0XU;

    invoke-direct {v4, p0, v3}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$C_-9BcvTpHXxQ-jC-hu9LBHT0XU;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-direct {p0, v4}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "BroadcastRadioService.TunerCallback"

    const-string v3, "Program list not ready yet"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a binder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method isInitialConfigurationDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return v0
.end method

.method public onAntennaState(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QNBMPvImBEGMe4jaw6iOF4QPjns;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QNBMPvImBEGMe4jaw6iOF4QPjns;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$-h4udaDmWtN-rprVGi_U0x7oSJc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$-h4udaDmWtN-rprVGi_U0x7oSJc;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onError(I)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 2

    const-string v0, "BroadcastRadioService.TunerCallback"

    const-string v1, "Not applicable for HAL 1.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgramListChanged()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$mdqODkiuJlYCJRXqdXBC-d6vdp4;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$mdqODkiuJlYCJRXqdXBC-d6vdp4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$nm8WiKzJMmmFFCbXZdjr71O3V8Q;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$nm8WiKzJMmmFFCbXZdjr71O3V8Q;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 2

    const-string v0, "BroadcastRadioService.TunerCallback"

    const-string v1, "Not applicable for HAL 1.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method stopProgramListUpdates()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
