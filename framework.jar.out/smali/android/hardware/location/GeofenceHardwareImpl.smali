.class public final Landroid/hardware/location/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareImpl$Reaper;,
        Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    }
.end annotation


# static fields
.field private static final ADD_GEOFENCE_CALLBACK:I = 0x2

.field private static final CALLBACK_ADD:I = 0x2

.field private static final CALLBACK_REMOVE:I = 0x3

.field private static final CAPABILITY_GNSS:I = 0x1

.field private static final DEBUG:Z

.field private static final FIRST_VERSION_WITH_CAPABILITIES:I = 0x2

.field private static final GEOFENCE_CALLBACK_BINDER_DIED:I = 0x6

.field private static final GEOFENCE_STATUS:I = 0x1

.field private static final GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MONITOR_CALLBACK_BINDER_DIED:I = 0x4

.field private static final PAUSE_GEOFENCE_CALLBACK:I = 0x4

.field private static final REAPER_GEOFENCE_ADDED:I = 0x1

.field private static final REAPER_MONITOR_CALLBACK_ADDED:I = 0x2

.field private static final REAPER_REMOVED:I = 0x3

.field private static final REMOVE_GEOFENCE_CALLBACK:I = 0x3

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x2

.field private static final RESOLUTION_LEVEL_FINE:I = 0x3

.field private static final RESOLUTION_LEVEL_NONE:I = 0x1

.field private static final RESUME_GEOFENCE_CALLBACK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GeofenceHardwareImpl"

.field private static sInstance:Landroid/hardware/location/GeofenceHardwareImpl;


# instance fields
.field private final mCallbacks:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/IGeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksHandler:Landroid/os/Handler;

.field private mCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private mFusedService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHandler:Landroid/os/Handler;

.field private final mGeofences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/location/IGeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsService:Landroid/location/IGpsGeofenceHardware;

.field private mReaperHandler:Landroid/os/Handler;

.field private final mReapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/GeofenceHardwareImpl$Reaper;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMonitorTypes:[I

.field private mVersion:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GeofenceHardwareImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$1;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$1;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$2;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$3;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    invoke-direct {p0, v1, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceHardwareImpl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    const-class v0, Landroid/hardware/location/GeofenceHardwareImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    sget-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reportGeofenceOperationStatus(III)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setMonitorAvailability(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aput p2, v1, p1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateFusedHardwareAvailability()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v3}, Landroid/location/IFusedGeofenceHardware;->isSupported()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    nop

    :cond_3
    move v3, v1

    :goto_2
    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "RemoteException calling LocationManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    :cond_4
    return-void
.end method

.method private updateGpsHardwareAvailability()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v1}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v4

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const-string v0, "addCircularFence: monitoringType=%d, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    aput-object p2, v7, v5

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "GeofenceHardwareImpl"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v0, :cond_1

    return v6

    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    new-array v7, v5, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    aput-object p2, v7, v6

    invoke-interface {v0, v7}, Landroid/location/IFusedGeofenceHardware;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "GeofenceHardwareImpl"

    const-string v7, "AddGeofence: RemoteException calling LocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v0, :cond_2

    return v6

    :cond_2
    :try_start_2
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result v18

    invoke-interface/range {v7 .. v18}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "GeofenceHardwareImpl"

    const-string v7, "AddGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    nop

    :goto_0
    nop

    if-eqz v6, :cond_3

    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v5, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    iget-object v5, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_3
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GeofenceHardwareImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addCircularFence: Result is: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v6

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getAllowedResolutionLevel(II)I
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCapabilitiesForMonitoringType(I)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    return v0

    :cond_1
    return v0

    :pswitch_1
    return v0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getMonitoringResolutionLevel(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMonitoringTypes()[I
    .locals 6

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    return-object v0

    :cond_2
    new-array v0, v4, [I

    aput v2, v0, v2

    return-object v0

    :cond_3
    if-eqz v5, :cond_4

    new-array v0, v4, [I

    aput v4, v0, v2

    return-object v0

    :cond_4
    new-array v0, v2, [I

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v1, v1, p1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown monitoring type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCapabilities(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    return-void
.end method

.method public pauseGeofence(II)Z
    .locals 4

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/location/IFusedGeofenceHardware;->pauseMonitoringGeofence(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "PauseGeofence: RemoteException calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v1, :cond_2

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "PauseGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    nop

    :goto_0
    nop

    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pauseGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public removeGeofence(II)Z
    .locals 5

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v1

    invoke-interface {v2, v3}, Landroid/location/IFusedGeofenceHardware;->removeGeofences([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v2, :cond_2

    return v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v1, p1}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    nop

    :goto_0
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Geofence "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportGeofenceAddStatus(II)V
    .locals 3

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    return-void
.end method

.method public reportGeofenceMonitorStatus(IILandroid/location/Location;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .locals 3

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseCallbac| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .locals 3

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .locals 3

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResumeCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJII)V
    .locals 16

    move-object/from16 v9, p2

    if-nez v9, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Invalid Geofence Transition: location=null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeofenceTransition| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", transition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transitionTimestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", monitoringType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sourcesUsed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v13, p6

    move/from16 v14, p7

    :goto_0
    new-instance v15, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v10

    move-wide v4, v11

    move-object v6, v9

    move v7, v13

    move v8, v14

    invoke-direct/range {v0 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    iget-object v2, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resumeGeofence(III)Z
    .locals 4

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v0, p1, p3}, Landroid/location/IFusedGeofenceHardware;->resumeMonitoringGeofence(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "ResumeGeofence: RemoteException calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v1, :cond_2

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v0, p1, p3}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "ResumeGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    nop

    :goto_0
    nop

    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Fused Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Error: FusedService being set again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateGpsHardwareAvailability()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "GPS Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Error: GpsService being set again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method
