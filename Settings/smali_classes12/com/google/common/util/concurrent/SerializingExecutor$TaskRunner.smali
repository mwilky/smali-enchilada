.class Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SerializingExecutor$1;

    .line 129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 132
    const/4 v0, 0x1

    .line 135
    .local v0, "stillRunning":Z
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 137
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 138
    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 139
    .local v3, "nextToRun":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 140
    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v4, v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 141
    const/4 v0, 0x0

    .line 142
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .end local v3    # "nextToRun":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 161
    :try_start_2
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3, v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 162
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 144
    .restart local v3    # "nextToRun":Ljava/lang/Runnable;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    goto :goto_2

    .line 149
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "nextToRun":Ljava/lang/Runnable;
    :goto_2
    goto :goto_0

    .line 144
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 156
    :catchall_2
    move-exception v2

    if-eqz v0, :cond_2

    .line 160
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 161
    :try_start_8
    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v4, v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 162
    monitor-exit v3

    goto :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :cond_2
    :goto_3
    throw v2
.end method
