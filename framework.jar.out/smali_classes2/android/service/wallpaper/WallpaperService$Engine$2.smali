.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x271a

    nop

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    iput-object p1, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iput p2, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iput p3, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iput p4, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iput-object p5, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iput-boolean p6, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2729

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v1, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v1, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moved(II)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2733

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    nop

    const/16 v1, 0x272e

    invoke-virtual {v0, v1, p7, p6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
