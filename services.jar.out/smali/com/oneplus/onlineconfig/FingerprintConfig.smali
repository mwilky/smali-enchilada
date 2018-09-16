.class public Lcom/oneplus/onlineconfig/FingerprintConfig;
.super Ljava/lang/Object;
.source "FingerprintConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;,
        Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final ALLOW_FINGERPRINT_LIST:Ljava/lang/String; = "fpAllowList"

.field private static final FAR_FARR_NAME:Ljava/lang/String; = "farfrr"

.field private static final FINGERPRINT_CONFIG:Ljava/lang/String; = "fingerprintConfig"

.field private static final TAG:Ljava/lang/String; = "FingerprintConfig"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mAllowFpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGetWhiteListFail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mGetWhiteListFail:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/FingerprintConfig;->initAllowList()V

    .line 40
    new-instance v0, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/FingerprintConfig;Lcom/oneplus/onlineconfig/FingerprintConfig$1;)V

    .line 41
    .local v0, "updater":Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "fingerprintConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    .line 44
    .local v1, "observer":Lcom/oneplus/config/ConfigObserver;
    :try_start_0
    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 45
    const-string v2, "FingerprintConfig"

    const-string v3, "Register online config observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "FingerprintConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register online config fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mGetWhiteListFail:Z

    if-eqz v2, :cond_0

    .line 53
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/onlineconfig/FingerprintConfig$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig$1;-><init>(Lcom/oneplus/onlineconfig/FingerprintConfig;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .end local v0    # "updater":Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    .end local v1    # "observer":Lcom/oneplus/config/ConfigObserver;
    :cond_0
    return-void
.end method

.method private handleAllowFingerprintList(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 135
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 136
    .local v0, "list":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 138
    const/4 v2, 0x0

    .line 138
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    const-string v1, "FingerprintConfig"

    const-string v2, "[OnlineConfig] Fp allow list changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    .end local v0    # "list":Lorg/json/JSONArray;
    goto :goto_1

    .line 141
    .restart local v0    # "list":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .end local v0    # "list":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private handleFarFrrChange(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 111
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "level":I
    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$qe6kE4xKIugQobUsql1LV4y_8Yg;

    invoke-direct {v2, v0}, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$qe6kE4xKIugQobUsql1LV4y_8Yg;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/onlineconfig/FingerprintConfig;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 113
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] farfrr level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "level":I
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private initAllowList()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "CtsVerifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method static synthetic lambda$handleFarFrrChange$0(ILcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "cb"    # Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;

    .line 112
    invoke-interface {p1, p0}, Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;->onFARFRRChanged(I)V

    return-void
.end method

.method private safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 157
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 158
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;

    .line 149
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x47

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    return v0

    .line 188
    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    return v0

    .line 192
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    return v0

    .line 192
    .end local v3    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v0, "FingerprintConfig"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 81
    .local v1, "index":I
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 82
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "name":Ljava/lang/String;
    const-string v5, "farfrr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-direct {p0, v3}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handleFarFrrChange(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 86
    :cond_1
    const-string v5, "fpAllowList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-direct {p0, v3}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handleAllowFingerprintList(Lorg/json/JSONObject;)V

    .line 81
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "index":I
    :cond_3
    iput-boolean v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mGetWhiteListFail:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteList error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-boolean v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mGetWhiteListFail:Z

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mGetWhiteListFail:Z

    .line 97
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 99
    :goto_3
    return-void
.end method
