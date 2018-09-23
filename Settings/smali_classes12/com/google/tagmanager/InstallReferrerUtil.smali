.class Lcom/google/tagmanager/InstallReferrerUtil;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# static fields
.field static final INTENT_EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_KEY_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_NAME_CLICK_REFERRERS:Ljava/lang/String; = "gtm_click_referrers"

.field static final PREF_NAME_INSTALL_REFERRER:Ljava/lang/String; = "gtm_install_referrer"

.field static clickReferrers:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static installReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "conv"

    invoke-static {p1, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gtm_click_referrers"

    invoke-static {p0, v1, v0, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static cacheInstallReferrer(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://hostname/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getClickReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "gtm_click_referrers"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0, p2}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-nez v0, :cond_2

    const-class v0, Lcom/google/tagmanager/InstallReferrerUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "gtm_install_referrer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "referrer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    sput-object v2, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static saveInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "gtm_install_referrer"

    const-string v1, "referrer"

    invoke-static {p0, v0, v1, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
