.class Landroid/media/MediaPlayer2Impl$27;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$dupedFd:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$27;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer2Impl$27;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer2Impl$27;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer2Impl$27;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer2Impl$27;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 11

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$27;->val$offset2:J

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer2Impl$27;->val$length2:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-gez v4, :cond_1

    array-length v4, v1

    int-to-long v6, v4

    iget-wide v8, p0, Landroid/media/MediaPlayer2Impl$27;->val$length2:J

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v6, v1, v5, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v7, v6

    add-long/2addr v2, v7

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$27;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$3600(Landroid/media/MediaPlayer2Impl$TimeProvider;)Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$27;->val$track:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x323

    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v9, "MediaPlayer2Impl"

    invoke-virtual {v8}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v7

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "MediaPlayer2Impl"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x384

    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "MediaPlayer2Impl"

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v2

    :goto_4
    nop

    :try_start_4
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$27;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaPlayer2Impl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$27;->addTrack()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$27;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$27;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$27;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$27;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
