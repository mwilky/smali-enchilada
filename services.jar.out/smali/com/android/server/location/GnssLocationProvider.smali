.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;
.implements Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;,
        Lcom/android/server/location/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderXtraDownload"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_XTRA_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ENABLE:I = 0x2

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_PROPERTIES_FILE:Ljava/lang/String; = "/vendor/etc/gps.conf"

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x0L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"

.field private static needMSACheck:Z


# instance fields
.field isSupportGpsNotification:Z

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private final mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private final mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mNetworkToConnectionType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field mStopGps:Z

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private final mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 118
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 119
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 121
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 2845
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2846
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 320
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 348
    new-instance v1, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 361
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 370
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 373
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 388
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 390
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 397
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 400
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 402
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 412
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 415
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 419
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v3}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    .line 424
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 425
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 458
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    .line 465
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->isSupportGpsNotification:Z

    .line 475
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 480
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 488
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 493
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 524
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 551
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 565
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 655
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    .line 2254
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$16;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$16;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2842
    const/16 v3, 0x78

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 802
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 803
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 806
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 807
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 808
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 811
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderXtraDownload"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 813
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 815
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 816
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 817
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 819
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 822
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 825
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 829
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 836
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 837
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 840
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 844
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 856
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 863
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 869
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 872
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 873
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.gpsnotification.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->isSupportGpsNotification:Z

    .line 876
    new-instance v0, Lcom/android/server/location/NtpTimeHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    .line 877
    new-instance v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    .line 879
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v2, v1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    new-instance v0, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 881
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {v0, p3}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    .line 882
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GnssLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gps_lock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_emergency_supl_pdn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gnss_pos_protocol_select(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_lpp_profile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_es(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_mode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$2000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_version(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/location/GnssLocationProvider;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/gnssmetrics/GnssMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GnssLocationProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/net/Network;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GnssLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()V
    .locals 0

    .line 113
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/Properties;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic access$5700()Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 113
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 1

    .line 2742
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2750
    const-string v0, "<Unknown>"

    return-object v0

    .line 2746
    :pswitch_0
    const-string v0, "OPEN"

    return-object v0

    .line 2748
    :pswitch_1
    const-string v0, "OPENING"

    return-object v0

    .line 2744
    :pswitch_2
    const-string v0, "CLOSED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "agpsDataConnStatus"    # I

    .line 2758
    packed-switch p1, :pswitch_data_0

    .line 2770
    const-string v0, "<Unknown>"

    return-object v0

    .line 2764
    :pswitch_0
    const-string v0, "FAILED"

    return-object v0

    .line 2762
    :pswitch_1
    const-string v0, "DONE"

    return-object v0

    .line 2760
    :pswitch_2
    const-string v0, "CONNECTED"

    return-object v0

    .line 2766
    :pswitch_3
    const-string v0, "RELEASE"

    return-object v0

    .line 2768
    :pswitch_4
    const-string v0, "REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1566
    if-nez p1, :cond_0

    .line 1567
    const v0, 0xffff

    .line 1567
    .local v0, "flags":I
    goto/16 :goto_0

    .line 1569
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    .line 1570
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 1571
    :cond_1
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1572
    :cond_2
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 1573
    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    .line 1574
    :cond_4
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    .line 1575
    :cond_5
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x20

    .line 1576
    :cond_6
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    .line 1577
    :cond_7
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x80

    .line 1578
    :cond_8
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x100

    .line 1579
    :cond_9
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x200

    .line 1580
    :cond_a
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x400

    .line 1581
    :cond_b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1582
    :cond_c
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1585
    :cond_d
    :goto_0
    if-eqz v0, :cond_e

    .line 1586
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1590
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private ensureInHandlerThread()V
    .locals 2

    .line 2732
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2733
    return-void

    .line 2735
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .line 2640
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2641
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2642
    return v0

    .line 2645
    :cond_0
    const-string v1, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2648
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "protocol"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 2655
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2656
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    if-eqz v2, :cond_1

    .line 2664
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2656
    :cond_1
    return v3

    .line 2658
    :cond_2
    :try_start_1
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry found in query for APN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2663
    if-eqz v2, :cond_3

    .line 2664
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2663
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2660
    :catch_0
    move-exception v3

    .line 2661
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error encountered on APN query for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2663
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    goto :goto_0

    .line 2668
    :cond_3
    :goto_1
    return v0

    .line 2663
    :goto_2
    if-eqz v2, :cond_4

    .line 2664
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .line 2156
    const/16 v0, -0x95

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2170
    const/4 v0, -0x1

    return v0

    .line 2162
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2168
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2164
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 2166
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2158
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2160
    :cond_2
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .line 2614
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2615
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object v8, v7

    .line 2617
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "name ASC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 2623
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2624
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    if-eqz v8, :cond_0

    .line 2632
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2624
    :cond_0
    return-object v1

    .line 2626
    :cond_1
    :try_start_1
    const-string v1, "GnssLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    if-eqz v8, :cond_2

    .line 2632
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2631
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2628
    :catch_0
    move-exception v1

    .line 2629
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "GnssLocationProvider"

    const-string v3, "Error encountered on selecting the APN."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2631
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    goto :goto_0

    .line 2636
    :cond_2
    :goto_1
    return-object v7

    .line 2631
    :goto_2
    if-eqz v8, :cond_3

    .line 2632
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .line 1233
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1234
    const-string v1, "SUPL_MODE"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1236
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1238
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1242
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v3

    .line 1240
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return v0

    .line 1246
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 1247
    const/4 v0, 0x1

    return v0

    .line 1252
    :cond_1
    if-eqz p3, :cond_2

    const/4 v4, 0x4

    .line 1253
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_2

    .line 1255
    return v3

    .line 1258
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_2
    return v0
.end method

.method private handleDisable()V
    .locals 2

    .line 1304
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1307
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1308
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1309
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    .line 1313
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1315
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1316
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1317
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 3

    .line 1122
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_0

    .line 1124
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadXtraData() called when Xtra not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1127
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1129
    return-void

    .line 1131
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1134
    return-void

    .line 1136
    :cond_2
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1139
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1140
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$10;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1181
    return-void
.end method

.method private handleEnable()V
    .locals 4

    .line 1262
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1266
    .local v0, "enabled":Z
    if-eqz v0, :cond_3

    .line 1267
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1270
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1271
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1273
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1274
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1277
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1278
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1279
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    goto :goto_0

    .line 1281
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1282
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1283
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    const-string v1, "GnssLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_0
    return-void

    .line 1283
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleGpsRequest(Z)V
    .locals 3
    .param p1, "isRequest"    # Z

    .line 1688
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    if-nez v0, :cond_0

    .line 1689
    new-instance v0, Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusGpsNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    .line 1691
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    .local v0, "mCurrentGpsPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    invoke-virtual {v1, v0}, Lcom/android/server/OnePlusGpsNotification;->updateGpsRequstPackage(Ljava/util/ArrayList;)V

    .line 1696
    return-void
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 6
    .param p1, "agpsDataConnStatus"    # I

    .line 1010
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 1011
    const-string/jumbo v0, "releaseSuplConnection, state=%s, status=%s"

    new-array v3, v2, [Ljava/lang/Object;

    .line 1013
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1011
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v0, :cond_1

    .line 1019
    return-void

    .line 1021
    :cond_1
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1023
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1024
    if-eq p1, v2, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 1032
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    .line 1027
    goto :goto_0

    .line 1029
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    .line 1030
    nop

    .line 1034
    :goto_0
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .locals 5
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1721
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1722
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1725
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_3

    .line 1726
    const-string v0, "GnssLocationProvider"

    const-string v2, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2

    .line 1729
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1731
    :cond_2
    return-void

    .line 1734
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportLocation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1739
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0, p2, v1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    goto :goto_1

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocation"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_6

    .line 1748
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1749
    if-eqz p1, :cond_6

    .line 1750
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1751
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1753
    :cond_5
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_6

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 1755
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1760
    .end local v0    # "timeBetweenFixes":I
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1762
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    .line 1763
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1764
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTFF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_8

    .line 1766
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1770
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1773
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v0, :cond_a

    .line 1774
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1777
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 1781
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-ge v0, v3, :cond_b

    .line 1782
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1786
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1787
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1788
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1789
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1792
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 1794
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "GnssLocationProvider"

    const-string v1, "got fix, hibernating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_d
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1797
    :cond_e
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 1860
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    iget-object v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    iget-object v3, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget-object v4, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 1869
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI)V

    .line 1871
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1872
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_0
    const/4 v0, 0x0

    .line 1876
    .local v0, "usedInFixCount":I
    const/4 v1, 0x0

    .line 1877
    .local v1, "maxCn0":I
    const/4 v2, 0x0

    .line 1878
    .local v2, "meanCn0":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    move v0, v3

    .line 1878
    .local v0, "i":I
    .local v1, "usedInFixCount":I
    .local v2, "maxCn0":I
    .local v4, "meanCn0":I
    :goto_0
    iget v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v5, :cond_8

    .line 1879
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 1880
    add-int/lit8 v1, v1, 0x1

    .line 1881
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    int-to-float v8, v2

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 1882
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    float-to-int v2, v5

    .line 1884
    :cond_1
    int-to-float v5, v4

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v8, v8, v0

    add-float/2addr v5, v8

    float-to-int v4, v5

    .line 1886
    :cond_2
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_7

    .line 1887
    const-string v5, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cn0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " elev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " azimuth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " carrier frequency: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    and-int/2addr v7, v9

    if-nez v7, :cond_3

    .line 1893
    const-string v7, "  "

    goto :goto_1

    :cond_3
    const-string v7, " E"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    iget-object v7, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    .line 1895
    const-string v6, "  "

    goto :goto_2

    :cond_4
    const-string v6, " A"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    .line 1897
    const-string v6, ""

    goto :goto_3

    :cond_5
    const-string v6, "U"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_6

    .line 1900
    const-string v6, ""

    goto :goto_4

    :cond_6
    const-string v6, "F"

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1887
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v0    # "i":I
    :cond_8
    if-lez v1, :cond_9

    .line 1904
    div-int/2addr v4, v1

    .line 1907
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1909
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v0, v6, :cond_a

    iget-wide v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-lez v0, :cond_a

    .line 1910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0x2710

    cmp-long v0, v5, v8

    if-lez v0, :cond_a

    .line 1912
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1914
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1915
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1917
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a
    return-void
.end method

.method private handleRequestLocation(Z)V
    .locals 14
    .param p1, "independentFromGnss"    # Z

    .line 1037
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "GnssLocationProvider"

    const-string v1, "RequestLocation is denied due to too frequent requests."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1044
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "gnss_hal_location_request_duration_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1048
    .local v4, "durationMillis":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 1049
    const-string v1, "GnssLocationProvider"

    const-string v2, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void

    .line 1053
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1058
    .local v1, "locationManager":Landroid/location/LocationManager;
    if-eqz p1, :cond_3

    .line 1060
    const-string/jumbo v2, "network"

    .line 1061
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1061
    .local v3, "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    goto :goto_0

    .line 1064
    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :cond_3
    const-string v2, "fused"

    .line 1065
    .restart local v2    # "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1068
    .restart local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :goto_0
    const-string v6, "GnssLocationProvider"

    const-string v7, "GNSS HAL Requesting location updates from %s provider for %d millis."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 1071
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v8, v13

    .line 1069
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1068
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1075
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 1073
    move-object v6, v1

    move-object v7, v2

    move-object v11, v3

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1076
    iget v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    add-int/2addr v6, v13

    iput v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    .line 1077
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;

    invoke-direct {v7, v3, v2, v1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    goto :goto_1

    .line 1084
    :catch_0
    move-exception v6

    .line 1085
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "GnssLocationProvider"

    const-string v8, "Unable to request location."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .locals 5
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 986
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 987
    const-string/jumbo v0, "requestSuplConnection, state=%s, address=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 989
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    .line 987
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_1

    .line 995
    return-void

    .line 997
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 998
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1000
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1001
    .local v0, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1002
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1003
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1004
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1007
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1350
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1351
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1352
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1353
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .line 1184
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1186
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 1185
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1188
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .locals 19
    .param p1, "network"    # Landroid/net/Network;

    move-object/from16 v7, p0

    .line 908
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 910
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 911
    .local v1, "networkAvailable":Z
    const/4 v2, 0x0

    .line 912
    .local v2, "isConnected":Z
    const/4 v3, -0x1

    .line 913
    .local v3, "type":I
    const/4 v4, 0x0

    .line 914
    .local v4, "isRoaming":Z
    const/4 v5, 0x0

    .line 916
    .local v5, "apnName":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    move v1, v6

    .line 918
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 919
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 920
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    .line 921
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 924
    .end local v1    # "networkAvailable":Z
    .end local v2    # "isConnected":Z
    .end local v4    # "isRoaming":Z
    .end local v5    # "apnName":Ljava/lang/String;
    .local v11, "isConnected":Z
    .local v12, "isRoaming":Z
    .local v13, "networkAvailable":Z
    .local v14, "apnName":Ljava/lang/String;
    :cond_1
    move v13, v1

    move v11, v2

    move v12, v4

    move-object v14, v5

    if-eqz v11, :cond_3

    .line 925
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    .local v15, "type":I
    .local v16, "info":Landroid/net/NetworkInfo;
    :cond_2
    move-object/from16 v16, v0

    move v15, v3

    goto :goto_1

    .line 927
    .end local v15    # "type":I
    .end local v16    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "type":I
    :cond_3
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 928
    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 933
    .end local v3    # "type":I
    .local v1, "type":I
    move-object/from16 v16, v0

    move v15, v1

    .line 933
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "type":I
    .restart local v15    # "type":I
    .restart local v16    # "info":Landroid/net/NetworkInfo;
    :goto_1
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v6, 0x5

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    .line 934
    const-string v0, "UpdateNetworkState, type=%s, connected=%s, info=%s, capabilities=%S, network=%s"

    new-array v1, v6, [Ljava/lang/Object;

    .line 936
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 937
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    aput-object v16, v1, v5

    const/4 v2, 0x3

    iget-object v3, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 939
    invoke-virtual {v3, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    .line 934
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v0    # "message":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "defaultApn":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 947
    const-string v0, "dummy-apn"

    .line 950
    .end local v0    # "defaultApn":Ljava/lang/String;
    .local v17, "defaultApn":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v0

    move-object v0, v7

    move v1, v11

    move v2, v15

    move v3, v12

    move v4, v13

    move v9, v5

    move-object v5, v14

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 957
    .end local v17    # "defaultApn":Ljava/lang/String;
    goto :goto_2

    :cond_6
    move v9, v5

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 958
    const-string v0, "GnssLocationProvider"

    const-string v1, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_7
    :goto_2
    iget v0, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-ne v0, v10, :cond_b

    .line 962
    if-eqz v11, :cond_a

    .line 963
    if-nez v14, :cond_8

    .line 966
    const-string v14, "dummy-apn"

    .line 968
    :cond_8
    invoke-direct {v7, v14}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    .line 969
    .local v0, "apnIpType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 970
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 971
    const-string/jumbo v1, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    .line 974
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 971
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "message":Ljava/lang/String;
    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v1    # "message":Ljava/lang/String;
    :cond_9
    invoke-direct {v7, v14, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 978
    iput v9, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 979
    .end local v0    # "apnIpType":I
    goto :goto_3

    .line 980
    :cond_a
    const/4 v0, 0x5

    invoke-direct {v7, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    .line 983
    :cond_b
    :goto_3
    return-void
.end method

.method private hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 1709
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    .line 1701
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1702
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1703
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1705
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1706
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .locals 31
    .param p1, "location"    # Landroid/location/Location;

    .line 1090
    nop

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    or-int/2addr v0, v2

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    or-int/2addr v0, v2

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    or-int/2addr v0, v2

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    or-int/2addr v0, v2

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x40

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    or-int/2addr v0, v2

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0x80

    nop

    :cond_6
    or-int/2addr v0, v1

    .line 1099
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1100
    .local v18, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1101
    .local v20, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    .line 1102
    .local v22, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    .line 1103
    .local v1, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v24

    .line 1104
    .local v24, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    .line 1105
    .local v25, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v26

    .line 1106
    .local v26, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v27

    .line 1107
    .local v27, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v28

    .line 1108
    .local v28, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v29

    .line 1109
    .local v29, "timestamp":J
    move-object/from16 v2, p0

    move v3, v0

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move v10, v1

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v16, v29

    invoke-direct/range {v2 .. v17}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJ)V

    .line 1113
    return-void
.end method

.method private isDataNetworkConnected()Z
    .locals 5

    .line 2710
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2719
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2720
    :catch_0
    move-exception v2

    .line 2721
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "GnssLocationProvider"

    const-string v4, "Return false while checking failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2722
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 2719
    :cond_0
    nop

    .line 2723
    .local v1, "isDataConnected":Z
    :goto_0
    nop

    .line 2722
    :goto_1
    nop

    .line 2724
    return v1
.end method

.method private isRequestLocationRateLimited()Z
    .locals 1

    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 683
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleRequestLocation$1(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .locals 4
    .param p0, "locationListener"    # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 1078
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    if-nez v0, :cond_0

    .line 1079
    const-string v0, "GnssLocationProvider"

    const-string v2, "Removing location updates from %s provider."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 1080
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1083
    :cond_0
    return-void
.end method

.method static synthetic lambda$onUpdateSatelliteBlacklist$0([I[I)V
    .locals 0
    .param p0, "constellations"    # [I
    .param p1, "svids"    # [I

    .line 611
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_set_satellite_blacklist([I[I)Z

    .line 612
    return-void
.end method

.method public static synthetic lambda$reportGnssServiceDied$2(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 2

    .line 2065
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2066
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    .line 2071
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 2073
    :cond_0
    return-void
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 784
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 787
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 788
    invoke-virtual {p2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 791
    nop

    .line 796
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    nop

    .line 797
    const/4 v0, 0x1

    return v0

    .line 790
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 793
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open GPS configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v1, 0x0

    return v1
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 765
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "configValues":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 768
    .local v4, "item":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GpsParamsResource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 771
    .local v5, "index":I
    if-lez v5, :cond_1

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 772
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 774
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 775
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 776
    :cond_1
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "index":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    :cond_2
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # I

    .line 2778
    packed-switch p1, :pswitch_data_0

    .line 2808
    :pswitch_0
    const-string v0, "<Unknown>"

    return-object v0

    .line 2806
    :pswitch_1
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2804
    :pswitch_2
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2792
    :pswitch_3
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2788
    :pswitch_4
    const-string v0, "RELEASE_SUPL_CONNECTION"

    return-object v0

    .line 2786
    :pswitch_5
    const-string v0, "REQUEST_SUPL_CONNECTION"

    return-object v0

    .line 2802
    :pswitch_6
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2800
    :pswitch_7
    const-string v0, "SUBSCRIPTION_OR_SIM_CHANGED"

    return-object v0

    .line 2796
    :pswitch_8
    const-string v0, "DOWNLOAD_XTRA_DATA_FINISHED"

    return-object v0

    .line 2798
    :pswitch_9
    const-string v0, "UPDATE_LOCATION"

    return-object v0

    .line 2794
    :pswitch_a
    const-string v0, "DOWNLOAD_XTRA_DATA"

    return-object v0

    .line 2790
    :pswitch_b
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2784
    :pswitch_c
    const-string v0, "UPDATE_NETWORK_STATE"

    return-object v0

    .line 2782
    :pswitch_d
    const-string v0, "SET_REQUEST"

    return-object v0

    .line 2780
    :pswitch_e
    const-string v0, "ENABLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once()V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJ)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_set_satellite_blacklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private releaseSuplConnection(I)V
    .locals 2
    .param p1, "connStatus"    # I

    .line 1957
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1958
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 691
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset GPS properties, previous size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    const-string v0, "/vendor/etc/gps.conf"

    invoke-direct {p0, v0, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 696
    const-string/jumbo v0, "persist.sys.gps.lpp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "lpp_prof":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 699
    const-string v1, "LPP_PROFILE"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 704
    :cond_1
    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {p0, v1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 706
    const-string v1, "SUPL_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUPL_PORT"

    .line 707
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "C2K_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 709
    const-string v1, "C2K_PORT"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "portString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 712
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    goto :goto_0

    .line 713
    :catch_0
    move-exception v2

    .line 714
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse C2K_PORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 718
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 732
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 733
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 734
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, "propertyValueString":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 737
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 738
    .local v7, "propertyValueInt":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;

    invoke-interface {v8, v7}, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;->set(I)Z

    move-result v8

    .line 739
    .local v8, "result":Z
    if-nez v8, :cond_3

    .line 740
    const-string v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    .end local v7    # "propertyValueInt":I
    .end local v8    # "result":Z
    :cond_3
    goto :goto_2

    .line 742
    :catch_1
    move-exception v7

    .line 743
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v8, "GnssLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to parse propertyName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "propertyValueString":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    goto :goto_1

    .line 747
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    :cond_5
    goto :goto_3

    :cond_6
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 748
    const-string v2, "GnssLocationProvider"

    const-string v3, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "SUPL_ES"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "suplESProperty":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 756
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 759
    goto :goto_5

    .line 757
    :catch_2
    move-exception v3

    .line 758
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_ES: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_5
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .line 1923
    packed-switch p2, :pswitch_data_0

    .line 1952
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Unknown AGPS status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1949
    :pswitch_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1946
    :pswitch_1
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1943
    :pswitch_2
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1939
    :pswitch_3
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    .line 1941
    goto :goto_1

    .line 1925
    :pswitch_4
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_1
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/4 v0, 0x0

    .line 1928
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_3

    .line 1930
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 1931
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :cond_2
    goto :goto_0

    .line 1932
    :catch_0
    move-exception v1

    .line 1933
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1936
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_3
    :goto_0
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1937
    nop

    .line 1954
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2215
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2219
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2235
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2238
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2239
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2225
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2229
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2245
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2249
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 2197
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2200
    :cond_0
    const/4 v0, 0x1

    .line 2201
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2202
    const/4 v0, 0x0

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2209
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 9
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 2180
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2184
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2191
    return-void
.end method

.method private reportGnssServiceDied()V
    .locals 2

    .line 2063
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2074
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .locals 1
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1717
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1718
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .locals 4
    .param p1, "locationArray"    # [Landroid/location/Location;

    .line 2133
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2134
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2135
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location batch of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->reportLocationBatch(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    goto :goto_0

    .line 2139
    :catch_0
    move-exception v1

    .line 2140
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocationBatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1975
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1984
    :cond_0
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1990
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1999
    :cond_0
    return-void
.end method

.method private reportNmea(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 1964
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1966
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1967
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1969
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reportStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 1803
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1806
    .local v0, "wasNavigating":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1818
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1819
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1815
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1816
    goto :goto_0

    .line 1812
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1813
    goto :goto_0

    .line 1808
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1809
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1810
    nop

    .line 1823
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1827
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1829
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1831
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .locals 3
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F

    .line 1848
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 1849
    .local v0, "svStatusInfo":Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
    iput p1, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    .line 1850
    iput-object p2, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    .line 1851
    iput-object p3, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    .line 1852
    iput-object p4, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    .line 1853
    iput-object p5, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    .line 1854
    iput-object p6, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    .line 1856
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1857
    return-void
.end method

.method private requestLocation(Z)V
    .locals 3
    .param p1, "independentFromGnss"    # Z

    .line 2353
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2354
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocation. independentFromGnss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2357
    return-void
.end method

.method private requestRefLocation()V
    .locals 14

    .line 2371
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2372
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2373
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 2374
    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2375
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 2376
    .local v3, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2377
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 2379
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2380
    .local v4, "mcc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2381
    .local v12, "mnc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    .line 2382
    .local v13, "networkType":I
    if-eq v13, v5, :cond_1

    const/16 v5, 0x8

    if-eq v13, v5, :cond_1

    const/16 v5, 0x9

    if-eq v13, v5, :cond_1

    const/16 v5, 0xa

    if-eq v13, v5, :cond_1

    const/16 v5, 0xf

    if-ne v13, v5, :cond_0

    goto :goto_0

    .line 2389
    :cond_0
    goto :goto_1

    .line 2387
    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 2389
    .local v7, "type":I
    :goto_1
    move v7, v2

    .line 2391
    nop

    .line 2392
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 2391
    move-object v6, p0

    move v8, v4

    move v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2393
    .end local v4    # "mcc":I
    .end local v7    # "type":I
    .end local v12    # "mnc":I
    .end local v13    # "networkType":I
    goto :goto_2

    .line 2394
    :cond_2
    const-string v2, "GnssLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    .end local v3    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 2397
    const-string v2, "GnssLocationProvider"

    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_4
    :goto_3
    return-void
.end method

.method private requestSetID(I)V
    .locals 5
    .param p1, "flags"    # I

    .line 2322
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2323
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2324
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2325
    .local v1, "type":I
    const-string v2, ""

    .line 2327
    .local v2, "data":Ljava/lang/String;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2328
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, "data_temp":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2329
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_0

    .line 2333
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 2334
    const/4 v1, 0x1

    .line 2336
    .end local v3    # "data_temp":Ljava/lang/String;
    :goto_0
    goto :goto_1

    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2337
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 2338
    .restart local v3    # "data_temp":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2338
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_1

    .line 2342
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 2343
    const/4 v1, 0x2

    .line 2346
    .end local v3    # "data_temp":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2347
    return-void
.end method

.method private requestUtcTime()V
    .locals 3

    .line 2363
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2365
    return-void
.end method

.method private restartLocationRequest()V
    .locals 2

    .line 2036
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 2038
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 2039
    return-void
.end method

.method private restartRequests()V
    .locals 2

    .line 2026
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    .line 2029
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 2030
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 2031
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    .line 2032
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    .line 2033
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2405
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2406
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2411
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .line 2006
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2023
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .locals 3
    .param p1, "modelName"    # Ljava/lang/String;

    .line 2055
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssModelName called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 2057
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .locals 3
    .param p1, "yearOfHardware"    # I

    .line 2046
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 2048
    return-void
.end method

.method private setRouting()V
    .locals 4

    .line 2689
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 2690
    return-void

    .line 2694
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2698
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 2699
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2700
    :cond_1
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2701
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_2
    :goto_0
    return-void
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .line 1206
    if-eqz p1, :cond_0

    .line 1207
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1209
    :cond_0
    if-eqz p2, :cond_1

    .line 1211
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    .line 1219
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1221
    :cond_2
    return-void
.end method

.method private startNavigating(Z)V
    .locals 11
    .param p1, "singleShot"    # Z

    .line 1595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    .line 1597
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_7

    .line 1598
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNavigating, singleShot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1600
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1601
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1602
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1603
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1606
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_1

    .line 1607
    const-string v2, "GnssLocationProvider"

    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1612
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1614
    .local v2, "agpsEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1616
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1619
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v3, :pswitch_data_0

    .line 1630
    const-string/jumbo v3, "unknown"

    goto :goto_1

    .line 1624
    :pswitch_0
    const-string v3, "MS_ASSISTED"

    .line 1625
    .local v3, "mode":Ljava/lang/String;
    goto :goto_1

    .line 1627
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v3, "MS_BASED"

    .line 1628
    .restart local v3    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1621
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "standalone"

    .line 1622
    .restart local v3    # "mode":Ljava/lang/String;
    nop

    .line 1630
    :goto_1
    nop

    .line 1633
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting position_mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v3    # "mode":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_4
    const/16 v3, 0x3e8

    goto :goto_2

    .line 1637
    .local v7, "interval":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1638
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1640
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1641
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return-void

    .line 1644
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1645
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1646
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return-void

    .line 1651
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1652
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1654
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1657
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_7

    .line 1658
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1658
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1663
    .end local v2    # "agpsEnabled":Z
    .end local v7    # "interval":I
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 2

    .line 1666
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1669
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    .line 1671
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1672
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1673
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1677
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1680
    :cond_0
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 616
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 619
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 620
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 621
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "mccMnc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 623
    .local v3, "isKeepLppProfile":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 624
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 626
    if-eqz v1, :cond_2

    .line 627
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    .line 628
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_2

    .line 629
    const-string/jumbo v6, "persist_lpp_mode_bool"

    .line 630
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 630
    .end local v5    # "b":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 647
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 633
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 635
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 636
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "LPP_PROFILE"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "lpp_profile":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 639
    const-string/jumbo v6, "persist.sys.gps.lpp"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v5    # "lpp_profile":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 643
    :cond_4
    const-string/jumbo v5, "persist.sys.gps.lpp"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_1
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 646
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 647
    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 649
    :cond_5
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "GnssLocationProvider"

    const-string v5, "SIM MCC/MNC is still not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_6
    :goto_3
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 2672
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2673
    return v1

    .line 2675
    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2676
    return v2

    .line 2678
    :cond_1
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2679
    const/4 v0, 0x3

    return v0

    .line 2683
    :cond_2
    const-string v0, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2684
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1446
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    return-void

    .line 1452
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    goto :goto_0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1460
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1461
    aget-object v4, v0, v3

    .line 1462
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v2

    .line 1464
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_1

    .line 1465
    move v6, v3

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1466
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1467
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1468
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1467
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1465
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1472
    .end local v6    # "i":I
    :cond_1
    if-eqz v5, :cond_2

    .line 1473
    move v6, v3

    .restart local v6    # "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1474
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1475
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1476
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1475
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1473
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1480
    .end local v6    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1484
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1485
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_5

    .line 1486
    aget-object v5, v4, v3

    .line 1487
    .local v5, "newWork":Landroid/os/WorkSource;
    aget-object v2, v4, v2

    .line 1490
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_4

    .line 1491
    move v6, v3

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1492
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1493
    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    .line 1492
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1491
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1498
    .end local v6    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1499
    nop

    .local v3, "i":I
    :goto_4
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1500
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1499
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1504
    .end local v2    # "goneWork":Landroid/os/WorkSource;
    .end local v3    # "i":I
    .end local v5    # "newWork":Landroid/os/WorkSource;
    :cond_5
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 5

    .line 666
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 668
    .local v0, "disableGps":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 669
    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    .line 670
    .local v3, "result":Landroid/os/PowerSaveState;
    iget v4, v3, Landroid/os/PowerSaveState;->gpsMode:I

    if-eq v4, v2, :cond_1

    goto :goto_1

    .line 673
    :cond_1
    iget-boolean v4, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    nop

    :cond_2
    or-int/2addr v0, v1

    .line 676
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_3

    .line 677
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 678
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 680
    :cond_3
    return-void
.end method

.method private updateRequirements()V
    .locals 11

    .line 1357
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1361
    :cond_0
    const/4 v0, 0x0

    .line 1364
    .local v0, "singleShot":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    .line 1365
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1368
    const/4 v0, 0x1

    .line 1370
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 1371
    .local v4, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 1372
    const/4 v0, 0x0

    .line 1374
    .end local v4    # "lr":Landroid/location/LocationRequest;
    :cond_1
    goto :goto_0

    .line 1379
    :cond_2
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    if-ne v1, v3, :cond_5

    .line 1380
    if-nez v0, :cond_4

    .line 1381
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v4, "SUPL_MODE"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, "modeString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1383
    .local v4, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1385
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 1386
    if-ne v4, v2, :cond_3

    .line 1387
    const-string v5, "GnssLocationProvider"

    const-string/jumbo v6, "supl mode is MSA, set singleShot true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    const/4 v0, 0x1

    .line 1392
    :cond_3
    goto :goto_1

    .line 1390
    :catch_0
    move-exception v5

    .line 1391
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to parse SUPL_MODE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v4    # "suplMode":I
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 1400
    :cond_5
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_6
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1403
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1405
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v1, v4

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1406
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1408
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v4, v1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    .line 1409
    const-string v1, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interval overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v5, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1414
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v1, :cond_9

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1416
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1418
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    goto :goto_2

    .line 1424
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_a

    .line 1426
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    goto :goto_2

    .line 1429
    :cond_a
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1430
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-lt v1, v3, :cond_c

    .line 1433
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1433
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 1437
    :cond_b
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1439
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1440
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1441
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1443
    :cond_c
    :goto_2
    return-void

    .line 1358
    .end local v0    # "singleShot":Z
    :cond_d
    :goto_3
    return-void
.end method

.method private updateStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1333
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_0

    .line 1334
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1337
    :cond_0
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .line 2148
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2150
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 1295
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1297
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1301
    return-void

    .line 1298
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2816
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2817
    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2818
    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2819
    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2820
    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2821
    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2822
    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2823
    const-string v2, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2824
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    :cond_7
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    const-string v1, "  native internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2839
    return-void
.end method

.method public enable()V
    .locals 3

    .line 1197
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1199
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1203
    return-void

    .line 1200
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .locals 1

    .line 2121
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$15;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$15;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .locals 1

    .line 2091
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$14;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$14;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 889
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .line 2270
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .line 894
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1328
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 1329
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .line 1341
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 903
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    .line 904
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 1323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .locals 2
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 610
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;-><init>([I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 2285
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNiNotification: entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notifyFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestorIdEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", textEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2299
    .local v0, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2300
    iput p2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2301
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2302
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2303
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    iput-boolean v2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2305
    iput p4, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2306
    iput p5, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2307
    iput-object p6, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2308
    iput-object p7, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2309
    iput p8, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2310
    iput p9, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2312
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2313
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1511
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1513
    .local v2, "result":Z
    :try_start_0
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1514
    const-string v3, "GnssLocationProvider"

    const-string v4, "delete_aiding_data"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_0

    .line 1516
    :cond_0
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1517
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1518
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1519
    :cond_1
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1520
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_6

    .line 1521
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1522
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1525
    :cond_2
    const-string v3, "force_location_inject"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1526
    new-instance v3, Landroid/location/Location;

    const-string v4, "gps"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v3, "injectLocation":Landroid/location/Location;
    const-string/jumbo v4, "latitude"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1528
    const-string/jumbo v4, "longitude"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1529
    const-string v4, "accuracy"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 1530
    const-string v4, "GnssLocationProvider"

    const-string v5, "force_inject_position"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1532
    .end local v3    # "injectLocation":Landroid/location/Location;
    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "set_position_mode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1534
    const-string/jumbo v3, "host"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v4, "port"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1536
    .local v4, "port":I
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1537
    .local v5, "mode":I
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "host:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1539
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1540
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1541
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    .line 1542
    const-string v6, "GnssLocationProvider"

    const-string v8, "MSA mode ,need check singleShot"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    sput-boolean v7, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 1547
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v6, v7, v7}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    .line 1554
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "mode":I
    goto :goto_0

    .line 1555
    :cond_5
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    :cond_6
    :goto_0
    nop

    .line 1559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1557
    return v2

    .line 1559
    .end local v2    # "result":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1346
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1347
    return-void
.end method
