.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_ALLOWED:I = 0x6

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private volatile mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/RemoteListenerHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/location/RemoteListenerHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/location/RemoteListenerHelper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/RemoteListenerHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private calculateCurrentResultUnsafe()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private tryRegister()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryUnregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$2;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    const-string v0, "Attempted to register a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    goto :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v5, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->setUid(I)V

    invoke-static {v6, v4, v3}, Lcom/android/server/LocationManagerService;->updateLocationReceiver(IZZ)V

    invoke-virtual {p0, v5}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    monitor-exit v2

    return v4

    :cond_4
    monitor-exit v2

    return v4

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    const-string v6, "Remote listener already died."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method protected abstract registerWithService()I
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    const-string v0, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUid()I

    move-result v3

    invoke-static {v3, v1, v1}, Lcom/android/server/LocationManagerService;->updateLocationReceiver(IZZ)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected setSupported(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected tryUpdateRegistrationWithService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    move-result v1

    iget v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    if-ne v2, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    iput v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
