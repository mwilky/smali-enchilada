.class public Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROPERTY_KEY_ENABLE_GA:Ljava/lang/String; = "persist.op.ga"

.field private static final SYSTEM_PROPERTY_KEY_IS_BETA_ROM:Ljava/lang/String; = "ro.build.beta"

.field private static TAG:Ljava/lang/String;

.field private static mIsOnlineConfigEnabled:Z

.field private static mTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private static sContext:Landroid/content/Context;

.field private static sGetConfigFail:Z

.field private static sInit:Z

.field private static sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPLongshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->getOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    return-object v0
.end method

.method private static getOnlineConfig(Lorg/json/JSONArray;)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GA online config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstance sInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isBetaRom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isPrivacyEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-direct {v4}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;-><init>()V

    sput-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v5

    sget-object v6, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v5, v6}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    const-string v5, "UA-92966593-4"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    sput-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    sput-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get GA online config error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get GA online config error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    :goto_2
    goto :goto_3

    :cond_4
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "jsonArray is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    :goto_3
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    sput-object p0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->registerGAOnlineConfigObserver(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static isBetaRom()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ro.build.beta"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.op.ga"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private static isPrivacyEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_join_user_plan_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private static registerGAOnlineConfigObserver(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;-><init>(Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;)V

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "OPSystemUIGAConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    :try_start_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
