.class Landroid/support/v17/leanback/media/MediaPlayerGlue$4;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->access$102(Landroid/support/v17/leanback/media/MediaPlayerGlue;Z)Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method
