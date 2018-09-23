.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final DEFAULT_MIN_INTERVAL_MS:J = 0x1b7740L

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mEffectiveMinIntervalMs:J

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "GeofenceManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateMinInterval()V

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/GeofenceManager$1;

    iget-object v5, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/location/GeofenceManager$1;-><init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateMinInterval()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GeofenceState;

    iget-wide v4, v3, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntentEnter: pendingIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntentExit: pendingIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private updateFences()V
    .locals 21

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v5

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/GeofenceState;

    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-boolean v11, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v11, :cond_0

    const-string v11, "GeofenceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skipping geofence processing for blacklisted app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v12, v10, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    invoke-static {v12}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v12

    if-ltz v12, :cond_2

    iget-object v13, v1, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v14, v10, Lcom/android/server/location/GeofenceState;->mUid:I

    iget-object v15, v10, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v11, v14, v15}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v11, :cond_0

    const-string v11, "GeofenceManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "skipping geofence processing for no op app: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v10, v5}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v11

    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_3

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v13, v11, 0x2

    if-eqz v13, :cond_4

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v10}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v13

    cmpg-double v15, v13, v6

    if-gez v15, :cond_5

    move-wide v6, v13

    :cond_5
    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_a

    if-eqz v5, :cond_7

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_7

    const-wide v12, 0x415b774000000000L    # 7200000.0

    iget-wide v14, v1, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v9, v16, v18

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-long v9, v9

    goto :goto_1

    :cond_7
    iget-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    :goto_1
    iget-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_8

    iget-wide v12, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    cmp-long v0, v12, v9

    if-eqz v0, :cond_9

    :cond_8
    iput-boolean v11, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    iput-object v5, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v0, v9, v10}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    iget-object v11, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v12}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v0, v1, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_9
    goto :goto_2

    :cond_a
    iget-boolean v9, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v9, :cond_b

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_b
    :goto_2
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_c

    const-string v0, "GeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFences: location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", mFences.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mReceivingLocationUpdates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mLocationUpdateInterval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mLastLocationUpdate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    goto :goto_4

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateMinInterval()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFence: request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", geofence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    move/from16 v13, p5

    move-object/from16 v14, p6

    :goto_0
    new-instance v0, Lcom/android/server/location/GeofenceState;

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v4

    move-object v2, v0

    move-object v3, v10

    move/from16 v6, p4

    move v7, v13

    move-object v8, v14

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, v1, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v4, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GeofenceState;

    iget-object v5, v4, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v10, v5}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v5}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v1}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  Geofences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFence: fence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v3}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFence: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
