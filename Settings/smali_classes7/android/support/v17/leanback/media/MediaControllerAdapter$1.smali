.class Landroid/support/v17/leanback/media/MediaControllerAdapter$1;
.super Ljava/lang/Object;
.source "MediaControllerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaControllerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaControllerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;

    .line 51
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-static {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->access$100(Landroid/support/v17/leanback/media/MediaControllerAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-static {v1}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->access$000(Landroid/support/v17/leanback/media/MediaControllerAdapter;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method
