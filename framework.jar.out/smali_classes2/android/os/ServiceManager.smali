.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetServiceAccumulatedCallCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sGetServiceAccumulatedUs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogActualTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastStatsLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sServiceManager:Landroid/os/IServiceManager;

.field public static final sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in checkService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_0

    :cond_0
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    :goto_0
    sget-object v11, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v0, v6

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v14, v6

    cmp-long v0, v14, v9

    const-wide/16 v14, 0x1388

    if-ltz v0, :cond_2

    :try_start_1
    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long v16, v16, v14

    cmp-long v0, v12, v16

    if-gtz v0, :cond_1

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    int-to-long v14, v6

    cmp-long v0, v16, v14

    if-gez v0, :cond_2

    :cond_1
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    sput-wide v12, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    int-to-long v14, v6

    sput-wide v14, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v18, v6

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_2
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    :goto_2
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v14, v0, :cond_4

    sget-wide v14, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    const-wide/16 v16, 0x1388

    add-long v14, v14, v16

    cmp-long v14, v12, v14

    if-ltz v14, :cond_4

    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sget v15, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v15, v15, 0x3e8

    sget-wide v16, Landroid/os/ServiceManager;->sLastStatsLogUptime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v6

    sub-long v5, v12, v16

    long-to-int v5, v5

    :try_start_3
    invoke-static {v14, v15, v5}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    const/4 v5, 0x0

    sput v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sput v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    sput-wide v12, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    goto :goto_3

    :cond_4
    move/from16 v18, v6

    :goto_3
    monitor-exit v11

    return-object v4

    :catchall_1
    move-exception v0

    move/from16 v18, v6

    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method
