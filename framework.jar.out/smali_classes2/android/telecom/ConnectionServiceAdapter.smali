.class final Landroid/telecom/ConnectionServiceAdapter;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telecom/IConnectionServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const-string v0, "Ignoring duplicate adapter addition."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 3

    const-string v0, "addExistingConnection: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 4

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    nop

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onConferenceMergeFailed(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    const-string/jumbo v2, "merge failed for call %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "onConnectionEvent: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onConnectionServiceFocusReleased()V
    .locals 4

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    const-string/jumbo v2, "onConnectionServiceFocusReleased"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    const-string/jumbo v2, "onPhoneAccountChanged %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onPostDialChar(Ljava/lang/String;C)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onRemoteRttRequest(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "onRemoteRttRequest: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttInitiationFailure(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "onRttInitiationFailure: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttInitiationSuccess(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "onRttInitiationSuccess: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttSessionRemotelyTerminated(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "onRttSessionRemotelyTerminated: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v0, "putExtra: %s %s=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "putExtra: %s %s=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v0, "putExtra: %s %s=%b"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "putExtras: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception trying to query for remote CSs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method removeCall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "removeExtras: %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method resetCdmaConnectionTime(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->resetCdmaConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setActive(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setAudioRoute(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setAudioRoute: %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    nop

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    nop

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setConferenceableConnections: %s, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    nop

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionProperties(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setDialing(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    const-string/jumbo v2, "sending connection %s with conference %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setOnHold(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setPulling(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setRingbackRequested(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setRinging(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V
    .locals 4

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    nop

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v2

    :goto_1
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_2
    goto :goto_0

    :cond_1
    return-void
.end method

.method setVideoState(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v0, "setVideoState: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method
