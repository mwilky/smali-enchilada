.class public Lcom/oneplus/settings/OPOnlineConfigManager;
.super Ljava/lang/Object;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static localMultiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static final multiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;


# instance fields
.field private CONFIG_NAME:Ljava/lang/String;

.field final MSG_GET_ONLINECONFIG:I

.field private OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

.field private mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ROM_APP_OPSettings"

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    const-string v0, "op_multiapp_white_list_p"

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->MSG_GET_ONLINECONFIG:I

    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/settings/OPOnlineConfigManager$1;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPOnlineConfigManager$1;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPOnlineConfigManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->parseConfigFromJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;
    .locals 2

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMultiAppWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseConfigFromJson(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPPrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings parseConfigFromJson jsonArray is null,use old json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings parseConfigFromJson JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "settings parseConfigFromJson jsonArray is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings parseConfigFromJson jsonArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v5, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings parseConfigFromJson Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings parseConfigFromJson JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    nop

    :goto_5
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
