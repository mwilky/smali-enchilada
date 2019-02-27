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
    .param p1, "ndm"    # Lcom/oneplus/display/IColorBalanceManager;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/oneplus/display/ColorBalanceManagerGlobal;
    .locals 4

    .line 37
    const-class v0, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-nez v1, :cond_1

    .line 39
    const-string v1, "nightdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 40
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 41
    new-instance v2, Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-static {v1}, Lcom/oneplus/display/IColorBalanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/IColorBalanceManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/display/ColorBalanceManagerGlobal;-><init>(Lcom/oneplus/display/IColorBalanceManager;)V

    sput-object v2, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    goto :goto_0

    .line 43
    :cond_0
    const-string v2, "ColorBalanceManagerGlobal"

    const-string v3, "getService ERROR!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1
    :goto_0
    sget-object v1, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sInstance:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 47
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

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->ColorBalance2GrayColor()V

    goto :goto_0

    .line 180
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    monitor-exit v0

    .line 184
    nop

    .line 185
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public DisableColor(I)V
    .locals 3
    .param p1, "enable"    # I

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->DisableColor(I)V

    goto :goto_0

    .line 211
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    monitor-exit v0

    .line 215
    nop

    .line 216
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public GrayColor2ColorBalance()V
    .locals 3

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->GrayColor2ColorBalance()V

    goto :goto_0

    .line 195
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    monitor-exit v0

    .line 199
    nop

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public autoModeonStart()V
    .locals 3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1}, Lcom/oneplus/display/IColorBalanceManager;->autoModeonStart()V

    goto :goto_0

    .line 165
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    monitor-exit v0

    .line 169
    nop

    .line 170
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIsAutoTime()Z
    .locals 4

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "IsAutoTime":Z
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v2}, Lcom/oneplus/display/IColorBalanceManager;->getIsAutoTime()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 149
    :cond_0
    const-string v2, "ColorBalanceManagerGlobal"

    const-string v3, "mCBM null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    monitor-exit v1

    .line 153
    nop

    .line 154
    return v0

    .line 150
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->sendMsg(I)V

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    monitor-exit v0

    .line 62
    nop

    .line 63
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setActiveMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setActiveMode(I)V

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    monitor-exit v0

    .line 77
    nop

    .line 78
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalance(I)V
    .locals 3
    .param p1, "v"    # I

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setColorBalance(I)V

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    monitor-exit v0

    .line 107
    nop

    .line 108
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalanceActivated(I)V
    .locals 3
    .param p1, "activated"    # I

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setColorBalanceActivated(I)V

    goto :goto_0

    .line 133
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    monitor-exit v0

    .line 137
    nop

    .line 138
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setDefaultMode(I)V

    goto :goto_0

    .line 88
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    monitor-exit v0

    .line 92
    nop

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGrayColorActivated(I)V
    .locals 3
    .param p1, "activated"    # I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/oneplus/display/ColorBalanceManagerGlobal;->mCBM:Lcom/oneplus/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Lcom/oneplus/display/IColorBalanceManager;->setGrayColorActivated(I)V

    goto :goto_0

    .line 118
    :cond_0
    const-string v1, "ColorBalanceManagerGlobal"

    const-string v2, "mCBM null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    monitor-exit v0

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
