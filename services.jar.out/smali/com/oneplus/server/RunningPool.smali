.class public Lcom/oneplus/server/RunningPool;
.super Ljava/lang/Thread;
.source "RunningPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/RunningPool$RunItem;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32


# instance fields
.field private configFuncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/RunningPool$RunItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oneplus/server/RunningPool$RunItem;",
            ">;"
        }
    .end annotation
.end field

.field private sPool:Lcom/oneplus/server/RunningPool$RunItem;

.field private sPoolSize:I

.field private sPoolSync:Ljava/lang/Object;

.field private startFuncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/RunningPool$RunItem;",
            ">;"
        }
    .end annotation
.end field

.field private stopFuncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/RunningPool$RunItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/oneplus/server/RunningPool;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    return-void
.end method

.method private obtainItem()Lcom/oneplus/server/RunningPool$RunItem;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    iget-object v2, v1, Lcom/oneplus/server/RunningPool$RunItem;->next:Lcom/oneplus/server/RunningPool$RunItem;

    iput-object v2, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/server/RunningPool$RunItem;->next:Lcom/oneplus/server/RunningPool$RunItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/server/RunningPool$RunItem;->in_use:Z

    iget v3, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/oneplus/server/RunningPool$RunItem;

    invoke-direct {v0, p0}, Lcom/oneplus/server/RunningPool$RunItem;-><init>(Lcom/oneplus/server/RunningPool;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private obtainItem(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/server/RunningPool;->obtainItem()Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/server/RunningPool$RunItem;->funcName:Ljava/lang/String;

    iput-object p2, v0, Lcom/oneplus/server/RunningPool$RunItem;->func:Lcom/oneplus/oimc/IOPFunction;

    iput p3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    iput-object p4, v0, Lcom/oneplus/server/RunningPool$RunItem;->arg:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/server/RunningPool$RunItem;->isRemoteFunc:Z

    return-object v0
.end method

.method private obtainItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/server/RunningPool;->obtainItem()Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/server/RunningPool$RunItem;->funcName:Ljava/lang/String;

    iput p3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    iput-object p4, v0, Lcom/oneplus/server/RunningPool$RunItem;->arg:Ljava/lang/Object;

    iput-object p2, v0, Lcom/oneplus/server/RunningPool$RunItem;->providerKey:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/server/RunningPool$RunItem;->isRemoteFunc:Z

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending Functions in Running Pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->isRemoteFunc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->isRemoteFunc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getProviderKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not register yet, skip action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->isRemoteFunc()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->isRemoteFunc()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getProviderKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getProviderKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getProviderKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/oneplus/server/RunningPool;->obtainItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oneplus/server/RunningPool$RunItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not register yet, skip action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public prepareActionDone()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v4, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/RunningPool$RunItem;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/server/RunningPool;->startFuncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v4, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/RunningPool$RunItem;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/oneplus/server/RunningPool;->stopFuncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/RunningPool$RunItem;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->configFuncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method public recycleItem(Lcom/oneplus/server/RunningPool$RunItem;)V
    .locals 3

    iget-boolean v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->in_use:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->funcName:Ljava/lang/String;

    iput-object v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->func:Lcom/oneplus/oimc/IOPFunction;

    iput-object v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->providerKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->isRemoteFunc:Z

    iput-boolean v0, p1, Lcom/oneplus/server/RunningPool$RunItem;->in_use:Z

    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    iput-object v1, p1, Lcom/oneplus/server/RunningPool$RunItem;->next:Lcom/oneplus/server/RunningPool$RunItem;

    iput-object p1, p0, Lcom/oneplus/server/RunningPool;->sPool:Lcom/oneplus/server/RunningPool$RunItem;

    iget v1, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/server/RunningPool;->sPoolSize:I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/RunningPool;->pendingFunc:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/RunningPool$RunItem;

    iget-boolean v1, v0, Lcom/oneplus/server/RunningPool$RunItem;->isRemoteFunc:Z

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v4, v0, Lcom/oneplus/server/RunningPool$RunItem;->arg:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/oneplus/oimc/IOPFunction;->stop(Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v4, v0, Lcom/oneplus/server/RunningPool$RunItem;->arg:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/oneplus/oimc/IOPFunction;->start(Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->func:Lcom/oneplus/oimc/IOPFunction;

    iget-object v4, v0, Lcom/oneplus/server/RunningPool$RunItem;->arg:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/oneplus/oimc/IOPFunction;->config(Ljava/lang/Object;)I

    :cond_2
    :goto_1
    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/oneplus/server/RunningPool$RunItem;->funcName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_3
    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/server/RunningPool;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/server/RunningPool$RunItem;->providerKey:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/server/RunningPool$RunItem;->rflag:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oneplus/server/RunningPool;->recycleItem(Lcom/oneplus/server/RunningPool$RunItem;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
