.class public Landroid/telephony/mbms/InternalStreamingServiceCallback;
.super Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.source "InternalStreamingServiceCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    return-object v0
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStreamStateUpdated(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    return-void
.end method
