.class Landroid/support/v17/leanback/media/PlaybackGlue$1;
.super Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackGlue;->playWhenPrepared()V
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

    .line 151
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 1
    .param p1, "glue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 154
    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    .line 158
    :cond_0
    return-void
.end method
