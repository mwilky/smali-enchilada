.class Landroid/media/MediaSync$3;
.super Ljava/lang/Thread;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->createAudioThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->access$000(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaSync;->access$1102(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Landroid/media/MediaSync;->access$1202(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->access$000(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
