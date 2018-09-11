.class public Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;,
        Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;
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
.field static final DEBUG:Z = false

.field static final MSG_UPDATE_PLAYBACK_STATE:I = 0x64

.field static final TAG:Ljava/lang/String; = "PlaybackTransportGlue"

.field static final UPDATE_PLAYBACK_STATE_DELAY_MS:I = 0x7d0

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field final mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<",
            "TT;>.SeekUiClient;"
        }
    .end annotation
.end field

.field mSeekEnabled:Z

.field mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    .local p2, "impl":Landroid/support/v17/leanback/media/PlayerAdapter;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;-><init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    .line 323
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;-><init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    .line 123
    return-void
.end method

.method private updatePlaybackState(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .line 296
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    if-nez p1, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    .line 302
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v1, v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 307
    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mFadeWhenPlaying:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 311
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v0, :cond_3

    .line 312
    move v0, p1

    .line 315
    .local v0, "index":I
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 316
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    .line 317
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 321
    .end local v0    # "index":I
    :cond_3
    return-void
.end method


# virtual methods
.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 238
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    const/4 v0, 0x0

    .line 239
    .local v0, "handled":Z
    instance-of v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v1, :cond_6

    .line 240
    const/16 v1, 0x55

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 241
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 242
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 243
    .local v4, "canPlay":Z
    :goto_1
    if-eqz p2, :cond_3

    .line 244
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 245
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x7f

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    .line 250
    .local v1, "canPause":Z
    :goto_3
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    if-eqz v5, :cond_4

    .line 251
    iput-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    .line 252
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->pause()V

    goto :goto_4

    .line 253
    :cond_4
    if-eqz v4, :cond_5

    iget-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    if-nez v3, :cond_5

    .line 254
    iput-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    .line 255
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->play()V

    .line 257
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    .line 258
    const/4 v0, 0x1

    .line 259
    .end local v1    # "canPause":Z
    .end local v4    # "canPlay":Z
    goto :goto_5

    :cond_6
    instance-of v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v1, :cond_7

    .line 260
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->next()V

    .line 261
    const/4 v0, 0x1

    goto :goto_5

    .line 262
    :cond_7
    instance-of v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v1, :cond_8

    .line 263
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->previous()V

    .line 264
    const/4 v0, 0x1

    .line 266
    :cond_8
    :goto_5
    return v0
.end method

.method public final getSeekProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;
    .locals 1

    .line 401
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    return-object v0
.end method

.method public final isSeekEnabled()Z
    .locals 1

    .line 418
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    return v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;

    .line 194
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    .line 195
    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 169
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 171
    instance-of v0, p1, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_0

    .line 172
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 2
    .param p1, "primaryActionsAdapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 134
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 135
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 134
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method protected onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 2

    .line 140
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V

    .line 151
    .local v0, "detailsPresenter":Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
    new-instance v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V

    .line 163
    .local v1, "rowPresenter":Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->setDescriptionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 164
    return-object v1
.end method

.method protected onDetachedFromHost()V
    .locals 2

    .line 178
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onDetachedFromHost()V

    .line 180
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 199
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/16 v0, 0x6f

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 210
    .local v0, "primaryActionsAdapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v2

    .line 211
    .local v2, "action":Landroid/support/v17/leanback/widget/Action;
    if-nez v2, :cond_0

    .line 212
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v2

    .line 216
    :cond_0
    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-virtual {p0, v2, p3}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    .line 220
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_2
    return v1

    .line 206
    .end local v0    # "primaryActionsAdapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    .end local v2    # "action":Landroid/support/v17/leanback/widget/Action;
    :cond_3
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPlayStateChanged()V
    .locals 4

    .line 273
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    if-eq v0, v1, :cond_0

    .line 277
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    .line 287
    :goto_0
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    .line 288
    return-void
.end method

.method onUpdatePlaybackState()V
    .locals 1

    .line 291
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    .line 292
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    .line 293
    return-void
.end method

.method onUpdatePlaybackStatusAfterUserAction()V
    .locals 4

    .line 226
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    .line 229
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    return-void
.end method

.method protected onUpdateProgress()V
    .locals 1

    .line 187
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    if-nez v0, :cond_0

    .line 188
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    .line 190
    :cond_0
    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 3
    .param p1, "controlsRow"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 127
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    .line 128
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    .line 130
    return-void
.end method

.method public final setSeekEnabled(Z)V
    .locals 0
    .param p1, "seekEnabled"    # Z

    .line 411
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    .line 412
    return-void
.end method

.method public final setSeekProvider(Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;)V
    .locals 0
    .param p1, "seekProvider"    # Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 393
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue<TT;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 394
    return-void
.end method
