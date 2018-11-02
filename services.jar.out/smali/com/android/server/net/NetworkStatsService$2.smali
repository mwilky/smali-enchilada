.class Lcom/android/server/net/NetworkStatsService$2;
.super Landroid/os/Handler;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v0, v3}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    :cond_1
    monitor-exit v2

    nop

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
