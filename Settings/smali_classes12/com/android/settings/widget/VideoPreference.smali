.class public Lcom/android/settings/widget/VideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "VideoPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPreference"


# instance fields
.field mAnimationAvailable:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f110003

    goto :goto_0

    :cond_0
    const v1, 0x7f110002

    :goto_0
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V

    const v4, 0x7f0d02d9

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/VideoPreference;->setLayoutResource(I)V

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;-><init>(Lcom/android/settings/widget/VideoPreference;)V

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v4, Lcom/android/settings/widget/-$$Lambda$VideoPreference$2crRm1Sj4_bqGlDPLY9cVIbC7CU;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$2crRm1Sj4_bqGlDPLY9cVIbC7CU;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean v3, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VideoPreference"

    const-string v3, "Animation resource not found. Will not show animation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/VideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/VideoPreference;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a05dd

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a05da

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a05d9

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a05d6

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v4, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v4, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    new-instance v4, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/settings/widget/VideoPreference$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/settings/widget/VideoPreference$1;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onViewVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    return-void
.end method
