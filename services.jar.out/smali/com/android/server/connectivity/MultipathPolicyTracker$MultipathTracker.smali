.class Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipathTracker"
.end annotation


# instance fields
.field private mMultipathBudget:J

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mQuota:J

.field private final mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field final network:Landroid/net/Network;

.field final subId:I

.field final subscriberId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 12

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    nop

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    invoke-virtual {v2}, Landroid/net/StringNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    new-instance v3, Landroid/net/NetworkTemplate;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "Can\'t get TelephonyManager for subId %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Missing TelephonyManager"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "Can\'t get subId from mobile network %s (%s): %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide p1
.end method

.method private getDailyNonDefaultDataUsage()J
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getNetworkTotalBytes(JJ)J
    .locals 7

    :try_start_0
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/net/NetworkStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get data usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getRemainingDailyBudget(JLandroid/util/Range;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    const-wide/16 v8, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    sub-long v10, p1, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_0
    move-wide v7, v8

    iget-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v9}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    sub-long v10, v3, v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    div-long/2addr v10, v14

    add-long/2addr v10, v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    div-long v12, v7, v12

    return-wide v12
.end method

.method private getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;
    .locals 9

    new-instance v8, Landroid/net/NetworkIdentity;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v8
.end method

.method private getUserPolicyOpportunisticQuotaBytes()J
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    iget-object v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v4}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$500(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, -0x1

    if-ge v6, v5, :cond_2

    aget-object v9, v4, v6

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$600(Landroid/net/NetworkPolicy;J)J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-nez v14, :cond_0

    invoke-static {v9, v10, v11}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$700(Landroid/net/NetworkPolicy;J)J

    move-result-wide v14

    goto :goto_1

    :cond_0
    move-wide v14, v12

    :goto_1
    cmp-long v16, v14, v7

    if-eqz v16, :cond_1

    cmp-long v7, v14, v7

    if-eqz v7, :cond_1

    nop

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    invoke-direct {v0, v14, v15, v7}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getRemainingDailyBudget(JLandroid/util/Range;)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-nez v5, :cond_3

    return-wide v7

    :cond_3
    const-wide/16 v5, 0x14

    div-long v5, v1, v5

    return-wide v5
.end method

.method private haveMultipathBudget()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUnregisterUsageCallback()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    :cond_0
    return-void
.end method

.method private registerUsageCallback(J)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-object v6, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object v7

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;IJLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-void
.end method


# virtual methods
.method public getMultipathBudget()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide v0
.end method

.method public getMultipathPreference()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    return-wide v0
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method shutdown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    return-void
.end method

.method updateMultipathBudget()V
    .locals 8

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getUserPolicyOpportunisticQuotaBytes()J

    move-result-wide v0

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v4}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$800(Lcom/android/server/connectivity/MultipathPolicyTracker;)J

    move-result-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getDailyNonDefaultDataUsage()J

    move-result-wide v4

    cmp-long v2, v4, v2

    const-wide/16 v6, 0x0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sub-long v2, v0, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_0
    move-wide v2, v6

    sget-wide v6, Landroid/app/usage/NetworkStatsManager;->MIN_THRESHOLD_BYTES:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->registerUsageCallback(J)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    :goto_1
    return-void
.end method
