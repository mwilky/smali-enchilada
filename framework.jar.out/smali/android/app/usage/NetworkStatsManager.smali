.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStatsManager$CallbackHandler;,
        Landroid/app/usage/NetworkStatsManager$UsageCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_LIMIT_REACHED:I = 0x0

.field public static final CALLBACK_RELEASED:I = 0x1

.field private static final DBG:Z = false

.field public static final FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN:I = 0x4

.field public static final FLAG_POLL_FORCE:I = 0x2

.field public static final FLAG_POLL_ON_OPEN:I = 0x1

.field public static final MIN_THRESHOLD_BYTES:J

.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/usage/NetworkStatsManager;->MIN_THRESHOLD_BYTES:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/usage/NetworkStatsManager;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create template for network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subscriberId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    if-nez p1, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_0
    nop

    :goto_1
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v3, v1, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, v1, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v10, v1, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v2, v0

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-static/range {p1 .. p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    :try_start_0
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v6, v1, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v8, v1, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v13, v1, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v5, v0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v5 .. v13}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-object v0

    :catch_0
    move-exception v0

    const-string v5, "NetworkStatsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while querying stats for uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " tag="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v3, v1, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, v1, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v10, v1, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v2, v0

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    new-instance v11, Landroid/app/usage/NetworkStats;

    iget-object v3, v0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, v0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v10, v0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v2, v11

    move-object v4, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v10}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v1

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats;->close()V

    return-object v1
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v3, v1, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, v1, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v10, v1, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v2, v0

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .locals 8

    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move v2, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;IJLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerUsageCallback(Landroid/net/NetworkTemplate;IJLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .locals 7

    const-string v0, "UsageCallback cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p6, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/net/DataUsageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p3, p4}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    :try_start_0
    new-instance v2, Landroid/app/usage/NetworkStatsManager$CallbackHandler;

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3, p5}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;-><init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    iget-object v4, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    invoke-interface {v3, v4, v1, v5, v6}, Landroid/net/INetworkStatsService;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v3

    invoke-static {p5, v3}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$002(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    invoke-static {p5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "NetworkStatsManager"

    const-string v4, "Request from callback is null; should not happen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setAugmentWithSubscriptionPlan(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    :goto_0
    return-void
.end method

.method public setPollForce(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    :goto_0
    return-void
.end method

.method public setPollOnOpen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    :goto_0
    return-void
.end method

.method public unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v0

    iget v0, v0, Landroid/net/DataUsageRequest;->requestId:I

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UsageCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
