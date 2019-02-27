.class public final Landroid/app/StatsManager;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatsManager$StatsUnavailableException;,
        Landroid/app/StatsManager$StatsdDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_STATSD_STARTED:Ljava/lang/String; = "android.app.action.STATSD_STARTED"

.field private static final DEBUG:Z = false

.field public static final EXTRA_STATS_BROADCAST_SUBSCRIBER_COOKIES:Ljava/lang/String; = "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

.field public static final EXTRA_STATS_CONFIG_KEY:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_KEY"

.field public static final EXTRA_STATS_CONFIG_UID:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_UID"

.field public static final EXTRA_STATS_DIMENSIONS_VALUE:Ljava/lang/String; = "android.app.extra.STATS_DIMENSIONS_VALUE"

.field public static final EXTRA_STATS_SUBSCRIPTION_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_ID"

.field public static final EXTRA_STATS_SUBSCRIPTION_RULE_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

.field private static final TAG:Ljava/lang/String; = "StatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Landroid/app/StatsManager;Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0

    iput-object p1, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object p1
.end method

.method private getIStatsManagerLocked()Landroid/os/IStatsManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/app/StatsManager$StatsdDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/StatsManager$StatsdDeathRecipient;-><init>(Landroid/app/StatsManager;Landroid/app/StatsManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect when linkToDeath"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v1, "could not be found"

    invoke-direct {v0, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConfig(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/os/IStatsManager;->addConfiguration(J[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when adding configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addConfiguration(J[B)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/StatsManager;->addConfig(J[B)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getData(J)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->getReports(J)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getMetadata()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/StatsManager;->getStatsMetadata()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getReports(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IStatsManager;->getData(JLjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when getting data"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getStatsMetadata()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IStatsManager;->getMetadata(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when getting metadata"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeConfig(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IStatsManager;->removeConfiguration(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when removing configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeConfiguration(J)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->removeConfig(J)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p2

    move-wide v3, p4

    invoke-interface/range {v0 .. v6}, Landroid/os/IStatsManager;->setBroadcastSubscriber(JJLandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IStatsManager;->unsetBroadcastSubscriber(JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    nop

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when adding broadcast subscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBroadcastSubscriber(JJLandroid/app/PendingIntent;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move-wide v2, p1

    move-wide v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setDataFetchOperation(JLandroid/app/PendingIntent;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/app/StatsManager;->setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Landroid/os/IStatsManager;->removeDataFetchOperation(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, p3, v1, v2}, Landroid/os/IStatsManager;->setDataFetchOperation(JLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    nop

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when registering data listener."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
