.class public Landroid/telephony/mbms/InternalDownloadProgressListener;
.super Landroid/telephony/mbms/IDownloadProgressListener$Stub;
.source "InternalDownloadProgressListener.java"


# instance fields
.field private final mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    return-object v0
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-boolean v0, v8, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v9, v8, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Landroid/telephony/mbms/InternalDownloadProgressListener$1;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/InternalDownloadProgressListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    return-void
.end method
