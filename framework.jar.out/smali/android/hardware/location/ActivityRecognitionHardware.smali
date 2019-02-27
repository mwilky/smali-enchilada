.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;,
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final EVENT_TYPE_COUNT:I = 0x3

.field private static final EVENT_TYPE_DISABLED:I = 0x0

.field private static final EVENT_TYPE_ENABLED:I = 0x1

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final mSupportedActivities:[Ljava/lang/String;

.field private final mSupportedActivitiesCount:I

.field private final mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ActivityRecognitionHW"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$1;)V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    iget v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v0

    return v0
.end method

.method private checkPermissions()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getActivityName(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Invalid ActivityType: %d, SupportedActivities: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityRecognitionHW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getActivityType(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 2

    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v1, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    :cond_0
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .locals 10

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Landroid/hardware/location/ActivityRecognitionEvent;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    iget v5, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v5}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v7, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v8, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v3, v1}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    iget-object v4, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v4}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    move-result v4

    nop

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v5, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v5, v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    :try_start_0
    invoke-interface {v5, v3}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v7, "ActivityRecognitionHW"

    const-string v8, "Error delivering activity changed event."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    return-void

    :cond_3
    :goto_3
    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityRecognitionHW"

    const-string v1, "No events to broadcast for onActivityChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 4

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v3, v3, v0

    aput v1, v3, p2

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 4

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aput v3, v1, p2

    return v3

    :cond_1
    return v1
.end method

.method public flush()Z
    .locals 2

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
