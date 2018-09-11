.class Landroid/support/v17/leanback/app/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/VideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VideoFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/VideoFragment;

    .line 50
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 62
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 65
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v17/leanback/app/VideoFragment;->mState:I

    .line 58
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v17/leanback/app/VideoFragment;->mState:I

    .line 73
    return-void
.end method
