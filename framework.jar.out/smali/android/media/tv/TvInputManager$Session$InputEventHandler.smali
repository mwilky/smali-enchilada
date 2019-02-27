.class final Landroid/media/tv/TvInputManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->access$1400(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
