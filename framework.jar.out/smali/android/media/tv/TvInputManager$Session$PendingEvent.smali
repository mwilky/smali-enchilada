.class final Landroid/media/tv/TvInputManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mEventHandler:Landroid/os/Handler;

.field public mEventToken:Ljava/lang/Object;

.field public mHandled:Z

.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    .line 2533
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "x1"    # Landroid/media/tv/TvInputManager$1;

    .line 2533
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 2541
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 2542
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 2543
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 2544
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 2545
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 2546
    return-void
.end method

.method public run()V
    .locals 3

    .line 2550
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 2552
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 2553
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v1, p0}, Landroid/media/tv/TvInputManager$Session;->access$1500(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    .line 2554
    monitor-exit v0

    .line 2555
    return-void

    .line 2554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
