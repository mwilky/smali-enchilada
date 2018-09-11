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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 69
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 71
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView_suwVideo:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    const v0, 0x3f7ffffe    # 0.9999999f

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 81
    return-void
.end method

.method private createMediaPlayer()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 145
    .local v0, "aspectRatio":F
    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 146
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    .line 147
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->requestLayout()V

    .line 149
    .end local v0    # "aspectRatio":F
    :cond_2
    goto :goto_0

    .line 150
    :cond_3
    const-string v0, "IllustrationVideoView"

    const-string v1, "Unable to initialize media player for video view"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    .line 155
    :cond_4
    return-void

    .line 132
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 248
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

    .line 223
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
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 234
    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 86
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 88
    .local v1, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 90
    int-to-float v2, v1

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 93
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 96
    :goto_0
    nop

    .line 97
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 98
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 96
    invoke-super {p0, v3, v2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 99
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 239
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 240
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 244
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 245
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 186
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 187
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    .line 188
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    .line 189
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 197
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 193
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 203
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 115
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->stop()V

    .line 121
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 172
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 173
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 177
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    .line 179
    :cond_1
    return-void
.end method

.method public setVideoResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .line 107
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-eq p1, v0, :cond_0

    .line 108
    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 109
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    .line 111
    :cond_0
    return-void
.end method

.method protected shouldLoop()Z
    .locals 1

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 212
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 219
    :cond_0
    return-void
.end method
