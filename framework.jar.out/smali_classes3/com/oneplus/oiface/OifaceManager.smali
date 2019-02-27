.class public Lcom/oneplus/oiface/OifaceManager;
.super Ljava/lang/Object;
.source "OifaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/oiface/OifaceManager$OifaceHandler;,
        Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "oiface"

.field public static DEBUG:Z = false

.field private static ENABLE:Z = false

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_SEND_ONLINECONFIG:I = 0x2

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.oiface.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.oiface.enable"

.field private static final TAG:Ljava/lang/String; = "OifaceManager"

.field private static mOifaceManager:Lcom/oneplus/oiface/OifaceManager; = null

.field private static mService:Lcom/oneplus/oiface/IOIfaceService; = null

.field private static final version:Ljava/lang/String; = "1.0"


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/oiface/CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOifaceConfigSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

.field private mOifaceThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 52
    sput-object v0, Lcom/oneplus/oiface/OifaceManager;->mOifaceManager:Lcom/oneplus/oiface/OifaceManager;

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    .line 55
    sput-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceThread:Landroid/os/HandlerThread;

    .line 64
    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    .line 66
    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 67
    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    .line 72
    const-string v1, "persist.sys.oiface.enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    sput-boolean v2, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    .line 73
    const-string v1, "persist.sys.oiface.debug"

    sget-boolean v2, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    .line 75
    const-string v1, "oiface"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/oiface/IOIfaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/oiface/IOIfaceService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 76
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OifaceManager new  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v1, :cond_1

    .line 79
    :try_start_0
    sget-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    new-instance v2, Lcom/oneplus/oiface/OifaceManager$1;

    invoke-direct {v2, p0}, Lcom/oneplus/oiface/OifaceManager$1;-><init>(Lcom/oneplus/oiface/OifaceManager;)V

    invoke-interface {v1, v2}, Lcom/oneplus/oiface/IOIfaceService;->onSystemNotify(Lcom/oneplus/oiface/IOIfaceNotifier;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService onSystemNotify error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "OifaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOIfaceService onSystemNotify err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sput-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 93
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_0
    nop

    .line 95
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/oiface/OifaceManager;

    .line 47
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/oiface/OifaceManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/oiface/OifaceManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/oiface/OifaceManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/oiface/OifaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/oiface/OifaceManager;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/oiface/OifaceManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/oiface/OifaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/oiface/OifaceManager;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/oiface/OifaceManager;->sendOnlineConfig()V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 319
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    return-void
.end method

.method private formatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .line 294
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 300
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/oiface/OifaceManager;
    .locals 2

    .line 98
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/oneplus/oiface/OifaceManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/oneplus/oiface/OifaceManager;

    invoke-direct {v1}, Lcom/oneplus/oiface/OifaceManager;-><init>()V

    sput-object v1, Lcom/oneplus/oiface/OifaceManager;->mOifaceManager:Lcom/oneplus/oiface/OifaceManager;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mOifaceManager:Lcom/oneplus/oiface/OifaceManager;

    return-object v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 109
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    return v0
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 13
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 251
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    if-nez p1, :cond_1

    .line 253
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 257
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 258
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 259
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "perflock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 261
    .local v3, "pkgInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 262
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 263
    .local v5, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string v6, "pkg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "pkgName":Ljava/lang/String;
    const-string v7, "scene"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "scene":Ljava/lang/String;
    const-string v8, "param"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "param":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v8}, Lcom/oneplus/oiface/OifaceManager;->formatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "info":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 268
    iget-object v10, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    monitor-enter v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :try_start_1
    iget-object v11, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 272
    :cond_2
    :goto_2
    sget-boolean v10, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "OifaceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] add info: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v5    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "scene":Ljava/lang/String;
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "info":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    .end local v3    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "enableStr":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    .line 278
    const-string v4, "persist.sys.oiface.enable"

    invoke-direct {p0, v4, v3}, Lcom/oneplus/oiface/OifaceManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-boolean v4, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "OifaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] oiface # enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "enableStr":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 282
    .end local v1    # "index":I
    :cond_6
    const-string v0, "OifaceManager"

    const-string v1, "[OnlineConfig] oiface updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] oiface Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 285
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] oiface JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    nop

    .line 290
    :goto_4
    return-void
.end method

.method private sendOnlineConfig()V
    .locals 3

    .line 215
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    const-string v1, "sendOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceConfigSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/oiface/OifaceManager;->applyHardwareResource(Ljava/lang/String;)Z

    goto :goto_0

    .line 220
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 304
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "curValue":Ljava/lang/String;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    return-void

    .line 311
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OifaceManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateOnlineConfig()V
    .locals 3

    .line 224
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    const-string v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mContext:Landroid/content/Context;

    const-string v2, "oiface"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/oiface/OifaceManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 227
    return-void
.end method


# virtual methods
.method public applyHardwareResource(Ljava/lang/String;)Z
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-interface {v0, p1}, Lcom/oneplus/oiface/IOIfaceService;->applyHardwareResource(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current package error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService currentPackage err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 134
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_0
    nop

    .line 135
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public currentPackage(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 163
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/oiface/IOIfaceService;->currentPackage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 163
    :cond_1
    :goto_1
    return-void
.end method

.method public getOifaceversion()Ljava/lang/String;
    .locals 5

    .line 139
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-interface {v2}, Lcom/oneplus/oiface/IOIfaceService;->getOifaceversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OifaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current package error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "OifaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOIfaceService getOifaceversion err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sput-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 147
    .end local v0    # "e":Landroid/os/DeadObjectException;
    nop

    .line 148
    :goto_0
    return-object v1

    .line 139
    :cond_1
    :goto_1
    return-object v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "oiface_config"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceThread:Landroid/os/HandlerThread;

    .line 176
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    new-instance v0, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;-><init>(Lcom/oneplus/oiface/OifaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/oneplus/oiface/OifaceManager;->mContext:Landroid/content/Context;

    .line 181
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    new-instance v3, Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;-><init>(Lcom/oneplus/oiface/OifaceManager;)V

    const-string v4, "oiface"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 182
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 183
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    iget-object v1, p0, Lcom/oneplus/oiface/OifaceManager;->mOifaceHandler:Lcom/oneplus/oiface/OifaceManager$OifaceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return-void
.end method

.method public systemStatus(Lcom/oneplus/oiface/CallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/oneplus/oiface/CallBack;

    .line 153
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/oiface/OifaceManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 156
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-interface {v0}, Lcom/oneplus/oiface/IOIfaceService;->onAppRegister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 153
    :cond_1
    :goto_1
    return-void
.end method

.method public updateGameInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    invoke-interface {v0, p1}, Lcom/oneplus/oiface/IOIfaceService;->updateGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current package error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "OifaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService currentPackage err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/oiface/OifaceManager;->mService:Lcom/oneplus/oiface/IOIfaceService;

    .line 121
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_0
    nop

    .line 122
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return v0
.end method
