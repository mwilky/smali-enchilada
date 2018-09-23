.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "Exception occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "IllegalArgumentException occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "IOException occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    :cond_0
    move-object v3, v6

    :cond_1
    goto :goto_0

    :cond_2
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected getQueryLocationTimeout()J
    .locals 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
