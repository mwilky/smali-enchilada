.class public Landroid/net/wifi/aware/DiscoverySession;
.super Ljava/lang/Object;
.source "DiscoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final MAX_SEND_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DiscoverySession"

.field private static final VDBG:Z = false


# instance fields
.field protected final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSessionId:I

.field protected mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iput p3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string v1, "DiscoverySession"

    const-string v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->terminateSession(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public createNetworkSpecifierOpen(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/NetworkSpecifier;
    .locals 9

    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DiscoverySession"

    const-string v2, "createNetworkSpecifierOpen: called on terminated session"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string v2, "DiscoverySession"

    const-string v3, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v5, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPassphrase(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 9

    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DiscoverySession"

    const-string v2, "createNetworkSpecifierPassphrase: called on terminated session"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string v2, "DiscoverySession"

    const-string v3, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v5, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v7, 0x0

    move-object v2, v0

    move-object v6, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase must meet length requirements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNetworkSpecifierPmk(Landroid/net/wifi/aware/PeerHandle;[B)Landroid/net/NetworkSpecifier;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DiscoverySession"

    const-string v2, "createNetworkSpecifierPmk: called on terminated session"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string v2, "DiscoverySession"

    const-string v3, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v5, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v8, 0x0

    move-object v2, v0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PMK must 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/aware/DiscoverySession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    return v0
.end method

.method public getSessionId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    return v0
.end method

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/aware/DiscoverySession;->sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V

    return-void
.end method

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V
    .locals 8

    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    const-string v0, "DiscoverySession"

    const-string/jumbo v1, "sendMessage: called on terminated session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string v1, "DiscoverySession"

    const-string/jumbo v2, "sendMessage: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v1, v0

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/net/wifi/aware/WifiAwareManager;->sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V

    return-void
.end method

.method public setTerminated()V
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    const-string v0, "DiscoverySession"

    const-string/jumbo v1, "terminate: already terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method
