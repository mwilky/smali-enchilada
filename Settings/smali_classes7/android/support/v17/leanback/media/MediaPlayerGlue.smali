.class public Landroid/support/v17/leanback/media/MediaPlayerGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FAST_FORWARD_REWIND_REPEAT_DELAY:I = 0xc8

.field public static final FAST_FORWARD_REWIND_STEP:I = 0x2710

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayerGlue"


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCover:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastKeyDownEvent:J

.field private mMediaSourcePath:Ljava/lang/String;

.field private mMediaSourceUri:Landroid/net/Uri;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field private final mRepeatAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Landroid/support/v17/leanback/widget/Action;

.field protected final mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

.field protected final mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    new-array v3, v0, [I

    aput v0, v3, v2

    invoke-direct {p0, p1, v1, v3}, Landroid/support/v17/leanback/media/MediaPlayerGlue;-><init>(Landroid/content/Context;[I[I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fastForwardSpeeds"    # [I
    .param p3, "rewindSpeeds"    # [I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    .line 72
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    .line 80
    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    .line 131
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    .line 132
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    .line 134
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/media/MediaPlayerGlue;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaPlayerGlue;

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v17/leanback/media/MediaPlayerGlue;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaPlayerGlue;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return p1
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    .line 427
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->reset()V

    .line 429
    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    nop

    .line 440
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 441
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 454
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 458
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerGlue$5;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$5;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 467
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 468
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onStateChanged()V

    .line 469
    return-void

    .line 434
    :cond_2
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method changeToUnitialized()V
    .locals 3

    .line 157
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    .line 159
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;>;"
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    .line 162
    .local v2, "callback":Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
    invoke-virtual {v2, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 163
    .end local v2    # "callback":Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
    goto :goto_0

    .line 166
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;>;"
    :cond_0
    return-void
.end method

.method public enableProgressUpdating(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    :cond_0
    if-nez p1, :cond_1

    .line 204
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    .line 215
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getUpdatePeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 323
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 1

    .line 318
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    .line 300
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    .line 310
    const-wide/16 v0, 0xe0

    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaPlaying()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

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

.method public isPlaying()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 3
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;

    .line 222
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    .line 223
    instance-of v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->nextIndex()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 226
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    if-ne p1, v0, :cond_4

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    .line 240
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    .line 241
    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 139
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 140
    instance-of v0, p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 1
    .param p1, "secondaryActionsAdapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->reset()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->release()V

    .line 183
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onDetachedFromHost()V

    .line 184
    return-void
.end method

.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 1
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 486
    instance-of v0, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz v0, :cond_0

    .line 487
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    goto :goto_0

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    .line 491
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 250
    .local v0, "consume":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    move v0, v3

    .line 251
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    move v0, v3

    .line 252
    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    move v0, v3

    .line 253
    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    move v0, v3

    .line 254
    if-eqz v0, :cond_5

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    move v1, v2

    nop

    :cond_5
    move v0, v1

    .line 257
    if-eqz v0, :cond_9

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    .line 259
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    .line 260
    .local v1, "newPosition":I
    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroid/support/v17/leanback/widget/Action;

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v3, :cond_6

    .line 261
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v3

    add-int/lit16 v1, v3, -0x2710

    .line 264
    :cond_6
    if-gez v1, :cond_7

    const/4 v1, 0x0

    .line 265
    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v3

    if-le v1, v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v1

    .line 266
    :cond_8
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->seekTo(I)V

    .line 267
    return v2

    .line 270
    .end local v1    # "newPosition":I
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 341
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onStateChanged()V

    .line 343
    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 1
    .param p1, "speed"    # I

    .line 328
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 332
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    .line 333
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onStateChanged()V

    .line 334
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->updateProgress()V

    .line 335
    return-void

    .line 329
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 174
    return-void
.end method

.method public reset()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    .line 153
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 154
    return-void
.end method

.method protected seekTo(I)V
    .locals 1
    .param p1, "newPosition"    # I

    .line 386
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 390
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCover(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "cover"    # Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 197
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 198
    return-void
.end method

.method public setMediaSource(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 400
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 401
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaSource(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 418
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    .line 421
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 350
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerGlue$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$3;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    goto :goto_0

    .line 355
    :pswitch_1
    new-instance v0, Landroid/support/v17/leanback/media/MediaPlayerGlue$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue$2;-><init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 367
    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 353
    nop

    .line 377
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoUrl"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->setMediaSource(Ljava/lang/String;)Z

    .line 112
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    .line 113
    return-void
.end method
