.class Lcom/android/server/location/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = true

.field private static final MAX_CLIENT_ID:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHostEndpointId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I

    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-void
.end method

.method private broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;

    invoke-direct {v0, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private declared-synchronized createNewClientBroker(Landroid/hardware/location/IContextHubClientCallback;I)Lcom/android/server/location/ContextHubClientBroker;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x7fff

    if-gt v1, v4, :cond_3

    iget-object v5, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v6, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v7, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    int-to-short v11, v3

    move-object v6, v5

    move-object v9, p0

    move v10, p2

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;ISLandroid/hardware/location/IContextHubClientCallback;)V

    move-object v0, v5

    iget-object v5, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v6, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    :goto_1
    iput v2, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    if-ne v3, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v3, 0x1

    :goto_2
    move v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not register client - max limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private forEachClientOfHub(ILjava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Lcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method static synthetic lambda$onHubReset$2(Lcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method onHubReset(I)V
    .locals 1

    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 5

    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    const-string v1, "ContextHubClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-short v2, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    goto :goto_0

    :cond_1
    const-string v2, "ContextHubClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method onNanoAppAborted(IJI)V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method onNanoAppLoaded(IJ)V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method onNanoAppUnloaded(IJ)V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method registerClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->createNewClientBroker(Landroid/hardware/location/IContextHubClientCallback;I)Lcom/android/server/location/ContextHubClientBroker;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v1, "ContextHubClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered client with host endpoint ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "ContextHubClientManager"

    const-string v3, "Failed to attach death recipient to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    const/4 v2, 0x0

    return-object v2
.end method

.method unregisterClient(S)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ContextHubClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "ContextHubClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
