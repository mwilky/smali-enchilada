.class public final Landroid/se/omapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Reader"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mReader:Landroid/se/omapi/ISecureElementReader;

.field private final mService:Landroid/se/omapi/SEService;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    iput-object p3, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeSessions()V
    .locals 2

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMAPI.Reader"

    const-string/jumbo v1, "service is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->closeSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Landroid/se/omapi/SEService;
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 3

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementReader;->isSecureElementPresent()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error in isSecureElementPresent()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Landroid/se/omapi/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Landroid/se/omapi/Session;

    iget-object v3, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, v1, p0}, Landroid/se/omapi/Session;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "service session is null."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
