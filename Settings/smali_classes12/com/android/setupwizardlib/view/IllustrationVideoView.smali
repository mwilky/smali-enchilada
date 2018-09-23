.class public Lcom/android/setupwizardlib/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IllustrationVideoView"


# instance fields
.field protected mAspectRatio:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mVideoResId:I
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView_suwVideo:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x3f7ffffe    # 0.9999999f

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    invoke-virtual {p0, p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private createMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->requestLayout()V

    :cond_2
    goto :goto_0

    :cond_3
    const-string v0, "IllustrationVideoView"

    const-string v1, "Unable to initialize media player for video view"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v2, v1

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :goto_0
    nop

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v3, v2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->stop()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public setVideoResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    :cond_0
    return-void
.end method

.method protected shouldLoop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
