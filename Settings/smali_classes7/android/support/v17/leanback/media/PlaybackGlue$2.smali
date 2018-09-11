.class Landroid/support/v17/leanback/media/PlaybackGlue$2;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 231
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 2

    .line 254
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 255
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostPause()V

    .line 250
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostResume()V

    .line 245
    return-void
.end method

.method public onHostStart()V
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostStart()V

    .line 235
    return-void
.end method

.method public onHostStop()V
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostStop()V

    .line 240
    return-void
.end method
