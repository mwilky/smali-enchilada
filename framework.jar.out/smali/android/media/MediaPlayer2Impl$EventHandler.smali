.class Landroid/media/MediaPlayer2Impl$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer2Impl;

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$1(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/MediaPlayer2$DrmInfo;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$10(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedMetaData;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$2(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$3(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V
    .locals 4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$4(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v2, 0x2c0

    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$5(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onVideoSizeChanged(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$6(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onError(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$7(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V
    .locals 5

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$8(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$9(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedText(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedText;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->handleMessage(Landroid/os/Message;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;J)V
    .locals 11

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$3800(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "mediaplayer2 went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_1c

    const/16 v3, -0x3f2

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    invoke-static {v2}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move-object v2, v4

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$5400(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Parcel;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcel;

    new-instance v4, Landroid/media/SubtitleData;

    invoke-direct {v4, v3}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-interface {v2, v5, v4}, Landroid/media/MediaPlayer2$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer2;Landroid/media/SubtitleData;)V

    :cond_4
    return-void

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v6, :cond_6

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_4

    :pswitch_3
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    :pswitch_4
    const/16 v2, 0x322

    iput v2, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_4

    :pswitch_5
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x2bd

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    move v7, v8

    :goto_3
    invoke-virtual {v2, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onBuffering(Z)V

    goto :goto_4

    :pswitch_6
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    :cond_7
    :goto_4
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;

    invoke-direct {v6, p0, v4, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_8
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :pswitch_7
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;

    invoke-direct {v6, p0, v4, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;

    invoke-direct {v6, p0, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    return-void

    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    new-instance v3, Landroid/media/TimedText;

    invoke-direct {v3, v2}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_7

    :cond_a
    nop

    :goto_7
    move-object v2, v4

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_b
    monitor-exit v3

    return-void

    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    :pswitch_9
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onNotifyTime()V

    :cond_c
    return-void

    :pswitch_a
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onStopped()V

    goto/16 :goto_12

    :pswitch_b
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d

    goto :goto_9

    :cond_d
    move v7, v8

    :goto_9
    invoke-virtual {v2, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onPaused(Z)V

    goto/16 :goto_12

    :pswitch_c
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;

    invoke-direct {v8, p0, v6, v2, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_e
    monitor-exit v5

    return-void

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v4

    :pswitch_d
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    :cond_f
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :pswitch_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer2Impl;)V

    :cond_10
    return-void

    :catchall_5
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v3

    :pswitch_f
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_11

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5200(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_11
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_12

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5300(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DataSourceDesc;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;

    invoke-direct {v8, p0, v6, v4, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_12
    monitor-exit v3

    return-void

    :catchall_6
    move-exception v4

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v4

    :pswitch_10
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_a
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_13

    const-string v3, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_PLAYBACK_COMPLETE: srcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", currentSrcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", nextSrcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    :cond_13
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_b
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d

    :cond_14
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    return-void

    :catchall_7
    move-exception v4

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v4

    :catchall_8
    move-exception v3

    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v3

    :pswitch_11
    :try_start_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_e

    :catch_1
    move-exception v2

    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    const-string v3, "MediaPlayer2Impl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MEDIA_PREPARED: srcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", currentSrcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v7}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", nextSrcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v7}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    cmp-long v3, p2, v9

    if-nez v3, :cond_15

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v3

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_f

    :cond_15
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    cmp-long v3, p2, v9

    if-nez v3, :cond_16

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/DataSourceDesc;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5, v6}, Landroid/media/MediaPlayer2Impl;->access$1102(Landroid/media/MediaPlayer2Impl;I)I

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1200(Landroid/media/MediaPlayer2Impl;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_f

    :cond_16
    move-object v3, v4

    :cond_17
    :goto_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-eqz v3, :cond_19

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_10
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;

    invoke-direct {v9, p0, v6, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_18
    monitor-exit v2

    goto :goto_11

    :catchall_9
    move-exception v4

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v4

    :cond_19
    :goto_11
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_11
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result v2

    const/4 v6, 0x6

    if-ne v2, v6, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4400(Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/DataSourceDesc;

    move-result-object v2

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    :cond_1a
    monitor-exit v5

    return-void

    :catchall_a
    move-exception v2

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v2

    :catchall_b
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw v3

    :pswitch_12
    nop

    :cond_1b
    :goto_12
    return-void

    :cond_1c
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    :try_start_13
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-virtual {v4}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    goto :goto_13

    :cond_1d
    monitor-exit v2

    return-void

    :catchall_c
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v3

    :cond_1e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1f

    const-string v2, "MediaPlayer2Impl"

    const-string v3, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_1f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    move-object v4, v3

    goto :goto_14

    :cond_20
    nop

    :goto_14
    move-object v3, v4

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-eqz v3, :cond_22

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_15
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;

    invoke-direct {v7, p0, v5, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_21
    monitor-exit v2

    goto :goto_16

    :catchall_d
    move-exception v4

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw v4

    :cond_22
    :goto_16
    goto :goto_17

    :catchall_e
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    throw v3

    :cond_23
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x322
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
