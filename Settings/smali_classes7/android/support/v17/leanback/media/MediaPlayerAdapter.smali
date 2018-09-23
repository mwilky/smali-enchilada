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

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlayerAdapter;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->reset()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method changeToUnitialized()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferedProgress:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

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

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getProgressUpdatingInterval()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public isPlaying()Z
    .locals 1

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

    return-void
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->reset()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->release()V

    return-void
.end method

.method protected onError(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onInfo(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSeekComplete()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->prepareMediaForPlaying()V

    const/4 v0, 0x1

    return v0
.end method

.method setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getProgressUpdatingInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
