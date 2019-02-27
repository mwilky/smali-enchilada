.class public Landroid/telephony/mbms/InternalDownloadSessionCallback;
.super Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;
.source "InternalDownloadSessionCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMiddlewareReady()V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    return-void
.end method
