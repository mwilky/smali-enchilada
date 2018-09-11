.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    .line 81
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 84
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onVideoSizeChanged(Landroid/support/v17/leanback/media/PlayerAdapter;II)V

    .line 85
    return-void
.end method
