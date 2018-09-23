.class public Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;,
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x3

.field private static final CALLBACK_TRACK_DEFAULT:I = 0x2

.field private static final DBG:Z = false

.field public static final EVENT_ON_AVAILABLE:I = 0x1

.field public static final EVENT_ON_CAPABILITIES:I = 0x2

.field public static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field public static final EVENT_ON_LOST:I = 0x4

.field public static final NOTIFY_LOCAL_PREFIXES:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultInternetNetwork:Landroid/net/Network;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDunRequired:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mLocalPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lcom/android/internal/util/StateMachine;

.field private mTetheringUpstreamNetwork:Landroid/net/Network;

.field private final mWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    iput p4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(ILandroid/net/Network;)V

    return-void
.end method

.method private static allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    iget-object v3, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cm()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$1;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v2, v6, :cond_1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3

    :cond_0
    :goto_2
    iget-object v6, v5, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v2, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    iput-object v5, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_1
    nop

    goto :goto_1

    :goto_3
    nop

    sget-object v7, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v8, "Null pointer exception in getActiveNetworkInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No NetworkCapabilities mapping for legacy type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private handleAvailable(ILandroid/net/Network;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v8, Landroid/net/NetworkState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_2

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    goto :goto_0

    :pswitch_2
    nop

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handleLost(ILandroid/net/Network;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "upstream network signal strength: %s -> %s"

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/net/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v10, Landroid/net/NetworkState;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private handleResumed(ILandroid/net/Network;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESUMED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private handleSuspended(ILandroid/net/Network;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSPENDED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private notifyTarget(ILandroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    return-void
.end method

.method private notifyTarget(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private recomputeLocalPrefixes()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocalPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public mobileNetworkRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerMobileNetworkRequest()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() already registered"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting mobile upstream network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    move-object v2, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    return-void
.end method

.method public releaseMobileNetworkRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred upstream type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    invoke-static {v3}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentUpstream(Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    return-void
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public updateMobileRequiresDun(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mobileNetworkRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    :cond_1
    return-void
.end method
