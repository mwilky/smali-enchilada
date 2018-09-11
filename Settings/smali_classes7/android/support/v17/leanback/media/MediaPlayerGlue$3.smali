.class Landroid/support/v17/leanback/media/MediaPlayerGlue$3;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;->setMode(I)V
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
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/MediaPlayerGlue;

    .line 369
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 372
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->play()V

    .line 373
    return-void
.end method
