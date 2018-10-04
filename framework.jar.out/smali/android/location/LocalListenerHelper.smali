.class abstract Landroid/location/LocalListenerHelper;
.super Ljava/lang/Object;
.source "LocalListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocalListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT",
            "Listener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    return-void
.end method

.method private executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Landroid/location/LocalListenerHelper$ListenerOperation;->execute(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v2, "Error in monitored listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Landroid/os/Handler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->registerWithServer()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    if-nez v2, :cond_0

    :try_start_2
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v4, "Unable to register listener transport."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v4, "Error handling first listener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/location/LocalListenerHelper$1;

    invoke-direct {v4, p0, p1, v2}, Landroid/location/LocalListenerHelper$1;-><init>(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/util/Map$Entry;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract registerWithServer()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->unregisterFromServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v5, "Error handling last listener removal"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract unregisterFromServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
