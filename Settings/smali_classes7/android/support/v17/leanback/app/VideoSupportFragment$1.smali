.class Landroid/support/v17/leanback/app/VideoSupportFragment$1;
.super Ljava/lang/Object;
.source "VideoSupportFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/VideoSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VideoSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/VideoSupportFragment;

    .line 45
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

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

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 60
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 49
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    .line 53
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 64
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoSupportFragment;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v17/leanback/app/VideoSupportFragment;->mState:I

    .line 68
    return-void
.end method
