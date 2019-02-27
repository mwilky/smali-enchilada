.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sGetInstanceAllowed:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sRef:Landroid/webkit/CookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static checkInstanceIsAllowed()V
    .locals 2

    sget-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .locals 3

    sget-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Landroid/webkit/CookieSyncManager;
    .locals 2

    sget-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->checkInstanceIsAllowed()V

    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/webkit/CookieSyncManager;

    invoke-direct {v1}, Landroid/webkit/CookieSyncManager;-><init>()V

    sput-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    :cond_0
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setGetInstanceIsAllowed()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    return-void
.end method


# virtual methods
.method public resetSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public startSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stopSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public sync()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method
