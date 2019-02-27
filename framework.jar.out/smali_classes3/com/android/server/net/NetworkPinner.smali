.class public Lcom/android/server/net/NetworkPinner;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPinner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCM:Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field protected static final sLock:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static sNetwork:Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/net/NetworkPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/net/NetworkPinner$Callback;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static maybeInitConnectivityManager(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad luck, ConnectivityService not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V
    .locals 5

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/server/net/NetworkPinner;->maybeInitConnectivityManager(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/net/NetworkPinner$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/net/NetworkPinner$Callback;-><init>(Lcom/android/server/net/NetworkPinner$1;)V

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v1, p1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string v4, "Failed to register network callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static unpin()V
    .locals 5

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    sget-object v2, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string v4, "Failed to unregister network callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
