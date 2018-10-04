.class Landroid/media/MediaPlayer2Impl$25;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer2$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$25;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer2;Landroid/media/SubtitleData;)V
    .locals 5

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$25;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$25;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/SubtitleTrack;

    invoke-virtual {v4, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
