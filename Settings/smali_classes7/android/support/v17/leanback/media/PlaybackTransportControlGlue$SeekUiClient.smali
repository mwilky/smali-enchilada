.class Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
.super Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekUiClient"
.end annotation


# instance fields
.field mIsSeek:Z

.field mLastUserPosition:J

.field mPausedBeforeSeek:Z

.field mPositionBeforeSeek:J

.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    return-object v0
.end method

.method public isSeekEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-boolean v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onSeekFinished(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    iget-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->seekTo(J)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->play()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    :goto_1
    return-void
.end method

.method public onSeekPositionChanged(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_1
    return-void
.end method

.method public onSeekStarted()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->isPlaying()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    iput-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->pause()V

    return-void
.end method
