.class final Landroid/media/ImageWriter$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageWriter;


# direct methods
.method public constructor <init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->access$100(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v1}, Landroid/media/ImageWriter;->access$200(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-interface {v1, v0}, Landroid/media/ImageWriter$OnImageReleasedListener;->onImageReleased(Landroid/media/ImageWriter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
