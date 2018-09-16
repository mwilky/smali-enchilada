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
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .line 836
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 838
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 841
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 842
    .local v1, "uidForeground":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 843
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 844
    .local v3, "set":I
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 845
    .local v4, "oldSet":I
    if-eq v4, v3, :cond_1

    .line 846
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    invoke-static {v0, v3}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 849
    .end local v3    # "set":I
    .end local v4    # "oldSet":I
    :cond_1
    monitor-exit v2

    .line 850
    nop

    .line 854
    .end local v0    # "uid":I
    .end local v1    # "uidForeground":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 849
    .restart local v0    # "uid":I
    .restart local v1    # "uidForeground":Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
