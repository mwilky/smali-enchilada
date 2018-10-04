.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;,
        Lcom/android/internal/app/ResolverComparator$AfterCompute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final RESOLVER_RANKER_RESULT_TIMEOUT:I = 0x1

.field private static final RESOLVER_RANKER_SERVICE_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

.field private mAnnotations:[Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurrentTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttp:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRanker:Landroid/service/resolver/IResolverRankerService;

.field private mRankerServiceName:Landroid/content/ComponentName;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolvedRankerName:Landroid/content/ComponentName;

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/app/ResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ResolverComparator$1;-><init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    iget-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-object p1
.end method

.method private addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 6

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    const v1, 0x402379a7    # 2.5543f

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    const v2, 0x4035d639

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    const v2, 0x3e89ba5e    # 0.269f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    const v2, 0x40871c43    # 4.2222f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const v0, 0x3fd41206    # 1.6568f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    return-void
.end method

.method private initRanker(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private logMetrics(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x43d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x43e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v3, 0x43f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1
    return-void
.end method

.method private predictSelectProbabilities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v0, "ResolverComparator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " predictSelectProbabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ResolverComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Predict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "ResolverComparator"

    const-string v2, "Error in Wait for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    :cond_3
    return-void
.end method

.method private reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->startWatchDog(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->initRanker(Landroid/content/Context;)V

    return-void
.end method

.method private resolveRankerService()Landroid/content/Intent;
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.resolver.ResolverRankerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not require permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - this service will not be queried for ResolverComparator. add android:permission=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" to the <service> tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in the manifest."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string v8, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not hold permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - this service will not be queried for ResolverComparator."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    nop

    iput-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0

    :catch_0
    move-exception v6

    const-string v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not look up service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; component name not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    return-void
.end method

.method private startWatchDog(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "ResolverComparator"

    const-string v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    iget v0, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x1

    if-eq v0, v4, :cond_2

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v0, :cond_4

    iget v0, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v0

    iget v4, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v4

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    return v3

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v4

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    return v3

    :cond_5
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    return v5

    :cond_6
    if-nez v0, :cond_8

    if-nez v4, :cond_8

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/resolver/ResolverTarget;

    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/resolver/ResolverTarget;

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    nop

    invoke-virtual {v7}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v8

    invoke-virtual {v6}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_8

    if-lez v8, :cond_7

    move v3, v5

    nop

    :cond_7
    return v3

    :cond_8
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method

.method public compute(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverComparator;->reset()V

    iget-wide v0, v6, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x2932e00

    sub-long v7, v0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v1, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v1}, Landroid/service/resolver/ResolverTarget;-><init>()V

    iget-object v2, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v6, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    nop

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    sub-long/2addr v13, v7

    move-object v15, v4

    const-wide/16 v3, 0x0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    cmpl-float v4, v3, v9

    if-lez v4, :cond_1

    move v9, v3

    goto :goto_1

    :cond_0
    move-object v15, v4

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    cmpl-float v4, v3, v10

    if-lez v4, :cond_2

    move v10, v3

    :cond_2
    iget v4, v2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    cmpl-float v5, v4, v11

    if-lez v5, :cond_3

    move v11, v4

    :cond_3
    const/4 v5, 0x0

    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v13, :cond_6

    iget-object v13, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    iget-object v13, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v0, 0x0

    move/from16 v17, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v14, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v3, v3

    move v13, v5

    move v5, v0

    :goto_2
    if-ge v5, v3, :cond_4

    iget-object v14, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v14, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v18, v2

    move/from16 v19, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v13, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_2

    :cond_4
    move-object/from16 v18, v2

    move v5, v13

    goto :goto_3

    :cond_5
    move-object/from16 v18, v2

    :goto_3
    goto :goto_4

    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v17, v3

    :goto_4
    invoke-virtual {v1, v5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    cmpl-float v0, v5, v12

    if-lez v0, :cond_8

    move v0, v5

    move v12, v0

    goto :goto_5

    :cond_7
    move-object v15, v4

    :cond_8
    :goto_5
    move-object v4, v15

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    div-float v15, v0, v9

    mul-float v0, v15, v15

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    div-float v3, v0, v11

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    div-float v4, v0, v10

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    div-float v5, v0, v12

    move-object v0, v6

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    invoke-direct {v6, v14}, Lcom/android/internal/app/ResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    goto :goto_6

    :cond_a
    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    :cond_1
    return-void
.end method

.method public getContentAnnotations(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.extra.CONTENT_ANNOTATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverComparator;->logMetrics(I)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v1}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ResolverComparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Train: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
