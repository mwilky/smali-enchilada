.class public final Landroid/se/omapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/SEService$SEListener;,
        Landroid/se/omapi/SEService$OnConnectedListener;
    }
.end annotation


# static fields
.field public static final IO_ERROR:I = 0x1

.field public static final NO_SUCH_ELEMENT_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OMAPI.SEService"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/se/omapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private mSEListener:Landroid/se/omapi/SEService$SEListener;

.field private volatile mSecureElementService:Landroid/se/omapi/ISecureElementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/se/omapi/SEService$SEListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/se/omapi/SEService$SEListener;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/SEService$1;)V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iput-object p1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p3, v0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p2, v0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/se/omapi/SEService$1;

    invoke-direct {v0, p0}, Landroid/se/omapi/SEService$1;-><init>(Landroid/se/omapi/SEService;)V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/se/omapi/ISecureElementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.se"

    const-string v2, "com.android.se.SecureElementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "OMAPI.SEService"

    const-string v3, "bindService successful"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$102(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)Landroid/se/omapi/ISecureElementService;
    .locals 0

    iput-object p1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    return-object p1
.end method

.method static synthetic access$200(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object v0
.end method

.method private getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0, p1}, Landroid/se/omapi/ISecureElementService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getListener()Landroid/se/omapi/ISecureElementListener;
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object v0
.end method

.method public getReaders()[Landroid/se/omapi/Reader;
    .locals 11

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    nop

    array-length v1, v0

    new-array v1, v1, [Landroid/se/omapi/Reader;

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    iget-object v6, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    :try_start_1
    iget-object v6, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v7, Landroid/se/omapi/Reader;

    invoke-direct {p0, v5}, Landroid/se/omapi/SEService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v8

    invoke-direct {v7, p0, v5, v8}, Landroid/se/omapi/Reader;-><init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v2, 0x1

    :try_start_2
    iget-object v7, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/se/omapi/Reader;

    aput-object v7, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    move v10, v6

    move-object v6, v2

    move v2, v10

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_1
    const-string v7, "OMAPI.SEService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding Reader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/se/omapi/Reader;

    aput-object v7, v1, v2

    :goto_2
    move v2, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2"

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shutdown()V
    .locals 4

    iget-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/se/omapi/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->closeSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
