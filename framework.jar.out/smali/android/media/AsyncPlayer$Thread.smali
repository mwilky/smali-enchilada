.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor <init>(Landroid/media/AsyncPlayer;)V
    .locals 2

    .line 81
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 87
    :goto_0
    const/4 v0, 0x0

    .line 89
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v2}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AsyncPlayer$Command;

    move-object v0, v2

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    iget v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 101
    :pswitch_0
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long/2addr v3, v5

    .line 103
    .local v3, "delay":J
    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 107
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 108
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v2}, Landroid/media/AsyncPlayer;->access$302(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 109
    .end local v3    # "delay":J
    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "STOP command without a player"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v0}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V

    .line 98
    nop

    .line 115
    :goto_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 116
    :try_start_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v2}, Landroid/media/AsyncPlayer;->access$402(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;

    .line 122
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->access$500(Landroid/media/AsyncPlayer;)V

    .line 123
    monitor-exit v3

    return-void

    .line 125
    :cond_2
    monitor-exit v3

    .line 126
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    goto/16 :goto_0

    .line 125
    .restart local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 92
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
