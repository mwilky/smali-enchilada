.class Landroid/media/MediaPlayer2Impl$8;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setNextDataSources(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$dsds:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$8;->val$dsds:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$8;->val$dsds:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$8;->val$dsds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$8;->val$dsds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DataSourceDesc;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "DataSourceDesc in the source list cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$8;->val$dsds:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$902(Landroid/media/MediaPlayer2Impl;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$708(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/media/MediaPlayer2Impl;->access$1002(Landroid/media/MediaPlayer2Impl;J)J

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$1102(Landroid/media/MediaPlayer2Impl;I)I

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$1202(Landroid/media/MediaPlayer2Impl;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl;->getMediaPlayer2State()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$8;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data source list cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
