.class public abstract Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackGlue;
.source "PlaybackBaseControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackGlue;",
        "Landroid/support/v17/leanback/widget/OnActionClickedListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REPEAT:I = 0x200

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SHUFFLE:I = 0x400

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "PlaybackTransportGlue"


# instance fields
.field final mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

.field mBuffering:Z

.field mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

.field mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mCover:Landroid/graphics/drawable/Drawable;

.field mErrorCode:I

.field mErrorMessage:Ljava/lang/String;

.field mErrorSet:Z

.field mFadeWhenPlaying:Z

.field mIsPlaying:Z

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field final mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

.field mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    .local p2, "impl":Landroid/support/v17/leanback/media/PlayerAdapter;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    .line 127
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    .line 128
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    .line 129
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    .line 130
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 134
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    .line 214
    iput-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setCallback(Landroid/support/v17/leanback/media/PlayerAdapter$Callback;)V

    .line 216
    return-void
.end method

.method protected static notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V
    .locals 2
    .param p0, "adapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    .param p1, "object"    # Ljava/lang/Object;

    .line 408
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 409
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 410
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    .line 412
    :cond_0
    return-void
.end method

.method private updateControlsRow()V
    .locals 0

    .line 379
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    .line 380
    return-void
.end method


# virtual methods
.method public getArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 515
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBufferedPosition()J
    .locals 2

    .line 472
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .locals 1

    .line 355
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 465
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 458
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 1

    .line 362
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public final getPlayerAdapter()Landroid/support/v17/leanback/media/PlayerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 219
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 537
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    .line 618
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 558
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 309
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 384
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final isPrepared()Z
    .locals 1

    .line 477
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .line 399
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->next()V

    .line 400
    return-void
.end method

.method public abstract onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
.end method

.method onAttachHostCallback()V
    .locals 3

    .line 238
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_2

    .line 239
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    .line 242
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    .line 245
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    .line 247
    :cond_2
    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 224
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 225
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 226
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    .line 227
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultControlsRow()V

    .line 228
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultRowPresenter()V

    .line 229
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    .line 232
    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 233
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onAttachHostCallback()V

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 235
    return-void
.end method

.method onCreateDefaultControlsRow()V
    .locals 1

    .line 278
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    .line 280
    .local v0, "controlsRow":Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    .line 282
    .end local v0    # "controlsRow":Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    :cond_0
    return-void
.end method

.method onCreateDefaultRowPresenter()V
    .locals 1

    .line 285
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 288
    :cond_0
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0
    .param p1, "primaryActionsAdapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 421
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    return-void
.end method

.method protected abstract onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0
    .param p1, "secondaryActionsAdapter"    # Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 429
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    return-void
.end method

.method onDetachHostCallback()V
    .locals 2

    .line 250
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 251
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    .line 270
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onDetachHostCallback()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->onDetachedFromHost()V

    .line 273
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 274
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    .line 275
    return-void
.end method

.method protected onHostStart()V
    .locals 2

    .line 260
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 261
    return-void
.end method

.method protected onHostStop()V
    .locals 2

    .line 265
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 266
    return-void
.end method

.method public abstract onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method protected onMetadataChanged()V
    .locals 3

    .line 565
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    .line 566
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    .line 573
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    .line 575
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    .line 578
    :cond_1
    return-void
.end method

.method protected onPlayCompleted()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 598
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;>;"
    if-eqz v0, :cond_0

    .line 600
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 601
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 585
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    .line 586
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;>;"
    if-eqz v0, :cond_0

    .line 587
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 588
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method protected onPreparedStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 485
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    .line 486
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;>;"
    if-eqz v0, :cond_0

    .line 488
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 489
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method protected onUpdateBufferedProgress()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 441
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    .line 444
    :cond_0
    return-void
.end method

.method protected onUpdateDuration()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 448
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 450
    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 449
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    .line 452
    :cond_1
    return-void
.end method

.method protected onUpdateProgress()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 433
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 434
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    .line 437
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 394
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->pause()V

    .line 395
    return-void
.end method

.method public play()V
    .locals 1

    .line 389
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->play()V

    .line 390
    return-void
.end method

.method public previous()V
    .locals 1

    .line 404
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->previous()V

    .line 405
    return-void
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "position"    # J

    .line 611
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 612
    return-void
.end method

.method public setArt(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "cover"    # Landroid/graphics/drawable/Drawable;

    .line 501
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    .line 505
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    .line 509
    :cond_1
    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 298
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    .line 299
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 3
    .param p1, "controlsRow"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 324
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 325
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    .line 327
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 331
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    .line 332
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 335
    .end local v0    # "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 338
    .local v0, "secondaryActions":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    .line 339
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 341
    .end local v0    # "secondaryActions":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->updateControlsRow()V

    .line 342
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 348
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 349
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 524
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    .line 528
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    .line 531
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 545
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    .line 549
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    .line 552
    :cond_1
    return-void
.end method
