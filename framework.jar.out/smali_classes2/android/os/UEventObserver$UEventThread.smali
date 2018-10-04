.class final Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UEventThread"
.end annotation


# instance fields
.field private final mKeysAndObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempObserversToSignal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UEventObserver;

    iget-object v6, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v0, p1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UEventObserver;

    invoke-virtual {v3, v0}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .locals 2

    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UEventObserver;->access$200(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .locals 4

    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UEventObserver;->access$300(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

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
    .locals 1

    invoke-static {}, Landroid/os/UEventObserver;->access$000()V

    :goto_0
    invoke-static {}, Landroid/os/UEventObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/os/UEventObserver$UEventThread;->sendEvent(Ljava/lang/String;)V

    :cond_0
    goto :goto_0
.end method
