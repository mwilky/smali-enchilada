.class public Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;,
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
    }
.end annotation


# instance fields
.field private final mDownloadCallbackDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadProgressListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadStatusListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadProgressListener;ILandroid/telephony/mbms/DownloadRequest;)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)V

    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStatusListener;ILandroid/telephony/mbms/DownloadRequest;)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)V

    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public dispose(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public listPendingDownloads(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppCallbackDied(II)V
    .locals 0

    return-void
.end method

.method public removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadProgressListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadStatusListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public requestUpdateFileServices(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setTempFileRootDirectory(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
