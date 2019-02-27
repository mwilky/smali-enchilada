.class public Landroid/secrecy/SecrecyManager;
.super Ljava/lang/Object;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/SecrecyManager$SecrecyStateListener;,
        Landroid/secrecy/SecrecyManager$MyHandler;
    }
.end annotation


# static fields
.field public static final ADB_TYPE:I = 0x4

.field public static final ALL_TYPE:I = 0xff

.field public static final APP_TYPE:I = 0x2

.field private static final DEBUG:Z

.field public static final LOG_TYPE:I = 0x1

.field private static final MSG_SECRECY_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecrecyManager"

.field private static final TAG_LOG:Ljava/lang/String; = "SecrecyLog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsEncryptAdb:Z

.field private mIsEncryptApp:Z

.field private mIsEncryptLog:Z

.field private mLock:Ljava/lang/Object;

.field private mRC4Sbox:[B

.field private mRC4SboxCopy:[B

.field private mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

.field private mSecrecyStateListener:Landroid/secrecy/SecrecyManager$SecrecyStateListener;

.field private mService:Landroid/secrecy/ISecrecyService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/secrecy/SecrecyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/secrecy/ISecrecyService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/secrecy/ISecrecyService;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/secrecy/SecrecyManager;->mLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    .line 54
    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    .line 55
    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    .line 382
    new-instance v1, Landroid/secrecy/SecrecyManager$1;

    invoke-direct {v1, p0}, Landroid/secrecy/SecrecyManager$1;-><init>(Landroid/secrecy/SecrecyManager;)V

    iput-object v1, p0, Landroid/secrecy/SecrecyManager;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    .line 355
    iput-object p1, p0, Landroid/secrecy/SecrecyManager;->mContext:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Landroid/secrecy/SecrecyManager;->mService:Landroid/secrecy/ISecrecyService;

    .line 357
    if-nez p2, :cond_0

    .line 358
    const-string v0, "SecrecyManager"

    const-string v1, "SecrecyService was null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Landroid/secrecy/SecrecyManager;->getSecrecyStateFromService()V

    .line 364
    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    .line 366
    :try_start_0
    iget-object v2, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    invoke-interface {p2, v2}, Landroid/secrecy/ISecrecyService;->getSecrecyKey([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 370
    :goto_0
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/secrecy/SecrecyManager;->mRC4SboxCopy:[B

    .line 371
    iget-object v1, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    iget-object v2, p0, Landroid/secrecy/SecrecyManager;->mRC4SboxCopy:[B

    iget-object v3, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 374
    :try_start_1
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    invoke-interface {p2, v0}, Landroid/secrecy/ISecrecyService;->registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    goto :goto_1

    .line 375
    :catch_1
    move-exception v0

    .line 379
    :goto_1
    new-instance v0, Landroid/secrecy/SecrecyManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/secrecy/SecrecyManager$MyHandler;-><init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;Landroid/secrecy/SecrecyManager$1;)V

    iput-object v0, p0, Landroid/secrecy/SecrecyManager;->mHandler:Landroid/os/Handler;

    .line 380
    return-void
.end method

.method static synthetic access$000(Landroid/secrecy/SecrecyManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Landroid/secrecy/SecrecyManager;
    .param p1, "x1"    # Ljava/util/Map;

    .line 36
    invoke-direct {p0, p1}, Landroid/secrecy/SecrecyManager;->updateSecrecyState(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Landroid/secrecy/SecrecyManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/secrecy/SecrecyManager;

    .line 36
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSecrecyStateFromService()V
    .locals 3

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mService:Landroid/secrecy/ISecrecyService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/secrecy/ISecrecyService;->getSecrecyState(I)Z

    move-result v0

    .line 316
    .local v0, "encrypt":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-eq v0, v2, :cond_0

    .line 317
    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    .line 318
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    invoke-virtual {p0, v1, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "encrypt":Z
    :cond_0
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 325
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mService:Landroid/secrecy/ISecrecyService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/secrecy/ISecrecyService;->getSecrecyState(I)Z

    move-result v0

    .line 326
    .restart local v0    # "encrypt":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    if-eq v0, v2, :cond_1

    .line 327
    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    .line 328
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    invoke-virtual {p0, v1, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    .end local v0    # "encrypt":Z
    :cond_1
    goto :goto_1

    .line 330
    :catch_1
    move-exception v0

    .line 335
    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mService:Landroid/secrecy/ISecrecyService;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/secrecy/ISecrecyService;->getSecrecyState(I)Z

    move-result v0

    .line 336
    .restart local v0    # "encrypt":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    if-eq v0, v2, :cond_2

    .line 337
    iput-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    .line 338
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    invoke-virtual {p0, v1, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    .end local v0    # "encrypt":Z
    :cond_2
    goto :goto_2

    .line 340
    :catch_2
    move-exception v0

    .line 344
    :goto_2
    return-void
.end method

.method private updateSecrecyState(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 264
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 266
    .local v1, "logSecrecyState":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-eq v2, v1, :cond_0

    .line 267
    iput-boolean v1, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    .line 268
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    invoke-virtual {p0, v0, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V

    .line 269
    const-string v0, "SecrecyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecrecyState LOG_TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "logSecrecyState":Z
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 275
    .local v1, "appSecrecyState":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    if-eq v2, v1, :cond_1

    .line 276
    iput-boolean v1, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    .line 277
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    invoke-virtual {p0, v0, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V

    .line 278
    const-string v0, "SecrecyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecrecyState APP_TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "appSecrecyState":Z
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 284
    .local v1, "adbSecrecyState":Z
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    if-eq v2, v1, :cond_2

    .line 285
    iput-boolean v1, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    .line 286
    iget-boolean v2, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    invoke-virtual {p0, v0, v2}, Landroid/secrecy/SecrecyManager;->notifySecrecyStateChanged(IZ)V

    .line 287
    const-string v0, "SecrecyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSecrecyState ADB_TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1    # "adbSecrecyState":Z
    :cond_2
    return-void
.end method


# virtual methods
.method encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 251
    .local v0, "tagData":[B
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 252
    .local v2, "colon":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 254
    .local v3, "msgData":[B
    iget-object v4, p0, Landroid/secrecy/SecrecyManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 255
    :try_start_0
    iget-object v5, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    const/4 v6, 0x3

    new-array v7, v6, [[B

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Landroid/secrecy/RC4;->encryptLog([B[[B)V

    .line 256
    iget-object v5, p0, Landroid/secrecy/SecrecyManager;->mRC4SboxCopy:[B

    iget-object v7, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    iget-object v10, p0, Landroid/secrecy/SecrecyManager;->mRC4Sbox:[B

    array-length v10, v10

    invoke-static {v5, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 257
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    new-array v4, v6, [[B

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    aput-object v3, v4, v1

    invoke-static {v4}, Landroid/secrecy/RC4;->encodeLog([[B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 257
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public getSecrecyKey([B)Z
    .locals 3
    .param p1, "key"    # [B

    .line 347
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mRC4SboxCopy:[B

    iget-object v1, p0, Landroid/secrecy/SecrecyManager;->mRC4SboxCopy:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public getSecrecyState(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 60
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 64
    :pswitch_0
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptApp:Z

    return v0

    .line 62
    :pswitch_1
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    return v0

    .line 66
    :cond_0
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptAdb:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 96
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 100
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 104
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 108
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 112
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return v0
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 180
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 184
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 188
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 189
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 192
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 196
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 195
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_1
    return v0
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 123
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 127
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 128
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 131
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 135
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_1
    return v0
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 73
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 77
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 81
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 82
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 85
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 89
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return v0
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 142
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 146
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 151
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 152
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 155
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 159
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return v0
.end method

.method public logw(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 166
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "ret":I
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 173
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return v0
.end method

.method public logwtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 203
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 204
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 207
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logwtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 233
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 234
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 237
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "ret":I
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 241
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return v0
.end method

.method public logwtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 219
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, "ret":I
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 226
    .local v5, "s":Ljava/lang/String;
    const-string v6, "SecrecyLog"

    invoke-virtual {p0, p1, v5}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_1
    return v0
.end method

.method public logwtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 211
    iget-boolean v0, p0, Landroid/secrecy/SecrecyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_0

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 215
    :cond_0
    const-string v0, "SecrecyLog"

    invoke-virtual {p0, p1, p2}, Landroid/secrecy/SecrecyManager;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method notifySecrecyStateChanged(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 402
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mSecrecyStateListener:Landroid/secrecy/SecrecyManager$SecrecyStateListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/secrecy/SecrecyManager;->mSecrecyStateListener:Landroid/secrecy/SecrecyManager$SecrecyStateListener;

    invoke-virtual {v0, p1, p2}, Landroid/secrecy/SecrecyManager$SecrecyStateListener;->onSecrecyStateChanged(IZ)V

    .line 405
    :cond_0
    return-void
.end method

.method public setSecrecyStateListener(Landroid/secrecy/SecrecyManager$SecrecyStateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/secrecy/SecrecyManager$SecrecyStateListener;

    .line 398
    iput-object p1, p0, Landroid/secrecy/SecrecyManager;->mSecrecyStateListener:Landroid/secrecy/SecrecyManager$SecrecyStateListener;

    .line 399
    return-void
.end method
