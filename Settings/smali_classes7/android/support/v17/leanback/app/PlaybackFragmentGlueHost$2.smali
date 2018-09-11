.class Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
.source "PlaybackFragmentGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    .line 122
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->access$000(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->onBufferingStateChanged(Z)V

    .line 126
    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->access$000(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->onError(ILjava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->access$000(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->onVideoSizeChanged(II)V

    .line 136
    return-void
.end method
