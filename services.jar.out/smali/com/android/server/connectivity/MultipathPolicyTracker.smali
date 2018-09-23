.class public Lcom/android/server/connectivity/MultipathPolicyTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final OPQUOTA_USER_SETTING_DIVIDER:I = 0x14

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mClock:Ljava/time/Clock;

.field private final mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mNPM:Landroid/net/NetworkPolicyManager;

.field private mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

.field private final mResolver:Landroid/content/ContentResolver;

.field final mSettingsObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;->getClock()Ljava/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Lcom/android/server/connectivity/MultipathPolicyTracker$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->updateAllMultipathBudgets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/NetworkPolicy;J)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveWarning(Landroid/net/NetworkPolicy;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/net/NetworkPolicy;J)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveLimit(Landroid/net/NetworkPolicy;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/MultipathPolicyTracker;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getDefaultDailyMultipathQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getActiveLimit(Landroid/net/NetworkPolicy;J)J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static getActiveWarning(Landroid/net/NetworkPolicy;J)J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private getDefaultDailyMultipathQuotaBytes()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private maybeUnregisterTrackMobileCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private registerNetworkPolicyListener()V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    return-void
.end method

.method private registerTrackMobileCallback()V
    .locals 4

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private unregisterNetworkPolicyListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    return-void
.end method

.method private updateAllMultipathBudgets()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8

    const-string v0, "MultipathPolicyTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    const-string v2, "Network %s: quota %d, budget %d. Preference: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getQuota()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathBudget()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/net/ConnectivityManager;

    const-string v6, "MULTIPATH_PREFERENCE_"

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public shutdown()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->maybeUnregisterTrackMobileCallback()V

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->unregisterNetworkPolicyListener()V

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public start()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerTrackMobileCallback()V

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerNetworkPolicyListener()V

    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
