.class public final Lcom/oneplus/display/ColorBalanceManagerGlobal;
.super Ljava/lang/Object;
.source "ColorBalanceManagerGlobal.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorBalanceManagerGlobal"

.field private static sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;


# instance fields
.field private final mCBM:Lcom/oneplus/display/IColorBalanceManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/oneplus/display/IColorBalanceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/display/ColorBalanceManagerGlobal;
    .locals 4

    const-class v0, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-nez v1, :cond_1

    const-string v1, "nightdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-static {v1}, Lcom/oneplus/display/IColorBalanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/IColorBalanceManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/display/ColorBalanceManagerGlobal;-><init>(Lcom/oneplus/display/IColorBalanceManager;)V

    sput-object v2, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    goto :goto_0

    :cond_0
    const-string v2, "ColorBalanceManagerGlobal"

    const-string v3, "getService ERROR!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public ColorBalance2GrayColor()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->ColorBalance2GrayColor()V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public DisableColor(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->DisableColor(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public GrayColor2ColorBalance()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->GrayColor2ColorBalance()V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public autoModeonStart()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->autoModeonStart()V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIsAutoTime()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v2}, Lcom/oneplus/display/IColorBalanceManager;->getIsAutoTime()Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v2, "ColorBalanceManagerGlobal"

    const-string v3, "mCBM null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    nop

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendMsg(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->sendMsg(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setActiveMode(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setActiveMode(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalance(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setColorBalance(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalanceActivated(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setColorBalanceActivated(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultMode(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setDefaultMode(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGrayColorActivated(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setGrayColorActivated(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
