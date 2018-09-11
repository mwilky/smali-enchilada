.class public Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

.field final mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/PlaybackFragment;

    .line 40
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;-><init>()V

    .line 121
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 41
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    .line 37
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    return-object v0
.end method


# virtual methods
.method public fadeOut()V
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->fadeOut()V

    .line 99
    return-void
.end method

.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    .line 109
    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayVisible()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->notifyPlaybackRowChanged()V

    .line 84
    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 46
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setControlsOverlayAutoHideEnabled(Z)V

    .line 47
    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    .line 79
    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnActionClickedListener;

    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 74
    :goto_0
    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "onKeyListener"    # Landroid/view/View$OnKeyListener;

    .line 56
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 57
    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    .line 94
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 88
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 89
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 1
    .param p1, "client"    # Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 118
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    .line 119
    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    .line 114
    return-void
.end method
