.class Landroid/os/TokenWatcher$1;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TokenWatcher;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v0}, Landroid/os/TokenWatcher;->access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v1}, Landroid/os/TokenWatcher;->access$100(Landroid/os/TokenWatcher;)I

    move-result v1

    iget-object v2, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/TokenWatcher;->access$102(Landroid/os/TokenWatcher;I)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Landroid/os/TokenWatcher;->acquired()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Landroid/os/TokenWatcher;->released()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
