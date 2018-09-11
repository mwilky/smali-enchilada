.class public Landroid/support/v17/leanback/app/VideoSupportFragment;
.super Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.source "VideoSupportFragment.java"


# static fields
.field static final SURFACE_CREATED:I = 0x1

.field static final SURFACE_NOT_CREATED:I


# instance fields
.field mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

.field mState:I

.field mVideoSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    return-void
.end method


# virtual methods
.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_video_surface:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    .line 44
    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/app/VideoSupportFragment$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/VideoSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/VideoSupportFragment;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/VideoSupportFragment;->setBackgroundType(I)V

    .line 71
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    .line 116
    invoke-super {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onDestroyView()V

    .line 117
    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 89
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 90
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VideoSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 92
    .local v1, "screenHeight":I
    iget-object v2, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 93
    .local v2, "p":Landroid/view/ViewGroup$LayoutParams;
    mul-int v3, v0, p2

    mul-int v4, p1, v1

    if-le v3, v4, :cond_0

    .line 95
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    mul-int v3, v1, p1

    div-int/2addr v3, p2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 99
    :cond_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    mul-int v3, v0, p2

    div-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 78
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 85
    :cond_0
    return-void
.end method
