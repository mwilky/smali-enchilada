.class Landroid/filterpacks/videosrc/MediaSource$3;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterpacks/videosrc/MediaSource;

    .line 548
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 550
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaSource"

    const-string v1, "MediaPlayer has completed playback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterpacks/videosrc/MediaSource;->access$702(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
