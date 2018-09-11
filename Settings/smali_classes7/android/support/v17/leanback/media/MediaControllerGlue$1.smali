.class Landroid/support/v17/leanback/media/MediaControllerGlue$1;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaControllerGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaControllerGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaControllerGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaControllerGlue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/MediaControllerGlue;

    .line 41
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerGlue;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 45
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->onMetadataChanged()V

    .line 46
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 50
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->onStateChanged()V

    .line 51
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerGlue;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 56
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 60
    return-void
.end method
