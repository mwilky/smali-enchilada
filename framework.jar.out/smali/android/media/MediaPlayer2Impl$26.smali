.class Landroid/media/MediaPlayer2Impl$26;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$26;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer2Impl$26;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$26;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 9

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$26;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$26;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$26;->val$fIs:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v1

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3500(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3500(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v1

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$26;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$3600(Landroid/media/MediaPlayer2Impl$TimeProvider;)Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v8, 0x323

    return v8

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$26;->addTrack()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$26;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$26;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
