.class Landroid/hardware/radio/TunerAdapter;
.super Landroid/hardware/radio/RadioTuner;
.source "TunerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerAdapter"


# instance fields
.field private mBand:I

.field private final mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

.field private mIsClosed:Z

.field private mLegacyListFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLegacyListProxy:Landroid/hardware/radio/ProgramList;

.field private final mTuner:Landroid/hardware/radio/ITuner;


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ITuner;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    iput p3, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    return-void
.end method

.method public static synthetic lambda$getDynamicProgramList$1(Landroid/hardware/radio/TunerAdapter;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->stopProgramListUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Couldn\'t stop program list updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$getDynamicProgramList$2()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getProgramList$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x26

    return v1
.end method

.method public cancelAnnouncement()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->cancelAnnouncement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-eqz v1, :cond_0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Tuner is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->close()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Exception trying to close tuner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must be an array of length 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .locals 6

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    :cond_0
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v4, Landroid/hardware/radio/-$$Lambda$TunerAdapter$ytmKJEaNVVp6n7nE6SVU6pZ9g7c;

    invoke-direct {v4, p0}, Landroid/hardware/radio/-$$Lambda$TunerAdapter$ytmKJEaNVVp6n7nE6SVU6pZ9g7c;-><init>(Landroid/hardware/radio/TunerAdapter;)V

    invoke-virtual {v3, v1, v4}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v3, p1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    sget-object v5, Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;->INSTANCE:Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;

    invoke-virtual {v4, v2, v5}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "service died"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v3

    const-string v4, "BroadcastRadio.TunerAdapter"

    const-string v5, "Program list is not supported with this hardware"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMetadataImage(I)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMute()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Didn\'t get program info yet"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x26

    return v1

    :cond_1
    const/4 v1, 0x0

    aput-object v0, p1, v1

    return v1

    :cond_2
    :goto_0
    const-string v0, "BroadcastRadio.TunerAdapter"

    const-string v1, "The argument must be an array of length 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x16

    return v0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Program list filter has changed, requesting new list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->clearLastCompleteList()V

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    sget-object v3, Landroid/hardware/radio/-$$Lambda$TunerAdapter$xm27iP_3PUgByOaDoK2KJcP5fnA;->INSTANCE:Landroid/hardware/radio/-$$Lambda$TunerAdapter$xm27iP_3PUgByOaDoK2KJcP5fnA;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    new-instance v2, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v2, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->getLastCompleteList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Program list is not ready yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "service died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public hasControl()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isAnalogForced()Z
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/radio/TunerAdapter;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAntennaConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->isAntennaConnected()Z

    move-result v0

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isConfigFlagSupported(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public scan(IZ)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/radio/ITuner;->scan(ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v1

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t scan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x26

    return v1
.end method

.method public setAnalogForced(Z)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/hardware/radio/TunerAdapter;->setConfigFlag(IZ)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfigFlag(IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/ITuner;->setConfigFlag(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .locals 4

    const/16 v0, -0x16

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v1

    const-string v2, "BroadcastRadio.TunerAdapter"

    const-string v3, "Can\'t set configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setMute(Z)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->setMuted(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t set muted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v1, -0x80000000

    return v1
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBackgroundScan()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->startBackgroundScan()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public step(IZ)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/radio/ITuner;->step(ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v1

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t step"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x26

    return v1
.end method

.method public tune(II)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    iget v1, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    invoke-static {v1, p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1

    :catch_1
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x16

    return v1

    :catch_2
    move-exception v0

    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x26

    return v1
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
