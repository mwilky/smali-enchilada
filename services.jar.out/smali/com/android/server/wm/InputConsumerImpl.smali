.class Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mClientPid:I

.field final mClientUser:Landroid/os/UserHandle;

.field final mName:Ljava/lang/String;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mToken:Landroid/os/IBinder;

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    iput-object p6, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p4}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    iput-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_0

    :cond_0
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v3, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v3, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p3, v3, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v6, 0x12a05f200L

    iput-wide v6, v3, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v3, Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v3, v4, v5, v5, v1}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p3, v3, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v4, v3, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v4, 0x7e6

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-direct {p0, v4}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v6, v3, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    return-void
.end method

.method private getLayerLw(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disposeChannelsLw()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method layout(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    return-void
.end method

.method linkToDeathRecipient()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method unlinkFromDeathRecipient()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
