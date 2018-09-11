.class public Landroid/support/v17/leanback/media/MediaControllerAdapter;
.super Landroid/support/v17/leanback/media/PlayerAdapter;
.source "MediaControllerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaControllerAdapter"


# instance fields
.field private mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mHandler:Landroid/os/Handler;

.field private mIsBuffering:Z

.field mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field private final mPositionUpdaterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 2
    .param p1, "controller"    # Landroid/support/v4/media/session/MediaControllerCompat;

    .line 125
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlayerAdapter;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;-><init>(Landroid/support/v17/leanback/media/MediaControllerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mPositionUpdaterRunnable:Ljava/lang/Runnable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mIsBuffering:Z

    .line 66
    new-instance v0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;-><init>(Landroid/support/v17/leanback/media/MediaControllerAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 126
    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object of MediaControllerCompat is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/media/MediaControllerAdapter;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;

    .line 42
    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getUpdatePeriod()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/media/MediaControllerAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;

    .line 42
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v17/leanback/media/MediaControllerAdapter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;

    .line 42
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mIsBuffering:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v17/leanback/media/MediaControllerAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mIsBuffering:Z

    return p1
.end method

.method private getUpdatePeriod()I
    .locals 1

    .line 61
    const/16 v0, 0x10

    return v0
.end method

.method private mapRepeatActionToRepeatMode(I)I
    .locals 1
    .param p1, "repeatActionIndex"    # I

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 329
    const/4 v0, -0x1

    return v0

    .line 327
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 325
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 323
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapShuffleActionToShuffleMode(I)I
    .locals 1
    .param p1, "shuffleActionIndex"    # I

    .line 340
    packed-switch p1, :pswitch_data_0

    .line 346
    const/4 v0, -0x1

    return v0

    .line 344
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 342
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    .line 169
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 210
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    const-wide/16 v0, 0x0

    return-wide v0

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    const-wide/16 v0, 0x0

    return-wide v0

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 255
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    const-wide/16 v0, 0x0

    return-wide v0

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMediaArt(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 247
    return-object v1

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v1
.end method

.method public getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    const-string v0, ""

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    const-string v0, ""

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 17

    .line 283
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 284
    .local v1, "supportedActions":J
    iget-object v3, v0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    if-nez v3, :cond_0

    .line 285
    return-wide v1

    .line 287
    :cond_0
    iget-object v3, v0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v3

    .line 289
    .local v3, "actionsFromController":J
    const-wide/16 v5, 0x200

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const-wide/16 v11, 0x40

    if-eqz v7, :cond_1

    .line 290
    or-long/2addr v1, v11

    .line 292
    :cond_1
    const-wide/16 v7, 0x20

    and-long v13, v3, v7

    cmp-long v13, v13, v9

    if-eqz v13, :cond_2

    .line 293
    const-wide/16 v13, 0x100

    or-long/2addr v1, v13

    .line 295
    :cond_2
    const-wide/16 v13, 0x10

    and-long v15, v3, v13

    cmp-long v15, v15, v9

    if-eqz v15, :cond_3

    .line 296
    or-long/2addr v1, v13

    .line 298
    :cond_3
    and-long/2addr v11, v3

    cmp-long v11, v11, v9

    if-eqz v11, :cond_4

    .line 299
    const-wide/16 v11, 0x80

    or-long/2addr v1, v11

    .line 301
    :cond_4
    const-wide/16 v11, 0x8

    and-long/2addr v11, v3

    cmp-long v11, v11, v9

    if-eqz v11, :cond_5

    .line 302
    or-long/2addr v1, v7

    .line 304
    :cond_5
    const-wide/32 v7, 0x40000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 305
    or-long/2addr v1, v5

    .line 307
    :cond_6
    const-wide/32 v5, 0x200000

    and-long/2addr v5, v3

    cmp-long v5, v5, v9

    if-eqz v5, :cond_7

    .line 308
    const-wide/16 v5, 0x400

    or-long/2addr v1, v5

    .line 310
    :cond_7
    return-wide v1
.end method

.method public isPlaying()Z
    .locals 3

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 195
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 197
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public next()V
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 159
    return-void
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 264
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 265
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 2

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 270
    return-void
.end method

.method public pause()V
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 149
    return-void
.end method

.method public play()V
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 144
    return-void
.end method

.method public previous()V
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 164
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    .line 174
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionInMs"    # J

    .line 153
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 154
    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 274
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mPositionUpdaterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    if-nez p1, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mPositionUpdaterRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getUpdatePeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method

.method public setRepeatAction(I)V
    .locals 2
    .param p1, "repeatActionIndex"    # I

    .line 178
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mapRepeatActionToRepeatMode(I)I

    move-result v0

    .line 179
    .local v0, "repeatMode":I
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRepeatMode(I)V

    .line 180
    return-void
.end method

.method public setShuffleAction(I)V
    .locals 2
    .param p1, "shuffleActionIndex"    # I

    .line 184
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mapShuffleActionToShuffleMode(I)I

    move-result v0

    .line 185
    .local v0, "shuffleMode":I
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setShuffleMode(I)V

    .line 186
    return-void
.end method
