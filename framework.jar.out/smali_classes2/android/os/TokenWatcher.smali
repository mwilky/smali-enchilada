.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile mAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationQueue:I

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "TokenWatcher"

    :goto_0
    iput-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/TokenWatcher;)I
    .locals 1

    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/TokenWatcher;I)I
    .locals 0

    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p1
.end method

.method static synthetic access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private dumpInternal()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/TokenWatcher$Death;

    iget-object v7, v7, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendNotificationLocked(Z)V
    .locals 3

    move v0, p1

    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v1, v0, :cond_1

    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    new-instance v2, Landroid/os/TokenWatcher$Death;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    iput-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    :cond_1
    monitor-exit v0

    return-void

    :catch_0
    move-exception v3

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Landroid/os/IBinder;Z)V
    .locals 4

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher$Death;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    :cond_0
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    iput-boolean v2, p0, Landroid/os/TokenWatcher;->mAcquired:Z

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

.method public dump()V
    .locals 4

    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAcquired()Z
    .locals 2

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public abstract released()V
.end method
