.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private final mCallingPackageName:Ljava/lang/String;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private mTargetSdkVersion:I

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoQuality:I

.field private mVideoState:I


# direct methods
.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    new-instance v1, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v1, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$1;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/telecom/VideoCallImpl;->setTargetSdkVersion(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/telecom/VideoCallImpl;I)I
    .locals 0

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-nez p2, :cond_0

    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/telecom/VideoProfile;

    iget v1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "setCamera: cameraId=%s, calling=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setTargetSdkVersion(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    return-void
.end method

.method public setVideoState(I)V
    .locals 0

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
