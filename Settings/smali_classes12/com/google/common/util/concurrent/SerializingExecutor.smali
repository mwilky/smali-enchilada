.class final Lcom/google/common/util/concurrent/SerializingExecutor;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final internalLock:Ljava/lang/Object;

.field private isThreadScheduled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private final taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

.field private final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/common/util/concurrent/SerializingExecutor;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 69
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    .line 81
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/SerializingExecutor$1;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    .line 77
    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .line 46
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 93
    const-string v0, "\'r\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "scheduleTaskRunner":Z
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 99
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 100
    const/4 v0, 0x1

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 103
    if-eqz v0, :cond_2

    .line 104
    move v1, v3

    .line 106
    .local v1, "threw":Z
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    const/4 v1, 0x0

    .line 109
    if-eqz v1, :cond_2

    .line 110
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_2
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 116
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 109
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    .line 110
    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v4

    .line 115
    :try_start_3
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 116
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    :cond_1
    :goto_0
    throw v3

    .line 120
    .end local v1    # "threw":Z
    :cond_2
    :goto_1
    return-void

    .line 102
    :catchall_3
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2
.end method
