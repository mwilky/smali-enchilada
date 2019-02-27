.class final Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 177
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 179
    if-nez p2, :cond_0

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 182
    :cond_0
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 183
    return-void
.end method

.method static synthetic access$000(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 173
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-object v0
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 187
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 197
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method
