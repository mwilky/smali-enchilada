.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "intercept"

.field private static mDisabled:Z

.field private static mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getHandlers()Ljava/util/LinkedList;
    .locals 2

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    :cond_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v4

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v4

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUrlInterceptDisabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized urlInterceptDisabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
