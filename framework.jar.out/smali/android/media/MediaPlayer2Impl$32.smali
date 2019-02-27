.class Landroid/media/MediaPlayer2Impl$32;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->releaseDrm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "releaseDrm:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5700(Landroid/media/MediaPlayer2Impl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5800(Landroid/media/MediaPlayer2Impl;)V

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$5702(Landroid/media/MediaPlayer2Impl;Z)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MediaPlayer2Impl"

    const-string/jumbo v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    const-string v2, "MediaPlayer2Impl"

    const-string/jumbo v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "releaseDrm: The player is not in a valid state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "releaseDrm(): No active DRM scheme to release."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string/jumbo v2, "releaseDrm: No active DRM scheme to release."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
