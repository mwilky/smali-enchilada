.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Hardware;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$InputState;,
        Landroid/media/tv/TvInputManager$RecordingError;,
        Landroid/media/tv/TvInputManager$TimeShiftStatus;,
        Landroid/media/tv/TvInputManager$VideoUnavailableReason;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final ACTION_SETUP_INPUTS:Ljava/lang/String; = "android.media.tv.action.SETUP_INPUTS"

.field public static final ACTION_VIEW_RECORDING_SCHEDULES:Ljava/lang/String; = "android.media.tv.action.VIEW_RECORDING_SCHEDULES"

.field public static final DVB_DEVICE_DEMUX:I = 0x0

.field public static final DVB_DEVICE_DVR:I = 0x1

.field static final DVB_DEVICE_END:I = 0x2

.field public static final DVB_DEVICE_FRONTEND:I = 0x2

.field static final DVB_DEVICE_START:I = 0x0

.field public static final INPUT_STATE_CONNECTED:I = 0x0

.field public static final INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field static final RECORDING_ERROR_END:I = 0x2

.field public static final RECORDING_ERROR_INSUFFICIENT_SPACE:I = 0x1

.field public static final RECORDING_ERROR_RESOURCE_BUSY:I = 0x2

.field static final RECORDING_ERROR_START:I = 0x0

.field public static final RECORDING_ERROR_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TvInputManager"

.field public static final TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field static final VIDEO_UNAVAILABLE_REASON_END:I = 0x4

.field static final VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/media/tv/ITvInputClient;

.field private final mLock:Ljava/lang/Object;

.field private mNextSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/media/tv/ITvInputManager;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    new-instance v0, Landroid/media/tv/TvInputManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    new-instance v0, Landroid/media/tv/TvInputManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v8, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v7, v5, v8}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/tv/TvInputManager;)I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    return-object v0
.end method

.method private createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v5, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    iget v9, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    move-object v6, p1

    move v7, p2

    move v8, v2

    invoke-interface/range {v4 .. v9}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    new-instance v0, Landroid/media/tv/TvInputManager$Hardware;

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    new-instance v2, Landroid/media/tv/TvInputManager$3;

    invoke-direct {v2, p0, p3}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1, p3, p2}, Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBlockedRatings()Ljava/util/List;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputState(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized input ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTvContentRatingSystemList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTvInputList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isParentalControlsEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSingleSessionActive()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyPreviewProgramAddedToWatchNext(Ljava/lang/String;JJ)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyPreviewProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyWatchNextProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-lt v0, p2, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->access$1200(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
