.class public Lcom/android/server/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;
    }
.end annotation


# static fields
.field public static final MSG_DISABLE_NANO_APP:I = 0x2

.field public static final MSG_ENABLE_NANO_APP:I = 0x1

.field public static final MSG_HUB_RESET:I = 0x7

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_QUERY_MEMORY:I = 0x6

.field public static final MSG_QUERY_NANO_APPS:I = 0x5

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mDefaultClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/IContextHubClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

.field private final mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v0}, Lcom/android/server/location/NanoAppStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    iput-object p1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/location/ContextHubClientManager;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/ContextHubClientManager;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    new-instance v0, Lcom/android/server/location/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/ContextHubTransactionManager;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Lcom/android/server/location/NanoAppStateManager;)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    const-string v0, "ContextHubService"

    const-string v1, "RemoteException while getting Context Hub info daemon isn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    nop

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-direct {p0, v3}, Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    new-instance v6, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v6, p0, v3}, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/ContextHubService;I)V

    invoke-interface {v5, v3, v6}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "ContextHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ContextHubService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleTransactionResultCallback(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/ContextHubService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/ContextHubService;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/ContextHubService;III[B)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/ContextHubService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method private checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :try_start_0
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ContextHubService"

    const-string v3, "RemoteException while calling onTransactionComplete"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " transaction for invalid hub ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "ContextHubService"

    const-string v3, "RemoteException while calling onTransactionComplete"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkPermissions()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    return-void
.end method

.method private createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/ContextHubService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$1;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/ContextHubService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/ContextHubService$2;-><init>(Lcom/android/server/location/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method private createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/ContextHubService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$4;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/ContextHubService$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$3;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ContextHubService"

    const-string v3, "Context Hub HAL service not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ContextHubService"

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private handleAppAbortCallback(IJI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->onNanoAppAborted(IJI)V

    return-void
.end method

.method private handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method private handleHubEventCallback(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubTransactionManager;->onHubReset()V

    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/ContextHubClientManager;->onHubReset(I)V

    goto :goto_0

    :cond_0
    const-string v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown hub event (hub ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .locals 4

    if-nez p3, :cond_0

    const-string v0, "ContextHubService"

    const-string v1, "Nanoapp binary field was null for a load transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method private handleQueryAppsCallback(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    nop

    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    return-void
.end method

.method private handleTransactionResultCallback(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/ContextHubTransactionManager;->onTransactionResponse(II)V

    return-void
.end method

.method private handleUnloadResponseOldApi(II)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method private isValidContextHubId(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onMessageReceiptOldApi(III[B)I
    .locals 10

    if-nez p4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const-string v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from hubHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", appInstance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callBackCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const-string v2, "ContextHubService"

    const-string v4, "No message callbacks registered."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    new-instance v2, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v2, p1, v0, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IContextHubCallback;

    :try_start_0
    invoke-interface {v5, p2, p3, v2}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "ContextHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") calling remote callback ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v3
.end method

.method private queryNanoAppsInternal(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    nop

    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public createClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    invoke-direct {p0, p2}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot register client with null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Dumping ContextHub Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

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

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v0}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfoCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfoCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getContextHubHandles()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Context Hub handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in getContextHubInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public getContextHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in loadNanoApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "ContextHubService"

    const-string v2, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    nop

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    const/4 v3, 0x0

    return v3
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "ContextHubService"

    const-string v1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const-string v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added callback, total callbacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "ContextHubService"

    const-string v2, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ContextHubService"

    const-string v2, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in sendMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_6

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_5
    const-string v2, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid OS message params of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/location/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    nop

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v7

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IContextHubClient;

    invoke-interface {v6, v5}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_8
    const-string v2, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_9

    move v1, v3

    nop

    :cond_9
    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid nanoapp handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in unloadNanoApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    nop

    invoke-direct {p0, v1}, Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    const/4 v6, 0x0

    return v6
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method
