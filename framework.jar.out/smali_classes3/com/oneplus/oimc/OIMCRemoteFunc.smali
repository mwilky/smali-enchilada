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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 0
    .param p1, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 13
    return-void
.end method


# virtual methods
.method public bindRemoteAction(Lcom/oneplus/os/IOIMCRemoteAction;)Z
    .locals 4
    .param p1, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 70
    monitor-exit p0

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "binder":Landroid/os/IBinder;
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 77
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 80
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .restart local v0    # "binder":Landroid/os/IBinder;
    :try_start_1
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    nop

    .line 88
    :try_start_2
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 89
    .end local v0    # "binder":Landroid/os/IBinder;
    monitor-exit p0

    .line 90
    return v1

    .line 84
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return v2

    .line 89
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public binderDied()V
    .locals 3

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 110
    .local v0, "action":Lcom/oneplus/os/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 114
    .end local v0    # "action":Lcom/oneplus/os/IOIMCRemoteAction;
    :cond_0
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public config(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .local v0, "action":Lcom/oneplus/os/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 57
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onConfig(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 62
    .end local v0    # "action":Lcom/oneplus/os/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .local v0, "action":Lcom/oneplus/os/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 25
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onStart(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 30
    .end local v0    # "action":Lcom/oneplus/os/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .local v0, "action":Lcom/oneplus/os/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 41
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOIMCRemoteAction;->onStop(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 46
    .end local v0    # "action":Lcom/oneplus/os/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unBindRemoteAction()Z
    .locals 3

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 96
    .local v0, "action":Lcom/oneplus/os/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/oneplus/os/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 98
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/os/IOIMCRemoteAction;

    .line 101
    .end local v0    # "action":Lcom/oneplus/os/IOIMCRemoteAction;
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .line 102
    const/4 v0, 0x1

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
