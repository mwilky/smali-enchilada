.class public Lcom/oneplus/oimc/OIMCRemoteFunc;
.super Ljava/lang/Object;
.source "OIMCRemoteFunc.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field mAction:Lcom/oneplus/os/IOIMCRemoteAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    return-void
.end method


# virtual methods
.method public bindRemoteAction(Lcom/oneplus/os/IOIMCRemoteAction;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    :cond_1
    invoke-interface {p1}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public binderDied()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public config(Ljava/lang/Object;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onConfig(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onStart(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onStop(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unBindRemoteAction()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
