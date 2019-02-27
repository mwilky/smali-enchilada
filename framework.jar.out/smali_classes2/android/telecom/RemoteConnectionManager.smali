.class public Landroid/telecom/RemoteConnectionManager;
.super Ljava/lang/Object;
.source "RemoteConnectionManager.java"


# instance fields
.field private final mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final mRemoteConnectionServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/telecom/RemoteConnectionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    iput-object p1, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    return-void
.end method


# virtual methods
.method addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/telecom/RemoteConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    invoke-direct {v0, p2, v1}, Landroid/telecom/RemoteConnectionService;-><init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V

    iget-object v1, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "Request to conference incompatible remote connections (%s,%s) (%s,%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .locals 5

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnectionService;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Landroid/telecom/RemoteConnectionService;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountHandle not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountHandle must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
