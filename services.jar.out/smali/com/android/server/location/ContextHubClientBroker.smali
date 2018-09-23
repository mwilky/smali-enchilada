.class public Lcom/android/server/location/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubClientBroker"


# instance fields
.field private final mAttachedContextHubId:I

.field private final mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointId:S


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;ISLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iput p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    iput-object p6, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    return-void
.end method


# virtual methods
.method attachDeathRecipient()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public binderDied()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    const-string v2, "RemoteException while closing client on death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-short v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/ContextHubClientManager;->unregisterClient(S)V

    :cond_0
    return-void
.end method

.method getAttachedContextHubId()I
    .locals 1

    iget v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    return v0
.end method

.method getHostEndPointId()S
    .locals 1

    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method onHubReset()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->onHubReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onHubReset on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onNanoAppAborted(JI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppAborted on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onNanoAppLoaded(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppLoaded on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onNanoAppUnloaded(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppUnloaded on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while sending message to client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    invoke-interface {v2, v3, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ContextHubClientBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "ContextHubClientBroker"

    const-string v2, "Failed to send message to nanoapp: client connection is closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    move v0, v1

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v1

    return v1
.end method
