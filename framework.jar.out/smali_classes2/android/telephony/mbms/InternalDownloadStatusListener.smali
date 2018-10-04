.class public Landroid/telephony/mbms/InternalDownloadStatusListener;
.super Landroid/telephony/mbms/IDownloadStatusListener$Stub;
.source "InternalDownloadStatusListener.java"


# instance fields
.field private final mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    return-object v0
.end method


# virtual methods
.method public onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadStatusListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStatusListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    return-void
.end method
