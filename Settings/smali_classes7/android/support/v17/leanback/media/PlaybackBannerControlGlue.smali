.class public Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$ACTION_;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field private static final NUMBER_OF_SEEK_SPEEDS:I = 0x5

.field public static final PLAYBACK_SPEED_FAST_L0:I = 0xa

.field public static final PLAYBACK_SPEED_FAST_L1:I = 0xb

.field public static final PLAYBACK_SPEED_FAST_L2:I = 0xc

.field public static final PLAYBACK_SPEED_FAST_L3:I = 0xd

.field public static final PLAYBACK_SPEED_FAST_L4:I = 0xe

.field public static final PLAYBACK_SPEED_INVALID:I = -0x1

.field public static final PLAYBACK_SPEED_NORMAL:I = 0x1

.field public static final PLAYBACK_SPEED_PAUSED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field private mIsCustomizedFastForwardSupported:Z

.field private mIsCustomizedRewindSupported:Z

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

.field private mStartPosition:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    const-class v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[ILandroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seekSpeeds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[ITT;)V"
        }
    .end annotation

    .line 236
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    .local p3, "impl":Landroid/support/v17/leanback/media/PlayerAdapter;, "TT;"
    invoke-direct {p0, p1, p2, p2, p3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;-><init>(Landroid/content/Context;[I[ILandroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[ILandroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fastForwardSpeeds"    # [I
    .param p3, "rewindSpeeds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[ITT;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    .local p4, "impl":Landroid/support/v17/leanback/media/PlayerAdapter;, "TT;"
    invoke-direct {p0, p1, p4}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;-><init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 255
    array-length v2, p2

    if-eqz v2, :cond_3

    array-length v2, p2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 258
    iput-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    .line 260
    array-length v2, p3

    if-eqz v2, :cond_2

    array-length v2, p3

    if-gt v2, v3, :cond_2

    .line 263
    iput-object p3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    .line 264
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 265
    iput-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    .line 267
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 268
    iput-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    .line 270
    :cond_1
    return-void

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rewindSpeeds array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fastForwardSpeeds array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementRewindPlaybackSpeed()V
    .locals 1

    .line 423
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 431
    const/16 v0, -0xa

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    .line 428
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 429
    nop

    .line 434
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fakePause()V
    .locals 2

    .line 696
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 697
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 699
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 701
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 702
    return-void
.end method

.method private getMaxForwardSpeedId()I
    .locals 2

    .line 597
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method private getMaxRewindSpeedId()I
    .locals 2

    .line 601
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method private incrementFastForwardPlaybackSpeed()V
    .locals 1

    .line 407
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 415
    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    .line 412
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 413
    nop

    .line 418
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaybackState(Z)V
    .locals 6
    .param p1, "isPlaying"    # Z

    .line 530
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    .line 531
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 535
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdateProgress()V

    .line 536
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 541
    :goto_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFadeWhenPlaying:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 542
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 546
    :cond_2
    nop

    .line 547
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 548
    .local v1, "primaryActionsAdapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v2, :cond_3

    .line 549
    move v2, p1

    .line 552
    .local v2, "index":I
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 553
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    .line 554
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v1, v3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 558
    .end local v2    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/16 v3, 0xa

    if-eqz v2, :cond_5

    .line 559
    const/4 v2, 0x0

    .line 560
    .restart local v2    # "index":I
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-lt v4, v3, :cond_4

    .line 561
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    sub-int/2addr v4, v3

    add-int/lit8 v2, v4, 0x1

    .line 563
    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 564
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    .line 565
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v1, v4}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 568
    .end local v2    # "index":I
    :cond_5
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_7

    .line 569
    const/4 v2, 0x0

    .line 570
    .restart local v2    # "index":I
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, -0xa

    if-gt v4, v5, :cond_6

    .line 571
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int v4, v4

    sub-int/2addr v4, v3

    add-int/lit8 v2, v4, 0x1

    .line 573
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 574
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    .line 575
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v1, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 578
    .end local v2    # "index":I
    :cond_7
    return-void
.end method


# virtual methods
.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 440
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    const/4 v0, 0x0

    .line 441
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_7

    .line 442
    const/4 v1, 0x0

    const/16 v3, 0x55

    if-eqz p2, :cond_1

    .line 443
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 444
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 445
    .local v4, "canPlay":Z
    :goto_1
    if-eqz p2, :cond_3

    .line 446
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 447
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x7f

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    .line 452
    .local v1, "canPause":Z
    :goto_3
    if-eqz v1, :cond_5

    if-eqz v4, :cond_4

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v3, :cond_5

    .line 455
    :goto_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_5

    .line 456
    :cond_5
    if-eqz v4, :cond_6

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eq v3, v2, :cond_6

    .line 457
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 459
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    .line 460
    const/4 v0, 0x1

    .line 461
    .end local v1    # "canPause":Z
    .end local v4    # "canPlay":Z
    goto :goto_8

    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, v1, :cond_8

    .line 462
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->next()V

    .line 463
    const/4 v0, 0x1

    goto :goto_8

    .line 464
    :cond_8
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, v1, :cond_9

    .line 465
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->previous()V

    .line 466
    const/4 v0, 0x1

    goto :goto_8

    .line 467
    :cond_9
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, v1, :cond_c

    .line 468
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxForwardSpeedId()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 472
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz v1, :cond_a

    .line 474
    iput-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 476
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->fastForward()V

    goto :goto_6

    .line 484
    :cond_a
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 487
    :goto_6
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->incrementFastForwardPlaybackSpeed()V

    .line 488
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    .line 490
    :cond_b
    const/4 v0, 0x1

    goto :goto_8

    .line 491
    :cond_c
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, v1, :cond_f

    .line 492
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxRewindSpeedId()I

    move-result v3

    neg-int v3, v3

    if-le v1, v3, :cond_e

    .line 493
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz v1, :cond_d

    .line 494
    iput-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 495
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->rewind()V

    goto :goto_7

    .line 497
    :cond_d
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 499
    :goto_7
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->decrementRewindPlaybackSpeed()V

    .line 500
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    .line 502
    :cond_e
    const/4 v0, 0x1

    .line 504
    :cond_f
    :goto_8
    return v0
.end method

.method public getCurrentPosition()J
    .locals 7

    .line 614
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 618
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 621
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 624
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    sub-int/2addr v0, v1

    .line 625
    .local v0, "index":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getFastForwardSpeeds()[I

    move-result-object v1

    aget v0, v1, v0

    .line 626
    .local v0, "speed":I
    goto :goto_0

    .end local v0    # "speed":I
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v2, -0xa

    if-gt v0, v2, :cond_6

    .line 629
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 632
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 633
    .local v0, "index":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getRewindSpeeds()[I

    move-result-object v1

    aget v1, v1, v0

    neg-int v0, v1

    .line 634
    .local v0, "speed":I
    nop

    .line 635
    :goto_0
    nop

    .line 638
    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    sub-long/2addr v3, v5

    int-to-long v5, v0

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 639
    .local v1, "position":J
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v3, :cond_4

    .line 640
    iput v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 641
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v1

    .line 642
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v3, v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 643
    iput-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 644
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_1

    .line 645
    :cond_4
    cmp-long v3, v1, v5

    if-gez v3, :cond_5

    .line 646
    iput v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 647
    const-wide/16 v1, 0x0

    .line 648
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v3, v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 649
    iput-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 650
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    .line 652
    :cond_5
    :goto_1
    return-wide v1

    .line 635
    .end local v0    # "speed":I
    .end local v1    # "position":J
    :cond_6
    const-wide/16 v0, -0x1

    return-wide v0

    .line 617
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastForwardSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 585
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 593
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;

    .line 358
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    .line 359
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 10
    .param p1, "primaryActionsAdapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 280
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getSupportedActions()J

    move-result-wide v0

    .line 281
    .local v0, "supportedActions":J
    const-wide/16 v2, 0x10

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v4, :cond_0

    .line 282
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 283
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 282
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_0
    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 287
    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 289
    :cond_1
    :goto_0
    const-wide/16 v2, 0x20

    and-long v8, v0, v2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v4, :cond_2

    .line 290
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 291
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 290
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 292
    :cond_2
    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_3

    .line 293
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 294
    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 296
    :cond_3
    :goto_1
    const-wide/16 v2, 0x40

    and-long v8, v0, v2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v4, :cond_4

    .line 297
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 298
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 298
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 300
    :cond_4
    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v2, :cond_5

    .line 301
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 302
    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 304
    :cond_5
    :goto_2
    const-wide/16 v2, 0x80

    and-long v8, v0, v2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v4, :cond_6

    .line 305
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 307
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 308
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 307
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 310
    :cond_6
    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v2, :cond_7

    .line 311
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 312
    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 314
    :cond_7
    :goto_3
    const-wide/16 v2, 0x100

    and-long v8, v0, v2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v4, :cond_8

    .line 315
    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 315
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 317
    :cond_8
    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v2, :cond_9

    .line 318
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 319
    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 321
    :cond_9
    :goto_4
    return-void
.end method

.method protected onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 2

    .line 325
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;)V

    .line 336
    .local v0, "detailsPresenter":Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
    new-instance v1, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V

    .line 350
    .local v1, "rowPresenter":Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
    return-object v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 367
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    const/16 v0, 0x6f

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 385
    .local v0, "primaryActionsAdapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v1, v0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v1

    .line 386
    .local v1, "action":Landroid/support/v17/leanback/widget/Action;
    if-nez v1, :cond_0

    .line 387
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v1

    .line 391
    :cond_0
    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 393
    invoke-virtual {p0, v1, p3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    .line 395
    :cond_1
    return v2

    .line 397
    :cond_2
    return v3

    .line 374
    .end local v0    # "primaryActionsAdapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    .end local v1    # "action":Landroid/support/v17/leanback/widget/Action;
    :cond_3
    :pswitch_0
    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    iget v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, -0xa

    if-gt v4, v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v2

    .line 376
    .local v4, "abortSeek":Z
    :goto_1
    if-eqz v4, :cond_8

    .line 377
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 378
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    .line 379
    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    nop

    :cond_7
    :goto_2
    return v2

    .line 381
    :cond_8
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPlayCompleted()V
    .locals 2

    .line 517
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 519
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 520
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 522
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 523
    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 0

    .line 511
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 512
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    .line 513
    return-void
.end method

.method onUpdatePlaybackState()V
    .locals 1

    .line 526
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    .line 527
    return-void
.end method

.method onUpdatePlaybackStatusAfterUserAction()V
    .locals 1

    .line 401
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    .line 402
    return-void
.end method

.method public pause()V
    .locals 2

    .line 682
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 683
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 684
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 686
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 688
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 689
    return-void
.end method

.method public play()V
    .locals 4

    .line 658
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    return-void

    .line 664
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 665
    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 671
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 673
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 674
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 675
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->play()V

    .line 677
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 678
    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 0
    .param p1, "controlsRow"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 274
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    .line 275
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 276
    return-void
.end method
