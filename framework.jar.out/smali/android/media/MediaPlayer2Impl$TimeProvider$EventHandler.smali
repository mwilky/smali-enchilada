.class Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7300(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/util/Pair;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7200(Landroid/media/MediaPlayer2Impl$TimeProvider;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7100(Landroid/media/MediaPlayer2Impl$TimeProvider;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7000(Landroid/media/MediaPlayer2Impl$TimeProvider;Z)V

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
