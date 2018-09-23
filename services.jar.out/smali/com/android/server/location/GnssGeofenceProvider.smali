.class Lcom/android/server/location/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(IDDDIIII)Z
    .locals 1

    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$addCircularHardwareGeofence$1(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)Ljava/lang/Boolean;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p1

    iget-object v1, v0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move v2, v13

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V

    iput v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    move-wide/from16 v3, p2

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    move-wide/from16 v5, p4

    iput-wide v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    move-wide/from16 v7, p6

    iput-wide v7, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    move/from16 v9, p8

    iput v9, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    move/from16 v10, p9

    iput v10, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    move/from16 v11, p10

    iput v11, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    move/from16 v12, p11

    iput v12, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    iget-object v14, v0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public static synthetic lambda$pauseHardwareGeofence$3(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$removeHardwareGeofence$2(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$resumeHardwareGeofence$4(Lcom/android/server/location/GnssGeofenceProvider;II)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    iput p2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$resumeIfStarted$0(Lcom/android/server/location/GnssGeofenceProvider;)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v3, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v4, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v6, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v8, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v10, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v11, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v12, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v13, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v3, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private runOnHandlerThread(Ljava/util/concurrent/Callable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "GnssGeofenceProvider"

    const-string v3, "Failed running callable."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 14

    new-instance v13, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)V

    move-object v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v1

    return v1
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;-><init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;-><init>(Lcom/android/server/location/GnssGeofenceProvider;II)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
