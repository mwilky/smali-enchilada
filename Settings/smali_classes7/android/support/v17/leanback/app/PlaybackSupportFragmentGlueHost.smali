.class public Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackSupportFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

.field final mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    .line 35
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;-><init>()V

    .line 116
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$2;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 36
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    .line 32
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    return-object v0
.end method


# virtual methods
.method public fadeOut()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->fadeOut()V

    .line 94
    return-void
.end method

.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    .line 104
    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isControlsOverlayVisible()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->notifyPlaybackRowChanged()V

    .line 79
    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setControlsOverlayAutoHideEnabled(Z)V

    .line 42
    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 73
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    .line 74
    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnActionClickedListener;

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 69
    :goto_0
    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "onKeyListener"    # Landroid/view/View$OnKeyListener;

    .line 51
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 52
    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 88
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    .line 89
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 83
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 84
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 1
    .param p1, "client"    # Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    .line 114
    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    .line 109
    return-void
.end method
