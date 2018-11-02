.class Lcom/android/server/am/EmbryoManager;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;,
        Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;,
        Lcom/android/server/am/EmbryoManager$UselessManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_ONEPLUS:Z

.field public static EMBRYO_CONFIG_NAME:Ljava/lang/String; = null

.field private static final ENABLE:Z

.field private static ENVIRONMENT:Z = false

.field private static final FLUSH_INTERVAL:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "EmbryoManager"

.field private static sHelper:Lcom/android/server/am/EmbryoHelper;

.field private static sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLastFlush:J

.field private mPm:Landroid/os/PowerManager;

.field private mShuttingDown:Z

.field private final mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mUterus:Lcom/android/server/am/Uterus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    const-string v0, "EmbryoConfig"

    sput-object v0, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/EmbryoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$1;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/EmbryoManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$2;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/am/Uterus;->getInstance()Lcom/android/server/am/Uterus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const-string v0, "EmbryoManager"

    const-string v1, "create Embryo Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/EmbryoManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/am/EmbryoManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/EmbryoManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/EmbryoManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IEmbryoManager;
    .locals 2

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/EmbryoHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoHelper;->initEnvironment()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    new-instance v0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>(Lcom/android/server/am/EmbryoManager$1;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method private static final isSupportType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "broadcast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    const-string v0, "EmbryoManager"

    const-string v1, "[OnlineConfig] embryo jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "embryo_blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {p0, v5}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    :cond_2
    goto/16 :goto_6

    :cond_3
    const-string v4, "embryo_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "persist.sys.embryo"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v6, v5, :cond_5

    const-string/jumbo v7, "persist.sys.embryo"

    if-eqz v6, :cond_4

    const-string v8, "1"

    goto :goto_2

    :cond_4
    const-string v8, "0"

    :goto_2
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo enable "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->hotSwitch(ZZ)V

    :cond_5
    goto/16 :goto_6

    :cond_6
    const-string v4, "embryo_inflate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "persist.sys.embryo.inflate"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v6, v5, :cond_8

    const-string/jumbo v7, "persist.sys.embryo.inflate"

    if-eqz v6, :cond_7

    const-string v8, "1"

    goto :goto_3

    :cond_7
    const-string v8, "0"

    :goto_3
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo inflate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    goto/16 :goto_6

    :cond_9
    const-string v4, "embryo_support_optheme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "persist.sys.embryo.optheme"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v6, v5, :cond_b

    const-string/jumbo v7, "persist.sys.embryo.optheme"

    if-eqz v6, :cond_a

    const-string v8, "1"

    goto :goto_4

    :cond_a
    const-string v8, "0"

    :goto_4
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo optheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    goto/16 :goto_6

    :cond_c
    const-string v4, "embryo_rename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "persist.sys.embryo.rename"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v6, v5, :cond_e

    const-string/jumbo v7, "persist.sys.embryo.rename"

    if-eqz v6, :cond_d

    const-string v8, "1"

    goto :goto_5

    :cond_d
    const-string v8, "0"

    :goto_5
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    goto :goto_6

    :cond_f
    const-string v4, "embryo_limit_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "persist.sys.embryo.limit"

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v6, :cond_10

    const-string/jumbo v7, "persist.sys.embryo.limit"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "EmbryoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]set embryo limit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v0, "EmbryoManager"

    const-string v1, "[OnlineConfig] Embryo updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method

.method private setupReceiver(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/Uterus;->resume(Ljava/lang/String;ZI)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Embryo attached, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->trim()V

    const/4 v0, 0x1

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    return v3

    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "EmbryoManager"

    const-string v3, "clean embryo process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v2}, Lcom/android/server/am/Uterus;->disableEmbryoTemporary()V

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "Enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->dumpsys(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EmbryoManager"

    const-string v2, "error while dumpsys "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/EmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public goingToSleep()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->goingToSleep()V

    return-void
.end method

.method initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;-><init>(Lcom/android/server/am/EmbryoManager;)V

    sget-object v4, Lcom/android/server/am/EmbryoManager;->EMBRYO_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mEmbryoConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    iput-object p2, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/am/EmbryoManager;->setupReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/server/am/EmbryoManager;->initOnlineConfig()V

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/Uterus;->setMDMTracker(Lnet/oneplus/odm/insight/tracker/OSTracker;)V

    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "initiate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/Uterus;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/android/server/am/EmbryoManager;->isSupportType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip obtain for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "sys.embryo.block"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "EmbryoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable embryo by property:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return-object v0

    :cond_5
    const-string v2, "activity"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_7

    return-object v0

    :cond_7
    const/4 v3, 0x0

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v4

    if-nez v4, :cond_8

    monitor-exit v2

    return-object v0

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->match(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->updateInfo(Landroid/content/pm/ApplicationInfo;)V

    const-string v5, "EmbryoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not matched. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->destroy()V

    monitor-exit v2

    return-object v0

    :cond_9
    const-string v0, "EmbryoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Embryo claimed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v3, v0

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/am/Uterus;->addClaimRecord(Ljava/lang/String;II)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, v2}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_1
    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setSelfUpdate()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageInstalled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip gen for pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/EmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EmbryoHelper;->checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/EmbryoHelper;->isValidUserId(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip prepare for pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/EmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->setBlackList(Ljava/util/List;)V

    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "update list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->shutdown()V

    return-void
.end method

.method public updateConfig()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->updateConfig()V

    const-string v0, "EmbryoManager"

    const-string/jumbo v1, "update config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wakingUp()V
    .locals 0

    return-void
.end method
