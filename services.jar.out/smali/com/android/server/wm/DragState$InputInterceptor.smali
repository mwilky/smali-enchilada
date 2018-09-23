.class Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputInterceptor"
.end annotation


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

.field mServerChannel:Landroid/view/InputChannel;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "drag"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iget-object v3, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v3, Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-direct {v3, v4, v6, v7}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    new-instance v3, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v3, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v4, "drag"

    iput-object v4, v3, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v6, 0x12a05f200L

    iput-wide v6, v3, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v3, Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-direct {v3, v4, v5, v5, v8}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v4, "drag"

    iput-object v4, v3, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    iput-object v4, v3, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->getDragLayerLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v4, 0x7e0

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v6, v3, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v3, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Pausing rotation during drag"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    return-void
.end method


# virtual methods
.method tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/DragInputEventReceiver;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Resuming rotation after drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method
