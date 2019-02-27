.class Landroid/media/AudioPortEventHandler$1;
.super Landroid/os/Handler;
.source "AudioPortEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioPortEventHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v1}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v0}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_5

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Landroid/media/AudioPortEventHandler$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v3, v5, v6}, Landroid/media/AudioPortEventHandler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    nop

    :goto_1
    move v2, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v3}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_6
    goto :goto_4

    :pswitch_1
    new-array v2, v5, [Landroid/media/AudioPort;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPort;

    move v6, v5

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v3, :cond_8

    goto :goto_4

    :cond_8
    :pswitch_2
    new-array v2, v5, [Landroid/media/AudioPatch;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPatch;

    nop

    :goto_3
    move v3, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v5, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    add-int/lit8 v5, v3, 0x1

    goto :goto_3

    :cond_9
    nop

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
