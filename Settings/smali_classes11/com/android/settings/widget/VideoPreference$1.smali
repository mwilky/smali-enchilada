.class Lcom/android/settings/widget/VideoPreference$1;
.super Ljava/lang/Object;
.source "VideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VideoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VideoPreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/widget/VideoPreference;->access$002(Lcom/android/settings/widget/VideoPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPreference;->access$000(Lcom/android/settings/widget/VideoPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPreference;->access$100(Lcom/android/settings/widget/VideoPreference;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
