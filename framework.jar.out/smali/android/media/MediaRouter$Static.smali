.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field mActivelyScanningWifiDisplays:Z

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final mAudioService:Landroid/media/IAudioService;

.field mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCanConfigureWifiDisplays:Z

.field final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/media/IMediaRouterClient;

.field mClientState:Landroid/media/MediaRouterClientState;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mCurrentUserId:I

.field mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field mDiscoverRequestActiveScan:Z

.field mDiscoveryRequestRouteTypes:I

.field final mDisplayService:Landroid/hardware/display/DisplayManager;

.field final mHandler:Landroid/os/Handler;

.field final mMediaRouterService:Landroid/media/IMediaRouterService;

.field final mPackageName:Ljava/lang/String;

.field mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final mResources:Landroid/content/res/Resources;

.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    new-instance v0, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    const/4 v2, 0x0

    const v3, 0x10401b8

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    nop

    :cond_0
    iput-boolean v2, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    return-void
.end method

.method private updatePresentationDisplays(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAllPresentationDisplays()[Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method isBluetoothA2dpOn()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MediaRouter"

    const-string v3, "Error querying Bluetooth A2DP state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method isPlaybackActive()Z
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to retrieve playback active state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 2

    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method publishClientDiscoveryRequest()V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget v2, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iget-boolean v3, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client discovery request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method publishClientSelectedRoute(Z)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client selected route."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method rebindAsUser(I)V
    .locals 3

    iget v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to unregister media router client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    :cond_1
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    :try_start_1
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to register media router client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    :cond_2
    return-void
.end method

.method requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 3

    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 3

    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    return-void
.end method

.method startMonitoringRoutes(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const v1, 0x10401b9

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    new-instance v0, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    :cond_2
    return-void
.end method

.method updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v3, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const v2, 0x10401ba

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const v2, 0x10401bb

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    const v2, 0x10401bd

    goto :goto_1

    :cond_3
    const v2, 0x10401b9

    goto :goto_1

    :cond_4
    :goto_0
    const v2, 0x10401bc

    :goto_1
    nop

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iput v2, v3, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, v3, 0x13

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    const/4 v0, 0x1

    :cond_6
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v2, :cond_7

    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v2, v3}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v5, 0x10400e1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iput v4, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v3, 0x3

    iput v3, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    :cond_9
    :goto_2
    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_e

    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio routes updated: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", a2dp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v2, v3, :cond_e

    :cond_b
    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_4

    :cond_d
    :goto_3
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    :cond_e
    :goto_4
    return-void
.end method

.method updateClientState()V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaRouter"

    const-string v3, "Unable to retrieve media router client state."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v0, v0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    nop

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v5, v4, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    invoke-static {v5}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v5, v4}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, v3, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v5, :cond_7

    move v6, v1

    :goto_5
    if-ge v6, v2, :cond_6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v8, v7, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v3}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_7
    nop

    :goto_6
    move v3, v4

    goto :goto_4

    :cond_8
    return-void
.end method

.method updateDiscoveryRequest()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v3

    move v3, v1

    move v1, v0

    move v0, v5

    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v0, v4, :cond_3

    iget-object v9, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRouter$CallbackInfo;

    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v10, v10, 0x5

    if-eqz v10, :cond_0

    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v1, v10

    goto :goto_1

    :cond_0
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_1

    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v3, v10

    goto :goto_1

    :cond_1
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v1, v10

    :goto_1
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    iget v8, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    or-int/2addr v1, v3

    :cond_5
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v7}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_7

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_8

    iput-boolean v8, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-eqz v0, :cond_8

    iput-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    :cond_8
    :goto_2
    iget v0, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    if-ne v1, v0, :cond_9

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    if-eq v2, v0, :cond_a

    :cond_9
    iput v1, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iput-boolean v2, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    :cond_a
    return-void
.end method

.method updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    :cond_1
    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v3, v4, :cond_2

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v0, 0x1

    :cond_2
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v5, :cond_3

    iget-boolean v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    const/4 v0, 0x1

    :cond_3
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->access$000(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v4

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v5, :cond_4

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    const/4 v0, 0x1

    :cond_4
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    const/4 v0, 0x1

    :cond_5
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v5, :cond_6

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v0, 0x1

    :cond_6
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v5, :cond_7

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_7
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v4, v5, :cond_8

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_8
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v4, v5, :cond_9

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_9
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v4, v5, :cond_a

    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_a
    if-eqz v0, :cond_b

    invoke-static {p1, v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    :cond_b
    if-eqz v1, :cond_c

    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_d
    return-void
.end method
