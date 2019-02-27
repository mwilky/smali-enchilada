.class public Landroid/media/MediaPlayer;
.super Landroid/media/PlayerBase;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;
.implements Landroid/media/VolumeAutomation;
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$MetricsConstants;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$ProvisioningThread;,
        Landroid/media/MediaPlayer$ProvisioningServerErrorException;,
        Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
        Landroid/media/MediaPlayer$NoDrmSchemeException;,
        Landroid/media/MediaPlayer$DrmInfo;,
        Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmPreparedListener;,
        Landroid/media/MediaPlayer$PrepareDrmStatusCode;,
        Landroid/media/MediaPlayer$OnDrmInfoListener;,
        Landroid/media/MediaPlayer$OnDrmConfigHelper;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;,
        Landroid/media/MediaPlayer$SeekMode;,
        Landroid/media/MediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field static final DBG:Z

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

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

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

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

.field private static final MEDIA_TIME_DISCONTINUITY:I = 0xd3

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final PREPARE_DRM_STATUS_PREPARATION_ERROR:I = 0x3

.field public static final PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR:I = 0x1

.field public static final PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR:I = 0x2

.field public static final PREPARE_DRM_STATUS_SUCCESS:I = 0x0

.field public static final SEEK_CLOSEST:I = 0x3

.field public static final SEEK_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_NEXT_SYNC:I = 0x1

.field public static final SEEK_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mActiveDrmScheme:Z

.field private mBypassInterruptionPolicy:Z

.field private mDrmConfigAllowed:Z

.field private mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

.field private mDrmInfoResolved:Z

.field private final mDrmLock:Ljava/lang/Object;

.field private mDrmObj:Landroid/media/MediaDrm;

.field private mDrmProvisioningInProgress:Z

.field private mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

.field private mDrmSessionId:[B

.field private mDrmUUID:Ljava/util/UUID;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mExtSubtitleDataHandler:Landroid/os/Handler;

.field private mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

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

.field private final mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

.field private mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

.field private mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

.field private mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
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

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListenerDisabled:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    const-string v0, "MediaPlayer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaPlayer;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaPlayer;->mUsage:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    iput v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    new-instance v1, Landroid/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$7;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    const-string v1, "MediaPlayer"

    const-string v2, "constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    :goto_0
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mNotificationManager:Landroid/app/INotificationManager;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRegisterPlayer()V

    return-void
.end method

.method private HandleProvisioninig(Ljava/util/UUID;)I
    .locals 6

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "MediaPlayer"

    const-string v2, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "MediaPlayer"

    const-string v3, "HandleProvisioninig: getProvisionRequest returned null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v1, "MediaPlayer"

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

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    new-instance v1, Landroid/media/MediaPlayer$ProvisioningThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$1;)V

    invoke-virtual {v1, v0, p1, p0}, Landroid/media/MediaPlayer$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->start()V

    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleProvisioninig: Thread.join Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->status()I

    move-result v1

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    :goto_1
    return v1
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

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
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

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
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

.method static synthetic access$000(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaPlayer;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4002(Landroid/media/MediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    return p1
.end method

.method static synthetic access$4102(Landroid/media/MediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    return p1
.end method

.method static synthetic access$4200(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4

    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return v1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
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

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanDrmObj: mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    :goto_0
    move-object v9, v3

    invoke-virtual {v2, v9}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v2, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 3

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private enableNativeRoutingCallbacksLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_enableDeviceCallback(Z)V

    :cond_0
    return-void
.end method

.method private getAudioStreamType()I
    .locals 2

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

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

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
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

    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    sget-object v2, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
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

.method private isRestricted()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Landroid/media/MediaPlayer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRestricted getPackagePriority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/INotificationManager;->getOnePlusPackagePriority(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getZenMode =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ActivityThread.currentPackageName() =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Process.myUid() =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getAudioStreamType =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x5

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/app/INotificationManager;->getOnePlusPackagePriority(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v2

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
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

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_enableDeviceCallback(Z)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .locals 6

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected NULL track at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "postEventFromNative MEDIA_DRM_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p4, Landroid/os/Parcel;

    if-eqz v1, :cond_2

    move-object v1, p4

    check-cast v1, Landroid/os/Parcel;

    new-instance v2, Landroid/media/MediaPlayer$DrmInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer$1;)V

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v2, v0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/media/MediaPlayer$6;

    invoke-direct {v2, v0}, Landroid/media/MediaPlayer$6;-><init>(Landroid/media/MediaPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_4
    iget-object v2, v0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, v0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_0
    iget-object v1, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

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

    const-string v0, "MediaPlayer"

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

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

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

    const-string v2, "MediaPlayer"

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

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/MediaPlayer;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->_prepareDrm([B[B)V

    const-string v0, "MediaPlayer"

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

    const-string v2, "MediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private resetDrmState()V
    .locals 7

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetDrmState:  mDrmInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDrmProvisioningThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPrepareDrmInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mActiveDrmScheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetDrmState: ProvThread.join Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    :cond_0
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

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

    const-string v0, "MediaPlayer"

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
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaPlayer"

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

    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

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

    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
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

    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

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

    invoke-direct {p0, v0, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    :cond_2
    const-string v0, "MediaPlayer"

    const-string/jumbo v3, "trying to deselect track that was not selected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v0

    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    if-ltz v0, :cond_4

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

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

    invoke-direct {p0, v5, v6}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

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
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    nop

    invoke-static {p1, p4}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    nop

    return-void

    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "setDataSource failed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    iput-object p2, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    iput-object p2, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

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

    new-instance v2, Landroid/media/MediaPlayer$2;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

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

    const-string v3, "MediaPlayer"

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

.method private startImpl()V
    .locals 7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/util/OemSceneCallBlocker;->isStreamMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    invoke-static {v0, v2}, Lcom/oneplus/util/OemSceneCallBlocker;->isUsageMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "startImpl: Turn off the sounds on Game mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v4}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStart()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v4, v4}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    :cond_4
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    return-void
.end method

.method private stayAwake(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

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
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->enableNativeRoutingCallbacksLocked(Z)V

    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

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

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

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
    const-string v2, "MediaPlayer"

    const-string v3, "addSubtitleSource called with null InputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SubtitleReadThread"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Landroid/media/MediaPlayer$4;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
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

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
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

    invoke-virtual {p0, v1, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

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

    iget-object v0, v10, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    :cond_0
    iget-object v0, v10, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v12}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, v10, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v2, Landroid/media/SRTRenderer;

    iget-object v4, v10, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, v0, v4}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    :cond_1
    iget-object v0, v10, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v12}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v13

    iget-object v1, v10, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_1
    iget-object v0, v10, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

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

    new-instance v15, Landroid/media/MediaPlayer$5;

    move-object v1, v15

    move-object v2, v10

    move-object v8, v13

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

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

    const-string v2, "MediaPlayer"

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

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

    invoke-virtual {p0, v2, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

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

.method public native attachAuxEffect(I)V
.end method

.method public clearOnMediaTimeDiscontinuityListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    return-void
.end method

.method public clearOnSubtitleDataListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    return-void
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1

    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method public deselectTrack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

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
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getBufferingParams()Landroid/media/BufferingParams;
.end method

.method public native getCurrentPosition()I
.end method

.method public getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "The Player has not been prepared yet"

    const-string v3, "MediaPlayer"

    const-string v4, "The Player has not been prepared yet"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The Player has not been prepared yet"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-static {v2}, Landroid/media/MediaPlayer$DrmInfo;->access$1300(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

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

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MediaPlayer"

    const-string v2, "getDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

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

    const-string v0, "MediaPlayer"

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
    const-string v2, "MediaPlayer"

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

.method public native getDuration()I
.end method

.method public getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
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
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyRequest:  keySetId: "

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

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

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

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    const-string v2, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyRequest:   --> request: "

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

    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyRequest Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :goto_3
    nop

    const-string v2, "MediaPlayer"

    const-string v3, "getKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getKeyRequest: Unexpected provisioning error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v1, "MediaPlayer"

    const-string v2, "getKeyRequest NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/media/Metadata;

    invoke-direct {v1}, Landroid/media/Metadata;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

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

    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getRoutedDeviceId()I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

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

    :try_start_1
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :goto_2
    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

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

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v1, v0, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

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

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/MediaPlayer$TrackInfo;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

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

    new-instance v6, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v2

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

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

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

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyAt(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_notifyAt(J)V

    return-void
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 6

    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    :try_start_0
    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, p1, :cond_2

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_4

    :try_start_3
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    monitor-enter p0

    :try_start_4
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->basePause()V

    return-void
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    return-void
.end method

.method playerStart()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method playerStop()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public prepareDrm(Ljava/util/UUID;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer$ProvisioningServerErrorException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnDrmConfigHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_8

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    iget-object v4, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v4

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :try_start_2
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-interface {v2, p0}, Landroid/media/MediaPlayer$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v4

    :try_start_4
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    :try_start_5
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_1

    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_1
    if-eqz v2, :cond_4

    :goto_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto/16 :goto_3

    :catch_0
    move-exception v3

    :try_start_6
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareDrm: Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    throw v3

    :catch_1
    move-exception v3

    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "prepareDrm: NotProvisionedException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v7, "prepareDrm: Post-provisioning preparation failed."

    goto :goto_1

    :pswitch_0
    const-string/jumbo v7, "prepareDrm: Provisioning was required but the request was denied by the server."

    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/media/MediaPlayer$ProvisioningServerErrorException;

    invoke-direct {v8, v7}, Landroid/media/MediaPlayer$ProvisioningServerErrorException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    const-string/jumbo v7, "prepareDrm: Provisioning was required but failed due to a network error."

    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;

    invoke-direct {v8, v7}, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v8

    :goto_1
    nop

    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_3

    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    :cond_5
    return-void

    :catch_2
    move-exception v3

    :try_start_8
    const-string/jumbo v6, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    const-string v7, "MediaPlayer"

    const-string/jumbo v8, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    iget-boolean v6, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v6, :cond_6

    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_6
    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    :cond_7
    throw v3

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    :catch_3
    move-exception v3

    :try_start_a
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "prepareDrm(): Exception "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    throw v3

    :cond_8
    const-string/jumbo v3, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    const-string/jumbo v3, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaPlayer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    const-string/jumbo v3, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public provideKeyResponse([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provideKeyResponse: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

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
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provideKeyResponse: keySetId: "

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

    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provideKeyResponse Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :goto_2
    nop

    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "provideKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "provideKeyResponse: Unexpected provisioning error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, "MediaPlayer"

    const-string v2, "getKeyRequest NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseDrm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "releaseDrm:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_releaseDrm()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "releaseDrm: The player is not in a valid state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "releaseDrm(): No active DRM scheme to release."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v2, "releaseDrm: No active DRM scheme to release."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->enableNativeRoutingCallbacksLocked(Z)V

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

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public restoreKeys([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreKeys: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreKeys Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_0
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "restoreKeys NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v2, "restoreKeys: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public seekTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void
.end method

.method public seekTo(JI)V
    .locals 3

    if-ltz p3, :cond_2

    const/4 v0, 0x3

    if-gt p3, v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is too large, cap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is too small, cap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x80000000

    :cond_1
    :goto_0
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_seekTo(JI)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal seek mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public selectTrack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mUsage:I

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 v1, 0x578

    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    const-string v0, "Cannot set AudioAttributes to null"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set AudioAttributes to null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 4

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setAudioStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/MediaPlayer;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/util/OemSceneCallBlocker;->isStreamMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Lcom/oneplus/util/OemSceneCallBlocker;->isMutedByCallBlocker(Landroid/content/Context;Landroid/media/AudioAttributes;)Z

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
    if-eqz v1, :cond_2

    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "setAudioStreamType: Turn off the sounds on Game mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    invoke-direct {p0, v2, v2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseSetAuxEffectSendLevel(F)I

    return-void
.end method

.method public native setBufferingParams(Landroid/media/BufferingParams;)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v0, v4}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0, v5}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, p2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

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

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "setDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v2, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

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

    const-string v2, "MediaPlayer"

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

.method public native setLooping(Z)V
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

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

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
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v2

    return v2
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
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
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setOutputDevice(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
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

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setVolume(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

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

    const-string v1, "MediaPlayer"

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
    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getStartDelayMs()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;I)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer$1;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStop()V

    return-void
.end method
