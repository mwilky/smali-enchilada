.class public Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.super Landroid/support/v17/leanback/media/PlayerAdapter;
.source "MediaPlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;
    }
.end annotation


# instance fields
.field mBufferedProgress:J

.field mBufferingStart:Z

.field mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mHasDisplay:Z

.field mInitialized:Z

.field mMediaSourceUri:Landroid/net/Uri;

.field final mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field final mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field final mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field final mPlayer:Landroid/media/MediaPlayer;

.field final mRunnable:Ljava/lang/Runnable;

.field mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlayerAdapter;-><init>()V

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    .line 38
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    .line 51
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 62
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 71
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 80
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 88
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 98
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 106
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 138
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    .line 348
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->reset()V

    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    nop

    .line 359
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 360
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 361
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 362
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 363
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 364
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 365
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 366
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 367
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    .line 368
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 369
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 370
    return-void

    .line 353
    :cond_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 357
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method changeToUnitialized()V
    .locals 1

    .line 160
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    .line 162
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    .line 163
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 167
    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 328
    iget-wide v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferedProgress:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 297
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 292
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getProgressUpdatingInterval()I
    .locals 1

    .line 282
    const/16 v0, 0x10

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyBufferingStartEnd()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V

    .line 132
    return-void
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 143
    instance-of v0, p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    .line 145
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 2

    .line 180
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 182
    iput-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->reset()V

    .line 185
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->release()V

    .line 186
    return-void
.end method

.method protected onError(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected onInfo(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected onSeekComplete()V
    .locals 0

    .line 217
    return-void
.end method

.method public pause()V
    .locals 1

    .line 312
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 314
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 316
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 306
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 308
    return-void

    .line 303
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    .line 175
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 176
    return-void
.end method

.method public reset()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 157
    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .param p1, "newPosition"    # J

    .line 320
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 324
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 339
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 340
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    .line 343
    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->prepareMediaForPlaying()V

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 250
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    .line 251
    .local v0, "hadDisplay":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    .line 252
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-ne v0, v1, :cond_1

    .line 253
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 256
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v1, :cond_2

    .line 257
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto :goto_1

    .line 261
    :cond_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_3

    .line 262
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 266
    :cond_3
    :goto_1
    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    if-nez p1, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getProgressUpdatingInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method
