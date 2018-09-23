.class public Lcom/android/server/backup/transport/TransportClient;
.super Ljava/lang/Object;
.source "TransportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportClient$TransportConnection;,
        Lcom/android/server/backup/transport/TransportClient$State;,
        Lcom/android/server/backup/transport/TransportClient$Transition;
    }
.end annotation


# static fields
.field private static final LOG_BUFFER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "TransportClient"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBindIntent:Landroid/content/Intent;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mCreatorLogString:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportConnectionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBuffer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLogBufferLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBufferLock:Ljava/lang/Object;

.field private final mPrefixForLog:Ljava/lang/String;

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private volatile mTransport:Lcom/android/internal/backup/IBackupTransport;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private final mTransportComponent:Landroid/content/ComponentName;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportClient;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iput-object p4, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/backup/transport/TransportClient;->mBindIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/backup/transport/TransportClient;->mCreatorLogString:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/backup/transport/TransportClient;->mListenerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportClient$1;)V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "markAsDisposed"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/transport/TransportClient;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/transport/TransportClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/backup/transport/TransportClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->onBindingDied()V

    return-void
.end method

.method private checkState(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkStateIntegrityLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation

    iget v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = CONNECTED"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v0, "Transport expected to be non-null when state = CONNECTED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "Transport expected to be null when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = IDLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const-string v0, "Transport expected to be null when state = IDLE"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->checkState(ZLjava/lang/String;)V

    nop

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$connect$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/transport/TransportClient;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$notifyListener$1(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0

    invoke-interface {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnectionListener;->onTransportConnectionResult(Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/transport/TransportClient;)V

    return-void
.end method

.method private log(ILjava/lang/String;)V
    .locals 3

    const-string v0, "TransportClient"

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v2, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TransportClient"

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v1, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method private notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "IBackupTransport"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] transport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mListenerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnectionListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private onBindingDied()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    const-string v1, "Binding died: client UNUSABLE"

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v4}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "Unexpected state transition IDLE => UNUSABLE"

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceConnected(Landroid/os/IBinder;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    iget v2, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    if-eqz v2, :cond_0

    const-string v2, "Transport connected"

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onServiceDisconnected()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_0
    const-string v2, "Service disconnected: client UNUSABLE"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to unbind onServiceDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onStateTransition(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->transitionThroughState(III)I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/backup/transport/TransportClient;->transitionThroughState(III)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/16 v7, 0xb22

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    if-eqz v3, :cond_3

    if-ne v3, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const/16 v7, 0xb23

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_3
    return-void
.end method

.method private saveLogEntry(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStateLock"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/transport/TransportClient;->onStateTransition(II)V

    iput p1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_1
    const-string v0, "BOUND_AND_CONNECTING"

    return-object v0

    :pswitch_2
    const-string v0, "IDLE"

    return-object v0

    :pswitch_3
    const-string v0, "UNUSABLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transitionThroughState(III)I
    .locals 1

    if-ge p1, p3, :cond_0

    if-gt p3, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-lt p1, p3, :cond_1

    if-le p3, p2, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t call connect() on main thread"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    const-string v1, "Sync connect: reusing transport"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v1, 0x5

    const-string v2, "Sync connect: UNUSABLE client"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-object v5

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v4, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$uc3fygwQjQIS_JT7mlt-yMBfJcE;

    invoke-direct {v4, v3}, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$uc3fygwQjQIS_JT7mlt-yMBfJcE;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v8, "Sync connect: calling async"

    invoke-direct {p0, v2, p1, v8}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1}, Lcom/android/server/backup/transport/TransportClient;->connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/backup/IBackupTransport;

    move-object v0, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-object v10, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget-object v11, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v8, v9}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Connect took %d ms"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v1, v12

    invoke-static {v10, v11, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " while waiting for transport: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "Async connect: reusing transport"

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "Async connect: already connecting, adding listener"

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClient;->mBindIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v4, "Async connect: service bound, connecting"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    const-string v4, "Async connect: bindService returned false"

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x5

    const-string v3, "Async connect: UNUSABLE client"

    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportClient;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;)V

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    const-string v2, "Transport connection failed"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string v1, "TransportClient.finalize()"

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dangling TransportClient created in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClient;->mCreatorLogString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] being GC\'ed. Left bound, unbinding..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/backup/transport/TransportClient;->unbind(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    const-string v2, "Transport not connected"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method getLogBuffer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mLogBuffer:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public markAsDisposed()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t mark as disposed if still bound"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportClient{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportClient;->checkStateIntegrityLocked()V

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind requested (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/transport/TransportClient;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportClient;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/transport/TransportClient;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportClient;->setStateLocked(ILcom/android/internal/backup/IBackupTransport;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v3}, Lcom/android/server/backup/transport/TransportClient;->notifyListenersAndClearLocked(Lcom/android/internal/backup/IBackupTransport;)V

    goto :goto_0

    :pswitch_2
    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
