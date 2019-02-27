.class public final Landroid/media/MediaPlayer2Impl;
.super Landroid/media/MediaPlayer2;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer2Impl$Task;,
        Landroid/media/MediaPlayer2Impl$TimeProvider;,
        Landroid/media/MediaPlayer2Impl$ProvisioningThread;,
        Landroid/media/MediaPlayer2Impl$StreamEventCallback;,
        Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$DrmInfoImpl;,
        Landroid/media/MediaPlayer2Impl$EventHandler;,
        Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    }
.end annotation


# static fields
.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_DRM_INFO:I = 0xd2

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_META_DATA:I = 0xca

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_NOTIFY_TIME:I = 0x62

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final NEXT_SOURCE_STATE_ERROR:I = -0x1

.field private static final NEXT_SOURCE_STATE_INIT:I = 0x0

.field private static final NEXT_SOURCE_STATE_PREPARED:I = 0x2

.field private static final NEXT_SOURCE_STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer2Impl"


# instance fields
.field private mActiveDrmScheme:Z

.field private mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentDSD:Landroid/media/DataSourceDesc;

.field private mCurrentSrcId:J

.field private mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation
.end field

.field private mDrmConfigAllowed:Z

.field private mDrmEventCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/MediaPlayer2$DrmEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDrmEventCbLock:Ljava/lang/Object;

.field private mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

.field private mDrmInfoResolved:Z

.field private final mDrmLock:Ljava/lang/Object;

.field private mDrmObj:Landroid/media/MediaDrm;

.field private mDrmProvisioningInProgress:Z

.field private mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

.field private mDrmSessionId:[B

.field private mDrmUUID:Ljava/util/UUID;

.field private mEventCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventCbLock:Ljava/lang/Object;

.field private mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mNextDSDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/DataSourceDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mNextSourcePlayPending:Z

.field private mNextSourceState:I

.field private mNextSrcId:J

.field private mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaPlayer2Impl$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mPrepareDrmInProgress:Z

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mSrcIdGenerator:J

.field private final mSrcLock:Ljava/lang/Object;

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mTaskHandler:Landroid/os/Handler;

.field private final mTaskLock:Ljava/lang/Object;

.field private mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

.field private volatile mVolume:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaPlayer2Impl;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/media/MediaPlayer2;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    new-instance v1, Landroid/media/MediaPlayer2Impl$25;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer2Impl$25;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer2Impl$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer2Impl$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaPlayer2TaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private HandleProvisioninig(Ljava/util/UUID;)I
    .locals 7

    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayer2Impl"

    const-string v2, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "MediaPlayer2Impl"

    const-string v3, "HandleProvisioninig: getProvisionRequest returned null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v1, "MediaPlayer2Impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleProvisioninig provReq  data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    new-instance v2, Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$1;)V

    invoke-virtual {v2, v0, p1, p0}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->start()V

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v1, v5

    move v2, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "MediaPlayer2Impl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandleProvisioninig: Thread.join Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status()I

    move-result v1

    iput-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native _attachAuxEffect(I)V
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _notifyAt(J)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepareDrm([B[B)V
.end method

.method private native _release()V
.end method

.method private native _releaseDrm()V
.end method

.method private native _reset()V
.end method

.method private final native _seekTo(JI)V
.end method

.method private native _setAudioSessionId(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setBufferingParams(Landroid/media/BufferingParams;)V
.end method

.method private native _setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method private native _setSyncParams(Landroid/media/SyncParams;)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_start()V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroid/media/MediaPlayer2Impl;J)J
    .locals 0

    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/media/MediaPlayer2Impl;I)I
    .locals 0

    iput p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer2Impl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->prepareNextDataSource_l()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->setLooping(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer2Impl;Landroid/media/PlaybackParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/media/MediaPlayer2Impl;F)F
    .locals 0

    iput p1, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer2Impl;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->_setVolume(FF)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_pause()V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer2Impl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/media/MediaPlayer2Impl;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer2Impl;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/MediaPlayer2Impl;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->isVideoScalingModeSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaPlayer2Impl;Landroid/media/BufferingParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setBufferingParams(Landroid/media/BufferingParams;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/MediaPlayer2Impl;Landroid/media/SyncParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setSyncParams(Landroid/media/SyncParams;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/MediaPlayer2Impl;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->_seekTo(JI)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/MediaPlayer2Impl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setAudioSessionId(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer2Impl;ILandroid/os/Parcel;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaPlayer2Impl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_attachAuxEffect(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/MediaPlayer2Impl;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setAuxEffectSendLevel(F)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/media/MediaPlayer2Impl;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectTrack(IZ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$3900(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->playNextDataSource_l()V

    return-void
.end method

.method static synthetic access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    return-object v0
.end method

.method static synthetic access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->processPendingTask_l()V

    return-void
.end method

.method static synthetic access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/MediaPlayer2Impl;Landroid/media/DataSourceDesc;)Landroid/media/DataSourceDesc;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2$OnSubtitleDataListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/media/MediaPlayer2Impl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    return v0
.end method

.method static synthetic access$5702(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    return p1
.end method

.method static synthetic access$5800(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_releaseDrm()V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    return-wide v0
.end method

.method static synthetic access$6000(Landroid/media/MediaPlayer2Impl;)[B
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    return-object v0
.end method

.method static synthetic access$602(Landroid/media/MediaPlayer2Impl;J)J
    .locals 0

    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    return-wide p1
.end method

.method static synthetic access$6100(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaDrm;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    return-object v0
.end method

.method static synthetic access$6200(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onTearDown(JJ)V

    return-void
.end method

.method static synthetic access$6300(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onStreamPresentationEnd(JJ)V

    return-void
.end method

.method static synthetic access$6400(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onStreamDataRequest(JJJ)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6702(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    return p1
.end method

.method static synthetic access$6802(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    return p1
.end method

.method static synthetic access$708(Landroid/media/MediaPlayer2Impl;)J
    .locals 4

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer2Impl;ZLandroid/media/DataSourceDesc;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZLandroid/media/DataSourceDesc;J)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/MediaPlayer2Impl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    return-object p1
.end method

.method private addTask(Landroid/media/MediaPlayer2Impl$Task;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->processPendingTask_l()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 23

    move-object/from16 v1, p5

    :try_start_0
    const-string/jumbo v0, "r"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v2, p4

    :try_start_1
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const-wide/16 v10, 0x0

    const-wide v12, 0x7ffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide/from16 v7, p2

    invoke-direct/range {v5 .. v13}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v19

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v21

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-wide/from16 v16, p2

    invoke-direct/range {v14 .. v22}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v2, p4

    :goto_3
    const-string v3, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanDrmObj()V
    .locals 3

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanDrmObj: mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    :cond_1
    return-void
.end method

.method private enableNativeRoutingCallbacksLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->native_enableDeviceCallback(Z)V

    :cond_0
    return-void
.end method

.method private getAudioStreamType()I
    .locals 2

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    return v0
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 10

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x10

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int v7, v6, v5

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v6, v8

    ushr-long v8, v2, v6

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    sget-object v2, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private native getParameter(I)Landroid/os/Parcel;
.end method

.method private handleDataSource(ZJLandroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "file"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p2

    invoke-direct/range {v9 .. v15}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void

    :cond_0
    const-string v0, "content"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p5 .. p5}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v11, p4

    invoke-static {v11, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    invoke-direct/range {v13 .. v19}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object/from16 v11, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v12 .. v18}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private handleDataSource(ZJLandroid/media/Media2DataSource;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceCallback(ZJLandroid/media/Media2DataSource;)V

    return-void
.end method

.method private handleDataSource(ZJLjava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceFD(ZJLjava/io/FileDescriptor;JJ)V

    return-void
.end method

.method private handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object v9, v0

    move-object v10, v1

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private handleDataSource(ZJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v11, p7

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    nop

    move-object/from16 v2, p4

    move-object/from16 v11, p7

    invoke-static {v2, v11}, Landroid/media/Media2HTTPService;->createHTTPService(Ljava/lang/String;Ljava/util/List;)Landroid/media/Media2HTTPService;

    move-result-object v7

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v8, v2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceUrl(ZJLandroid/media/Media2HTTPService;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v2, p4

    goto :goto_0

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const-wide/16 v17, 0x0

    const-wide v19, 0x7ffffffffffffffL

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v20}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    nop

    return-void

    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "handleDataSource failed."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private handleDataSource(ZLandroid/media/DataSourceDesc;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "the DataSourceDesc cannot be null"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    goto :goto_1

    :pswitch_0
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriCookies()Ljava/util/List;

    move-result-object v9

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLandroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptorOffset()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptorLength()J

    move-result-wide v17

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v10 .. v18}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    goto :goto_0

    :pswitch_2
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getMedia2DataSource()Landroid/media/Media2DataSource;

    move-result-object v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLandroid/media/Media2DataSource;)V

    nop

    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$prepareDrm$0(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmPrepared(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;I)V

    return-void
.end method

.method private native nativeHandleDataSourceCallback(ZJLandroid/media/Media2DataSource;)V
.end method

.method private native nativeHandleDataSourceFD(ZJLjava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeHandleDataSourceUrl(ZJLandroid/media/Media2HTTPService;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativePlayNextDataSource(J)V
.end method

.method private final native native_enableDeviceCallback(Z)V
.end method

.method private final native native_finalize()V
.end method

.method private native native_getMediaPlayer2State()I
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static final native native_stream_event_onStreamDataRequest(JJJ)V
.end method

.method private static final native native_stream_event_onStreamPresentationEnd(JJ)V
.end method

.method private static final native native_stream_event_onTearDown(JJ)V
.end method

.method private playNextDataSource_l()V
    .locals 8

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DataSourceDesc;

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->nativePlayNextDataSource(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    const/16 v5, 0x64

    const/16 v6, -0x3f2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance v5, Landroid/media/MediaPlayer2Impl$16;

    invoke-direct {v5, p0, v2, v0, v1}, Landroid/media/MediaPlayer2Impl$16;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->prepareNextDataSource_l()V

    :cond_2
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private populateInbandTracks()V
    .locals 6

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static postEventFromNative(Ljava/lang/Object;JIIILjava/lang/Object;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer2Impl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_3

    const/16 v1, 0xd2

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "postEventFromNative MEDIA_DRM_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p6, Landroid/os/Parcel;

    if-eqz v1, :cond_2

    move-object v1, p6

    check-cast v1, Landroid/os/Parcel;

    new-instance v2, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer2Impl$1;)V

    iget-object v3, v0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v2, v0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    const-string v1, "MediaPlayer2Impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p4, v1, :cond_5

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/media/MediaPlayer2Impl$30;

    invoke-direct {v2, v0}, Landroid/media/MediaPlayer2Impl$30;-><init>(Landroid/media/MediaPlayer2Impl;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_4
    iget-object v2, v0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, v0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_0
    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance v3, Landroid/media/MediaPlayer2Impl$31;

    invoke-direct {v3, v0, v1, p1, p2}, Landroid/media/MediaPlayer2Impl$31;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private prepareDrm_createDrmStep(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_createDrmStep: UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_createDrmStep: MediaDrm failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayer2Impl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private prepareDrm_openSessionStep(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->_prepareDrm([B[B)V

    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: open/crypto failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayer2Impl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private prepareNextDataSource_l()V
    .locals 6

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DataSourceDesc;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZLandroid/media/DataSourceDesc;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    const/16 v3, 0x64

    const/16 v4, -0x3f2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance v5, Landroid/media/MediaPlayer2Impl$15;

    invoke-direct {v5, p0, v0, v2, v3}, Landroid/media/MediaPlayer2Impl$15;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private processPendingTask_l()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer2Impl$Task;

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private release()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->close()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    :cond_1
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->resetDrmState()V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private resetDrmState()V
    .locals 7

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaPlayer2Impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetDrmState:  mDrmInfoImpl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDrmProvisioningThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPrepareDrmInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mActiveDrmScheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "MediaPlayer2Impl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetDrmState: ProvThread.join Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    :cond_0
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private resumePrepareDrm(Ljava/util/UUID;)Z
    .locals 5

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumePrepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleProvisioninig: Thread run _prepareDrm resume failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private scanInternalSubtitleTracks()V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->setSubtitleAnchor()V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->populateInbandTracks()V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    :cond_0
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->populateInbandTracks()V

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack;

    if-nez v2, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    :cond_2
    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v3, "trying to deselect track that was not selected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer2Impl;->getSelectedTrack(I)I

    move-result v0

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    if-ltz v0, :cond_4

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static setAudioOutputDeviceById(Landroid/media/AudioTrack;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {p0, v4}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private native setLooping(Z)V
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SetSubtitleAnchorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/media/MediaPlayer2Impl$24;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaPlayer2Impl$24;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    const-string v3, "MediaPlayer2Impl"

    const-string v4, "failed to join SetSubtitleAnchorThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stayAwake(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mStayAwake:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public native _prepare()V
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl;->enableNativeRoutingCallbacksLocked(Z)V

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const-string v2, "MediaPlayer2Impl"

    const-string v3, "addSubtitleSource called with null InputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SubtitleReadThread"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Landroid/media/MediaPlayer2Impl$26;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$26;-><init>(Landroid/media/MediaPlayer2Impl;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v2

    :catch_0
    move-exception v2

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    :catch_1
    move-exception v2

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer2Impl;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    move-object v12, v0

    const-string/jumbo v0, "mime"

    invoke-virtual {v12, v0, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is-timed-text"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, v10, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer2Impl;->setSubtitleAnchor()V

    :cond_0
    iget-object v0, v10, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v12}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, v10, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v2, Landroid/media/SRTRenderer;

    iget-object v4, v10, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v2, v0, v4}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    :cond_1
    iget-object v0, v10, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v12}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v13

    iget-object v1, v10, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_1
    iget-object v0, v10, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaPlayer2Impl;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TimedTextReadThread"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v14, v1

    new-instance v15, Landroid/media/MediaPlayer2Impl$27;

    move-object v1, v15

    move-object v2, v10

    move-object v8, v13

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Landroid/media/MediaPlayer2Impl$27;-><init>(Landroid/media/MediaPlayer2Impl;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayer2Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mimeType for timed text source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    nop

    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mimeType for timed text source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public attachAuxEffect(I)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$22;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$22;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public clearDrmEventCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearMediaPlayer2EventCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPendingCommands()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deselectTrack(I)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$29;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$29;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 3

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->close()V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_finalize()V

    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 2

    const/16 v0, 0x578

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->getParameter(I)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public native getAudioSessionId()I
.end method

.method public getBufferedPosition()J
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public native getBufferingParams()Landroid/media/BufferingParams;
.end method

.method public getBufferingState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDataSource()Landroid/media/DataSourceDesc;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native getCurrentPosition()J
.end method

.method public getDrmInfo()Landroid/media/MediaPlayer2$DrmInfo;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "The Player has not been prepared yet"

    const-string v3, "MediaPlayer2Impl"

    const-string v4, "The Player has not been prepared yet"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The Player has not been prepared yet"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v2

    move-object v0, v2

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmKeyRequest:  keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " initData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " optionalParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    move-object v3, p1

    :goto_0
    if-eqz p5, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v7, v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    const-string v2, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmKeyRequest:   --> request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :goto_2
    nop

    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmKeyRequest Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :goto_3
    nop

    const-string v2, "MediaPlayer2Impl"

    const-string v3, "getDrmKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getDrmKeyRequest: Unexpected provisioning error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v1, "MediaPlayer2Impl"

    const-string v2, "getDrmKeyRequest NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string v2, "getDrmKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MediaPlayer2Impl"

    const-string v2, "getDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string v2, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "MediaPlayer2Impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmPropertyString: propertyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmPropertyString Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public native getDuration()J
.end method

.method public getMaxPlayerVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMediaPlayer2State()I
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getMediaPlayer2State()I

    move-result v0

    return v0
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/media/Metadata;

    invoke-direct {v1}, Landroid/media/Metadata;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer2Impl;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_1
    return-object v1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getPlaybackSpeed()F
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getPlayerState()I
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getMediaPlayer2State()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    nop

    :goto_0
    nop

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlayerVolume()F
    .locals 1

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getRoutedDeviceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_1

    aget-object v1, v2, v3

    return-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSelectedTrack(I)I
    .locals 7

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, v0, :cond_1

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v5

    if-ne v5, p1, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x7

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :goto_2
    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_4

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    :try_start_0
    new-instance v6, Landroid/media/MediaTimestamp;

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v1, v0, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v2, v3

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/media/SubtitleTrack;

    new-instance v6, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public isReversePlaybackSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loopCurrent(Z)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$9;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$9;-><init>(Landroid/media/MediaPlayer2Impl;IZZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    return-object v0
.end method

.method public notifyAt(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->_notifyAt(J)V

    return-void
.end method

.method public notifyWhenCommandLabelReached(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$12;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$12;-><init>(Landroid/media/MediaPlayer2Impl;IZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 4

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    if-ltz v0, :cond_0

    :try_start_0
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer2Impl;->setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    if-ltz v0, :cond_4

    :try_start_2
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer2Impl;->setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$3;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$3;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public play()V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$1;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepare()V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$2;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$2;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepareDrm(Ljava/util/UUID;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer2$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer2$ProvisioningServerErrorException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnDrmConfigHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v2, :cond_9

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    nop

    :try_start_2
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    invoke-interface {v1, p0, v4}, Landroid/media/MediaPlayer2$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;)V

    :cond_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v1, v3

    :try_start_4
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    :try_start_5
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v2, :cond_1

    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    :cond_1
    if-eqz v1, :cond_4

    :goto_0
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :catch_0
    move-exception v2

    :try_start_6
    const-string v5, "MediaPlayer2Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareDrm: Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    throw v2

    :catch_1
    move-exception v2

    const-string v5, "MediaPlayer2Impl"

    const-string/jumbo v6, "prepareDrm: NotProvisionedException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v6, "prepareDrm: Post-provisioning preparation failed."

    goto :goto_1

    :pswitch_0
    const-string/jumbo v6, "prepareDrm: Provisioning was required but the request was denied by the server."

    const-string v7, "MediaPlayer2Impl"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;

    invoke-direct {v7, v6}, Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    const-string/jumbo v6, "prepareDrm: Provisioning was required but failed due to a network error."

    const-string v7, "MediaPlayer2Impl"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;

    invoke-direct {v7, v6}, Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v7

    :goto_1
    nop

    const-string v7, "MediaPlayer2Impl"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v2, :cond_3

    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;

    invoke-direct {v5, p0, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    :cond_6
    :goto_4
    return-void

    :catch_2
    move-exception v2

    :try_start_9
    const-string/jumbo v5, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    const-string v6, "MediaPlayer2Impl"

    const-string/jumbo v7, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    :try_start_a
    iget-boolean v5, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v5, :cond_7

    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    :cond_8
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    :catch_3
    move-exception v2

    :try_start_b
    const-string v4, "MediaPlayer2Impl"

    const-string/jumbo v5, "prepareDrm(): Exception "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    throw v2

    :cond_9
    const-string/jumbo v2, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    const-string v3, "MediaPlayer2Impl"

    const-string/jumbo v4, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    const-string/jumbo v2, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    const-string v3, "MediaPlayer2Impl"

    const-string/jumbo v4, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaPlayer2Impl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    const-string/jumbo v2, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    const-string v3, "MediaPlayer2Impl"

    const-string/jumbo v4, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public provideDrmKeyResponse([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provideDrmKeyResponse: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    const-string v3, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provideDrmKeyResponse: keySetId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    :goto_1
    nop

    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provideDrmKeyResponse Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :goto_2
    nop

    const-string v2, "MediaPlayer2Impl"

    const-string/jumbo v3, "provideDrmKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "provideDrmKeyResponse: Unexpected provisioning error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, "MediaPlayer2Impl"

    const-string v2, "getDrmKeyRequest NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string v2, "getDrmKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
    .locals 0

    return-void
.end method

.method public releaseDrm()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaPlayer2Impl$32;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$32;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl;->enableNativeRoutingCallbacksLocked(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->close()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    :cond_2
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_reset()V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->resetDrmState()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public restoreDrmKeys([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaPlayer2Impl$33;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$33;-><init>(Landroid/media/MediaPlayer2Impl;IZ[B)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public seekTo(JI)V
    .locals 8

    new-instance v7, Landroid/media/MediaPlayer2Impl$20;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaPlayer2Impl$20;-><init>(Landroid/media/MediaPlayer2Impl;IZIJ)V

    invoke-direct {p0, v7}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$28;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$28;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$5;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$5;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/AudioAttributes;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$21;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$21;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$23;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$23;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setBufferingParams(Landroid/media/BufferingParams;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$17;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$17;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/BufferingParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDataSource(Landroid/media/DataSourceDesc;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$6;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$6;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/DataSourceDesc;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setDrmEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$DrmEventCallback;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the MediaPlayer2EventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null MediaPlayer2EventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "setDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string/jumbo v2, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDrmPropertyString Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setMediaPlayer2EventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the MediaPlayer2EventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null MediaPlayer2EventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x4

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v2

    return v2
.end method

.method public setNextDataSource(Landroid/media/DataSourceDesc;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$7;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$7;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/DataSourceDesc;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setNextDataSources(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/DataSourceDesc;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaPlayer2Impl$8;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$8;-><init>(Landroid/media/MediaPlayer2Impl;IZLjava/util/List;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setOnDrmConfigHelper(Landroid/media/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$18;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$18;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/PlaybackParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$10;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$10;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$11;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$11;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    nop

    :cond_1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->native_setOutputDevice(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    return v1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$13;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$13;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setSyncParams(Landroid/media/SyncParams;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$19;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$19;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/SyncParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$14;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$14;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "audio.offload.ignore_setawake"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "MediaPlayer2Impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IGNORING setWakeMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method public skipToNext()V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer2Impl$4;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$4;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_stop()V

    return-void
.end method

.method public unregisterPlayerEventCallback(Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
    .locals 0

    return-void
.end method
