.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$playSilentBufferThread;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field public static final ACTION_SHUTDOWN_MUTE_MUSIC:Ljava/lang/String; = "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z = true

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG:I = 0x402678c

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG:I = 0x402600c

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_A2DP_DEVICE_CONFIG_CHANGE:I = 0x67

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x1b

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6a

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x68

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x1d

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x1e

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LISTEN_AREA_STATUS:I = 0x21

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MUTE_MUSIC:I = 0x24

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x1c

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PER_SPEAKER_MUSIC_VOLUME:I = 0x20

.field private static final MSG_PLAY_SLIENT_BUFFER:I = 0x1f

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SEND_GRADIENTVOL:I = 0x23

.field private static final MSG_SEND_HEADSETHOOK:I = 0x22

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_HEARING_AID_CONNECTION_STATE:I = 0x69

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field public static final TEL_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field protected static mStreamVolumeAlias:[I

.field private static sIndependentA11yVolume:Z

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I


# instance fields
.field final LOG_NB_EVENTS_DYN_POLICY:I

.field final LOG_NB_EVENTS_FORCE_USE:I

.field final LOG_NB_EVENTS_PHONE_STATE:I

.field final LOG_NB_EVENTS_VOLUME:I

.field final LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation
.end field

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAutoPlayMusic:I

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompelet:Z

.field private mBtScoVolChange:Z

.field private mCallInfoBroadcast:I

.field private mCameraSoundForced:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private final mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field mFullVolumeDevices:I

.field private mGradientVol:I

.field private mGradientingVol:Z

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHeadsetNotication:I

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private final mHearingAidLock:Ljava/lang/Object;

.field private final mIsSingleVolume:Z

.field private mListeningarea:Ljava/lang/String;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field private mOnePlusFixedRingerMode:I

.field public mOnePlusMaxRingVolumeIndex:I

.field public mOnePlusMinRingVolumeIndex:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPerScoMediaVolume:I

.field private mPerSpeakerMediaVolume:I

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPreDelay:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private mScoClientDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private final mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 201
    const-string v0, "AudioService.MOD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    .line 204
    const-string v0, "AudioService.AP"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    .line 211
    const-string v0, "AudioService.DEVICES"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 383
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 398
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 466
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 537
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 538
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 539
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 705
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 8324
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8391
    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x6
        0x7
        0x7
        0x1e
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x47
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 804
    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 246
    new-instance v1, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 337
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 339
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 342
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 352
    const/4 v8, 0x2

    const/16 v2, 0xa

    filled-new-array {v2, v8}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 357
    iput v1, v0, Lcom/android/server/audio/AudioService;->mPreDelay:I

    .line 362
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    .line 367
    iput v1, v0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    .line 368
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 373
    const/4 v9, -0x1

    iput v9, v0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 374
    iput v9, v0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 379
    const-string v3, ""

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    .line 421
    const/16 v3, 0xb

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 434
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 447
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 489
    new-instance v4, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v4, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 511
    iput v9, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 515
    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 517
    iput v1, v0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 543
    new-instance v4, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v4, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v4, v0, v5}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 577
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 586
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 589
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 641
    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 645
    iput v1, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 648
    iput v9, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 652
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 653
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 657
    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 663
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 666
    new-instance v4, Landroid/media/AudioRoutesInfo;

    invoke-direct {v4}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 667
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 671
    const v4, 0x2c1c00

    iput v4, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 677
    iput v1, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 681
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 683
    iput v1, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 697
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    .line 701
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 703
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 709
    sget-object v6, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 714
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 717
    iput v9, v0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    .line 721
    iput v1, v0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 725
    iput v1, v0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 726
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 773
    new-instance v6, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v6, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 2644
    iput v1, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2645
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4492
    new-instance v6, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v6, v0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7154
    const v6, 0xc027f8c

    iput v6, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 7485
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    .line 8100
    iput v1, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 8115
    const v6, 0x400000c

    iput v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 8235
    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8246
    new-instance v6, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v6, v0, v5}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 8367
    const/16 v5, 0x14

    iput v5, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_PHONE_STATE:I

    .line 8368
    const/16 v6, 0x1e

    iput v6, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

    .line 8369
    iput v5, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_FORCE_USE:I

    .line 8370
    const/16 v10, 0x28

    iput v10, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_VOLUME:I

    .line 8371
    iput v2, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_DYN_POLICY:I

    .line 8373
    new-instance v11, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v12, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v11, v5, v12}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v11, v0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8376
    new-instance v11, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v12, "wired device connection (logged before onSetWiredDeviceConnectionState() is executed)"

    invoke-direct {v11, v6, v12}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v11, v0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8381
    new-instance v6, Lcom/android/server/audio/AudioEventLogger;

    const-string v11, "force use (logged before setForceUse() is executed)"

    invoke-direct {v6, v5, v11}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8385
    new-instance v5, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v6, "volume changes (logged when command received by AudioService)"

    invoke-direct {v5, v10, v6}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8388
    new-instance v5, Lcom/android/server/audio/AudioEventLogger;

    const-string v6, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v5, v2, v6}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8919
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 8948
    new-instance v5, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 9225
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 9278
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 9280
    iput v1, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 9284
    iput v1, v0, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 9285
    const/16 v5, 0x3e8

    iput v5, v0, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 9295
    iput v1, v0, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    .line 805
    iput-object v7, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 807
    const-string v5, "appops"

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 809
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 811
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 813
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 814
    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 816
    const-string/jumbo v5, "power"

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/os/PowerManager;

    .line 817
    .local v10, "pm":Landroid/os/PowerManager;
    const-string v5, "handleAudioEvent"

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 819
    const-string/jumbo v5, "vibrator"

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 820
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    :goto_0
    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 823
    const-string/jumbo v5, "ro.config.vc_call_vol_steps"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 824
    .local v11, "maxCallVolume":I
    const/4 v5, 0x4

    if-eq v11, v9, :cond_1

    .line 825
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v11, v6, v1

    .line 826
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v12, v11, 0x3

    div-int/2addr v12, v5

    aput v12, v6, v1

    .line 830
    :cond_1
    const-string/jumbo v6, "ro.config.media_vol_steps"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 831
    .local v12, "maxMusicVolume":I
    const/4 v13, 0x3

    if-eq v12, v9, :cond_2

    .line 832
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v12, v6, v13

    .line 835
    :cond_2
    const-string/jumbo v6, "ro.config.media_vol_default"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 836
    .local v14, "defaultMusicVolume":I
    if-eq v14, v9, :cond_3

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v6, v6, v13

    if-gt v14, v6, :cond_3

    .line 838
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v14, v6, v13

    goto :goto_1

    .line 840
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 841
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v15, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v15, v15, v13

    div-int/2addr v15, v5

    aput v15, v6, v13

    goto :goto_1

    .line 846
    :cond_4
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v15, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v15, v15, v13

    div-int/2addr v15, v8

    aput v15, v6, v13

    .line 856
    :goto_1
    const-string/jumbo v6, "ro.config.alarm_vol_steps"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 857
    .local v15, "maxAlarmVolume":I
    if-eq v15, v9, :cond_5

    .line 858
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v15, v6, v5

    .line 861
    :cond_5
    const-string/jumbo v6, "ro.config.alarm_vol_default"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 862
    .local v6, "defaultAlarmVolume":I
    if-eq v6, v9, :cond_6

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v16, v5

    if-gt v6, v3, :cond_6

    .line 864
    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v6, v3, v5

    goto :goto_2

    .line 867
    :cond_6
    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/16 v16, 0x6

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v18, v18, v5

    mul-int v16, v16, v18

    div-int/lit8 v16, v16, 0x7

    aput v16, v3, v5

    .line 871
    :goto_2
    const-string/jumbo v3, "ro.config.system_vol_steps"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 872
    .local v3, "maxSystemVolume":I
    if-eq v3, v9, :cond_7

    .line 873
    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v3, v16, v4

    .line 876
    :cond_7
    const-string/jumbo v8, "ro.config.system_vol_default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 877
    .local v8, "defaultSystemVolume":I
    if-eq v8, v9, :cond_8

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v13, v16, v4

    if-gt v8, v13, :cond_8

    .line 879
    sget-object v13, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v8, v13, v4

    goto :goto_3

    .line 882
    :cond_8
    sget-object v13, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v4

    aput v16, v13, v4

    .line 886
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x10e0099

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 889
    iput v1, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 895
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    .line 898
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v4}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v13

    .line 901
    .local v13, "cameraSoundForced":Z
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v13}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 902
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x8

    const/16 v21, 0x2

    const/16 v22, 0x4

    .line 906
    if-eqz v13, :cond_9

    .line 907
    const/16 v23, 0xb

    goto :goto_4

    :cond_9
    move/from16 v23, v1

    :goto_4
    new-instance v9, Ljava/lang/String;

    const-string v5, "AudioService ctor"

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    .line 902
    move-object/from16 v19, v4

    move-object/from16 v24, v9

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 911
    new-instance v4, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "audio_safe_volume_state"

    invoke-static {v5, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 916
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/2addr v4, v2

    iput v4, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 919
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11200c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 924
    const-string v2, "AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 927
    new-instance v2, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 934
    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-direct {v2, v7, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 937
    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v2, v4, v5}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 939
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 941
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 945
    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 949
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 951
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 952
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 953
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 954
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    const-string v2, "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    const-string/jumbo v2, "ro.audio.monitorRotation"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 976
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_a

    .line 977
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v1, v2}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 980
    :cond_a
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v1, v7

    move/from16 v17, v3

    move-object v3, v4

    .line 983
    .end local v3    # "maxSystemVolume":I
    .local v17, "maxSystemVolume":I
    move-object v4, v9

    move/from16 v18, v6

    move-object/from16 v6, v16

    .line 983
    .end local v6    # "defaultAlarmVolume":I
    .local v18, "defaultAlarmVolume":I
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 985
    const-class v1, Landroid/media/AudioManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 987
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 989
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 993
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "per_speaker_music_volume"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 995
    iget v1, v0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v1, v3, :cond_b

    .line 996
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 1002
    :cond_b
    invoke-static/range {p1 .. p1}, Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    .line 1004
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 194
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Z

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$10602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/Integer;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$11302(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11802(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$12202(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$12300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 194
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 194
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/server/audio/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$13102(Lcom/android/server/audio/AudioService;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # [I

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$13208(Lcom/android/server/audio/AudioService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$13300(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$13700(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 194
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 194
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 194
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/List;
    .locals 1

    .line 194
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6700()I
    .locals 1

    .line 194
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 194
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return p1
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return v0
.end method

.method static synthetic access$8802(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return p1
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 194
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 194
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$9702(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 1711
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    .line 1713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v12

    move v3, v9

    move/from16 v4, p1

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 1711
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1715
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1716
    :try_start_0
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volControlStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 1722
    iget v0, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1735
    .local v0, "streamType":I
    move v4, v0

    goto :goto_3

    .line 1724
    .end local v0    # "streamType":I
    :cond_0
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 1726
    .local v0, "maybeActiveStreamType":I
    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 1730
    :cond_1
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    goto :goto_1

    .line 1728
    :cond_2
    :goto_0
    invoke-direct {v8, v0, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    .line 1730
    .local v3, "activeForReal":Z
    :goto_1
    nop

    .line 1732
    if-nez v3, :cond_4

    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 1735
    :cond_3
    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    goto :goto_3

    .line 1733
    .restart local v0    # "maybeActiveStreamType":I
    .restart local v3    # "activeForReal":Z
    :cond_4
    :goto_2
    move v4, v0

    .line 1735
    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    .local v4, "streamType":I
    :goto_3
    move v0, v4

    .line 1738
    .end local v4    # "streamType":I
    .local v0, "streamType":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v12

    .line 1742
    .local v12, "isMute":Z
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1743
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v1, v0

    .line 1746
    .local v14, "resolvedStream":I
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_5

    if-eq v14, v2, :cond_5

    .line 1748
    and-int/lit8 v1, v7, -0x5

    .line 1753
    .end local p3    # "flags":I
    .local v1, "flags":I
    move v7, v1

    .end local v1    # "flags":I
    .local v7, "flags":I
    :cond_5
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v14, v7, v12}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1756
    if-eqz v10, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v2, "com.oneplus.aod"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1757
    const-string v1, "AudioService"

    const-string v2, "AOV,The volume ui will never show,ignore suppressAdjustment."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    move/from16 v1, p1

    goto :goto_4

    .line 1759
    :cond_6
    const/4 v1, 0x0

    .line 1761
    .end local p1    # "direction":I
    .local v1, "direction":I
    :goto_4
    and-int/lit8 v2, v7, -0x5

    .line 1762
    .end local v7    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x11

    .line 1763
    const-string v3, "AudioService"

    const-string v4, "Volume controller suppressed adjustment"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    move v15, v1

    move/from16 v16, v2

    goto :goto_5

    .end local v1    # "direction":I
    .end local v2    # "flags":I
    .restart local v7    # "flags":I
    .restart local p1    # "direction":I
    :cond_7
    move/from16 v15, p1

    move/from16 v16, v7

    .end local v7    # "flags":I
    .end local p1    # "direction":I
    .local v15, "direction":I
    .local v16, "flags":I
    :goto_5
    move-object v1, v8

    move v2, v0

    move v3, v15

    move/from16 v4, v16

    move-object v5, v10

    move-object v6, v11

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1767
    return-void

    .line 1738
    .end local v0    # "streamType":I
    .end local v12    # "isMute":Z
    .end local v14    # "resolvedStream":I
    .end local v15    # "direction":I
    .end local v16    # "flags":I
    .restart local p1    # "direction":I
    .restart local p3    # "flags":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 2524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2525
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2526
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2528
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2529
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .line 5210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5211
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5212
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5214
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5215
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 4403
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4405
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .line 5219
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5221
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5222
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5223
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5225
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canChangeAccessibilityVolume()Z
    .locals 6

    .line 2238
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2241
    monitor-exit v0

    return v2

    .line 2243
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2245
    .local v1, "callingUid":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 2246
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_1

    .line 2247
    monitor-exit v0

    return v2

    .line 2245
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2251
    .end local v1    # "callingUid":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    return v3

    .line 2252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .line 6912
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6913
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 7

    .line 1313
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1315
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1316
    .local v2, "numStreamTypes":I
    const/4 v3, 0x0

    .local v3, "streamType":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1317
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AudioService"

    .line 1318
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1320
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1321
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1316
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1324
    .end local v2    # "numStreamTypes":I
    .end local v3    # "streamType":I
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1326
    return-void

    .line 1324
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1325
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .line 1330
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1331
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1332
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1334
    .end local v1    # "streamType":I
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1338
    return-void
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 7517
    const/4 v0, 0x1

    .line 7518
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 7519
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7521
    if-nez v1, :cond_0

    .line 7522
    const-string v2, "AudioService"

    const-string v3, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7525
    return v0

    .line 7528
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7529
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 7532
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7533
    const-string v2, "AudioService"

    const-string v3, "No need to bringup audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7534
    const/4 v0, 0x0

    .line 7537
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_0

    .line 7540
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 7543
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7544
    const-string v2, "AudioService"

    const-string/jumbo v3, "not good to tear down audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7545
    const/4 v0, 0x0

    .line 7549
    :cond_3
    :goto_0
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdatTwsPlusScoState returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7550
    return v0
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 8
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 4847
    const/4 v0, 0x1

    .line 4848
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 4852
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 4854
    .local v1, "ringerMode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_0

    .line 4938
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4856
    :pswitch_0
    if-ne p2, v6, :cond_2

    .line 4857
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 4863
    if-gt p3, p1, :cond_11

    mul-int/2addr v5, p3

    if-ge p1, v5, :cond_11

    .line 4864
    const/4 v1, 0x1

    .line 4865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_3

    .line 4868
    :cond_1
    if-ne p1, p3, :cond_11

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_11

    .line 4869
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4872
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_11

    if-eq p2, v4, :cond_3

    const/16 v2, -0x64

    if-ne p2, v2, :cond_11

    .line 4874
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_4

    .line 4875
    const/4 v1, 0x1

    goto :goto_0

    .line 4877
    :cond_4
    const/4 v1, 0x0

    .line 4880
    :goto_0
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_3

    .line 4884
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_5

    .line 4885
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    goto/16 :goto_3

    .line 4889
    :cond_5
    if-ne p2, v6, :cond_9

    .line 4891
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_6

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_6

    if-eqz p4, :cond_6

    .line 4892
    const/4 v1, 0x2

    goto :goto_1

    .line 4893
    :cond_6
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v6, :cond_b

    .line 4894
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_8

    .line 4895
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    .line 4897
    .local v2, "diff":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4902
    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4903
    const/4 v1, 0x0

    .line 4905
    .end local v2    # "diff":J
    :cond_7
    goto :goto_1

    .line 4906
    :cond_8
    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 4909
    :cond_9
    if-eq p2, v3, :cond_a

    if-eq p2, v4, :cond_a

    if-ne p2, v2, :cond_b

    .line 4912
    :cond_a
    const/4 v1, 0x2

    .line 4914
    :cond_b
    :goto_1
    and-int/lit8 v0, v0, -0x2

    .line 4915
    goto :goto_3

    .line 4917
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v7, :cond_c

    if-ne p2, v6, :cond_c

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_c

    if-eqz p4, :cond_c

    .line 4919
    const/4 v1, 0x2

    goto :goto_2

    .line 4920
    :cond_c
    if-eq p2, v3, :cond_d

    if-eq p2, v4, :cond_d

    if-ne p2, v2, :cond_10

    .line 4923
    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_e

    .line 4924
    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    .line 4926
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_f

    if-ne p2, v3, :cond_f

    .line 4927
    const/4 v1, 0x1

    goto :goto_2

    .line 4931
    :cond_f
    const/4 v1, 0x2

    .line 4935
    :cond_10
    :goto_2
    and-int/lit8 v0, v0, -0x2

    .line 4936
    nop

    .line 4942
    :cond_11
    :goto_3
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4943
    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_12

    goto :goto_4

    .line 4945
    :cond_12
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4948
    :cond_13
    :goto_4
    const-string v2, "AudioService.checkForRingerModeChange"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 4950
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 4952
    return v0

    .line 4849
    .end local v1    # "ringerMode":I
    :cond_14
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMonitorAudioServerStatePermission()V
    .locals 2

    .line 9229
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9232
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9235
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9237
    :cond_1
    :goto_0
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    .line 1343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    .line 1345
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1346
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1347
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1343
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 8186
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_0

    const v1, 0x400000c

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    .line 8190
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_0

    .line 8191
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 8193
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 8194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkScoAudioState()V
    .locals 3

    .line 4270
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4273
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 4275
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4277
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4278
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In checkScoAudioState(), mScoAudioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    return-void

    .line 4277
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkSendBecomingNoisyIntent(III)I
    .locals 11
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 7166
    const/4 v0, 0x0

    .line 7167
    .local v0, "delay":I
    if-nez p2, :cond_4

    iget v1, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 7168
    const/4 v1, 0x0

    .line 7169
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 7169
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7170
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v3, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 7171
    .local v3, "dev":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 7173
    or-int/2addr v1, v3

    .line 7169
    .end local v3    # "dev":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7176
    .end local v2    # "i":I
    :cond_1
    if-nez p3, :cond_2

    .line 7177
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p3

    .line 7182
    :cond_2
    if-eq p1, p3, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-ne p1, v1, :cond_4

    .line 7183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7184
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 7185
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7192
    const-string/jumbo v2, "vendor.audio.noisy.broadcast.delay"

    const/16 v3, 0x2bc

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7196
    .end local v1    # "devices":I
    :cond_4
    return v0
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .locals 6
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation

    .line 8842
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8843
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8845
    .local v0, "hasPermissionForPolicy":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8846
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8846
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8849
    return-object v1

    .line 8852
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8853
    .local v2, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v2, :cond_2

    .line 8854
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8855
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", unregistered policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8854
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8857
    return-object v1

    .line 8859
    :cond_2
    return-object v2
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    move-object/from16 v0, p1

    .line 7441
    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7442
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7443
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 7444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7445
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 7446
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 7447
    .local v5, "status":I
    if-nez v5, :cond_8

    .line 7448
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    .line 7449
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-eqz v8, :cond_7

    .line 7450
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 7451
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_0

    .line 7452
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-ne v9, v10, :cond_7

    .line 7454
    :cond_0
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 7455
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_4

    .line 7456
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7457
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_2

    aget v14, v9, v13

    .line 7459
    .local v14, "format":I
    if-eqz v14, :cond_1

    .line 7460
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7457
    .end local v14    # "format":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 7463
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [I

    .line 7464
    .local v12, "encodingArray":[I
    move v13, v11

    .local v13, "i":I
    :goto_2
    array-length v14, v12

    if-ge v13, v14, :cond_3

    .line 7465
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 7464
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 7467
    .end local v13    # "i":I
    :cond_3
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 7470
    .end local v10    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "encodingArray":[I
    :cond_4
    const/4 v10, 0x0

    .line 7471
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_3
    if-ge v11, v13, :cond_6

    aget v14, v12, v11

    .line 7472
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 7473
    .local v15, "channelCount":I
    if-le v15, v10, :cond_5

    .line 7474
    move v10, v15

    .line 7471
    .end local v14    # "mask":I
    .end local v15    # "channelCount":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 7477
    :cond_6
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7480
    .end local v7    # "port":Landroid/media/AudioPort;
    .end local v8    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v10    # "maxChannels":I
    :cond_7
    goto :goto_0

    .line 7483
    .end local v3    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "portGeneration":[I
    .end local v5    # "status":I
    :cond_8
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 4371
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In connectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    packed-switch p2, :pswitch_data_0

    .line 4386
    const/4 v0, 0x0

    return v0

    .line 4382
    :pswitch_0
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 4375
    :pswitch_1
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling connectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    return v0

    .line 4378
    :pswitch_2
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createAudioSystemThread()V
    .locals 1

    .line 1293
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1294
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1295
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1296
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .line 1353
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1354
    .local v0, "numStreamTypes":I
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1356
    .local v1, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1357
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1361
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1362
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1363
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1364
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1365
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2621
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2622
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2624
    .local v1, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2625
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2626
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2627
    const/4 v2, 0x1

    return v2

    .line 2629
    .end local v1    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_0
    goto :goto_0

    .line 2630
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectBluetoothSco(I)V
    .locals 3
    .param p1, "exceptPid"    # I

    .line 4338
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothSco(), exceptPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4340
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 4341
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4342
    monitor-exit v0

    return-void

    .line 4344
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 4345
    monitor-exit v0

    .line 4346
    return-void

    .line 4345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 4350
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    packed-switch p2, :pswitch_data_0

    .line 4365
    const/4 v0, 0x0

    return v0

    .line 4361
    :pswitch_0
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 4354
    :pswitch_1
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling disconnectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    return v0

    .line 4357
    :pswitch_2
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8937
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8938
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8940
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8941
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_0

    .line 8942
    :cond_0
    monitor-exit v0

    .line 8943
    return-void

    .line 8942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8398
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8401
    const-string v0, "affected"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8402
    const-string/jumbo v0, "muted"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8403
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8404
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .line 8407
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8408
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8409
    if-eqz p3, :cond_5

    .line 8410
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8411
    const/4 v0, 0x1

    .line 8412
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2

    .line 8413
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 8414
    .local v2, "stream":I
    and-int v4, p3, v2

    if-eqz v4, :cond_1

    .line 8415
    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8416
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8417
    not-int v3, v2

    and-int/2addr p3, v3

    .line 8418
    const/4 v0, 0x0

    .line 8412
    .end local v2    # "stream":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8421
    .end local v1    # "i":I
    :cond_2
    if-eqz p3, :cond_4

    .line 8422
    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8423
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 8425
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 8427
    .end local v0    # "first":Z
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8428
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1380
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1382
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1385
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 12
    .param p1, "caller"    # Ljava/lang/String;

    .line 8161
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 8162
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const v1, 0x400000c

    .line 8163
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 8165
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_2

    .line 8166
    add-int/lit8 v9, v2, 0x1

    .local v9, "i":I
    const/4 v3, 0x1

    shl-int v10, v3, v2

    .line 8167
    .end local v2    # "i":I
    .local v10, "device":I
    and-int v2, v10, v1

    if-nez v2, :cond_0

    .line 8168
    nop

    .line 8163
    .end local v9    # "i":I
    .end local v10    # "device":I
    .restart local v2    # "i":I
    :goto_1
    move v2, v9

    goto :goto_0

    .line 8170
    .end local v2    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "device":I
    :cond_0
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 8171
    .local v11, "index":I
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_1

    .line 8172
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8173
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8181
    :cond_1
    not-int v2, v10

    and-int/2addr v1, v2

    .line 8182
    .end local v10    # "device":I
    .end local v11    # "index":I
    goto :goto_1

    .line 8183
    .end local v9    # "i":I
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 8507
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8509
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 5063
    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 5072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5070
    :cond_0
    :pswitch_0
    nop

    .line 5074
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .line 2872
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    return-void

    .line 2873
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .line 5077
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5080
    return-void

    .line 5078
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .locals 7
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "request"    # I
    .param p3, "uid"    # I

    .line 7893
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    .line 7897
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 7898
    .local v1, "extraInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    const-string v2, "a11y_force_ducking"

    .line 7899
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7902
    :cond_1
    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 7903
    return v2

    .line 7905
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7906
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_4

    .line 7907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7908
    .local v4, "callingUid":I
    move v5, v0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 7909
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3

    .line 7910
    monitor-exit v3

    return v2

    .line 7908
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7914
    .end local v4    # "callingUid":I
    .end local v5    # "i":I
    :cond_4
    monitor-exit v3

    .line 7915
    return v0

    .line 7914
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7900
    :cond_5
    :goto_1
    return v0

    .line 7895
    .end local v1    # "extraInfo":Landroid/os/Bundle;
    :cond_6
    :goto_2
    return v0
.end method

.method private getActiveStreamType(I)I
    .locals 8
    .param p1, "suggestedStreamType"    # I

    .line 5113
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 5115
    return v2

    .line 5118
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 5120
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5121
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5124
    return v4

    .line 5127
    :cond_2
    return v5

    .line 5129
    :cond_3
    if-ne p1, v1, :cond_7

    .line 5130
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5132
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    return v7

    .line 5134
    :cond_4
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5137
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    return v6

    .line 5142
    :cond_5
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5145
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_ALARM stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    return v1

    .line 5151
    :cond_6
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5154
    return v2

    .line 5156
    :cond_7
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 5157
    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5159
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    return v6

    .line 5161
    :cond_8
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5163
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    return v7

    .line 5167
    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5168
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 5170
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    return v4

    .line 5173
    :cond_a
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    return v5

    .line 5176
    :cond_b
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5178
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    return v6

    .line 5180
    :cond_c
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5182
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    return v7

    .line 5184
    :cond_d
    if-ne p1, v1, :cond_10

    .line 5185
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5187
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    return v6

    .line 5189
    :cond_e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5191
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    return v7

    .line 5195
    :cond_f
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    return v2

    .line 5203
    :cond_10
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5205
    return p1
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .line 4316
    const/4 v0, 0x0

    .line 4317
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 4318
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 4319
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 4326
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4327
    if-eqz v0, :cond_1

    const/16 v8, 0xbb8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 4326
    :goto_0
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4328
    return v0
.end method

.method private getCurrentUserId()I
    .locals 4

    .line 2481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2483
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2484
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2484
    return v3

    .line 2488
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2485
    :catch_0
    move-exception v2

    .line 2488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2489
    nop

    .line 2490
    const/4 v2, 0x0

    return v2
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .line 5283
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 5284
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 5291
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 5292
    const/4 v0, 0x2

    goto :goto_0

    .line 5293
    :cond_0
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 5294
    const/high16 v0, 0x40000

    goto :goto_0

    .line 5295
    :cond_1
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 5296
    const/high16 v0, 0x80000

    goto :goto_0

    .line 5297
    :cond_2
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 5298
    const/high16 v0, 0x200000

    goto :goto_0

    .line 5300
    :cond_3
    and-int/lit16 v0, v0, 0x380

    .line 5303
    :cond_4
    :goto_0
    return v0
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .line 5307
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .line 5311
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 5312
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 5314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNewRingerMode(III)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 2095
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_0

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2100
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2103
    :cond_2
    :goto_0
    const/4 v0, 0x2

    if-nez p2, :cond_5

    .line 2104
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 2105
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 2106
    :cond_4
    nop

    .local v0, "newRingerMode":I
    :goto_1
    goto :goto_2

    .line 2108
    .end local v0    # "newRingerMode":I
    :cond_5
    nop

    .line 2110
    .restart local v0    # "newRingerMode":I
    :goto_2
    return v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .locals 6

    .line 4761
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 4762
    .local v0, "min":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 4764
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 4767
    :goto_0
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 4768
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 4769
    .local v3, "index":I
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 4771
    .local v4, "gainDB":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4773
    goto :goto_2

    .line 4774
    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    .line 4775
    move v0, v3

    .line 4776
    goto :goto_2

    .line 4777
    :cond_1
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    .line 4778
    move v0, v3

    goto :goto_1

    .line 4780
    :cond_2
    move v2, v3

    .line 4782
    .end local v3    # "index":I
    .end local v4    # "gainDB":F
    :goto_1
    goto :goto_0

    .line 4783
    :cond_3
    :goto_2
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .line 4283
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4285
    .local v2, "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 4286
    monitor-exit v0

    return-object v2

    .line 4288
    .end local v2    # "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_0
    goto :goto_0

    .line 4289
    :cond_1
    if-eqz p2, :cond_2

    .line 4290
    new-instance v1, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    .line 4291
    .local v1, "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4292
    monitor-exit v0

    return-object v1

    .line 4294
    .end local v1    # "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7813
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 7814
    .local v0, "target":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7815
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7816
    return-void

    .line 7818
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7820
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7822
    .local v1, "ril":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 7823
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 7824
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7825
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7826
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7827
    return-void

    .line 7830
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v2, "AudioService"

    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7831
    return-void
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 4419
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4420
    return v0

    .line 4423
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 4424
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 4425
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    const v3, -0x7ffffff8

    .line 4426
    .local v3, "inDevice":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 4431
    .local v4, "outDeviceTypes":[I
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 4432
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    const/16 v7, 0x404

    if-eq v6, v7, :cond_2

    const/16 v7, 0x408

    if-eq v6, v7, :cond_2

    const/16 v7, 0x420

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 4438
    :cond_1
    new-array v6, v0, [I

    const/16 v7, 0x40

    aput v7, v6, v5

    move-object v4, v6

    goto :goto_0

    .line 4435
    :cond_2
    new-array v6, v0, [I

    const/16 v7, 0x20

    aput v7, v6, v5

    move-object v4, v6

    .line 4436
    nop

    .line 4442
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4443
    const-string v1, ""

    .line 4445
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4446
    .local v6, "btDeviceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4447
    .local v7, "result":Z
    if-eqz p2, :cond_5

    .line 4448
    aget v8, v4, v5

    invoke-direct {p0, p2, v8, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_2

    .line 4450
    :cond_5
    array-length v8, v4

    move v9, v7

    move v7, v5

    .end local v7    # "result":Z
    .local v9, "result":Z
    :goto_1
    if-ge v7, v8, :cond_6

    aget v10, v4, v7

    .line 4451
    .local v10, "outDeviceType":I
    invoke-direct {p0, p2, v10, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 4450
    .end local v10    # "outDeviceType":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4456
    :cond_6
    move v7, v9

    .end local v9    # "result":Z
    .restart local v7    # "result":Z
    :goto_2
    invoke-direct {p0, p2, v3, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move v0, v5

    .line 4457
    .end local v7    # "result":Z
    .local v0, "result":Z
    :goto_3
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for inDevice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    return v0

    nop

    :array_0
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 7981
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    .line 7982
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    .line 7991
    .local v3, "cameraSoundForced":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7992
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    .line 7993
    .local v7, "cameraSoundForcedChanged":Z
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 7994
    if-eqz v7, :cond_4

    .line 7995
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_2

    .line 7996
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7997
    :try_start_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    .line 7998
    .local v0, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v3, :cond_1

    .line 7999
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 8000
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 8003
    :cond_1
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 8004
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 8007
    .end local v0    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8009
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 8007
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 8012
    :cond_2
    :goto_2
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x4

    .line 8016
    if-eqz v3, :cond_3

    .line 8017
    const/16 v6, 0xb

    :goto_3
    move v14, v6

    goto :goto_4

    :cond_3
    goto :goto_3

    :goto_4
    new-instance v15, Ljava/lang/String;

    const-string v0, "handleConfigurationChanged"

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    .line 8012
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8021
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v18, 0xa

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v5, v8

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8028
    .end local v7    # "cameraSoundForcedChanged":Z
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 8029
    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 8032
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    goto :goto_5

    .line 8028
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "cameraSoundForced":Z
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 8030
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    :catch_0
    move-exception v0

    .line 8031
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8033
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 7094
    move-object/from16 v12, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 7095
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeviceConnection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7098
    :cond_0
    iget-object v13, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 7099
    :try_start_0
    invoke-direct {v1, v10, v11}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7100
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_1

    .line 7101
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7103
    :cond_1
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object v14, v3

    .line 7104
    .local v14, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const/4 v15, 0x1

    const/4 v9, 0x0

    if-eqz v14, :cond_2

    move v3, v15

    goto :goto_0

    :cond_2
    move v3, v9

    :goto_0
    move v8, v3

    .line 7105
    .local v8, "isConnected":Z
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_3

    .line 7106
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceSpec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is(already)Connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    :cond_3
    if-eqz v2, :cond_6

    if-nez v8, :cond_6

    .line 7109
    invoke-static {v10, v15, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v7, v3

    .line 7111
    .local v7, "res":I
    if-eqz v7, :cond_4

    .line 7112
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not connecting device 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to command error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7114
    monitor-exit v13

    return v9

    .line 7116
    :cond_4
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, v1, v10, v12, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7117
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x1b

    const/4 v5, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v6, v10

    move/from16 v19, v7

    move/from16 v7, v16

    .end local v7    # "res":I
    .local v19, "res":I
    move/from16 v16, v8

    move-object/from16 v8, v17

    .line 7117
    .end local v8    # "isConnected":Z
    .local v16, "isConnected":Z
    move v15, v9

    move/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7123
    const/4 v3, 0x4

    if-ne v10, v3, :cond_5

    .line 7124
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const-string v4, "0x8:controller=0;stream=0"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7125
    .local v3, "remDevice":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_5

    .line 7126
    const/16 v4, 0x8

    const-string v5, "controller=0;stream=0"

    const-string/jumbo v6, "tavil_codec"

    invoke-static {v4, v15, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7128
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const-string v5, "0x8:controller=0;stream=0"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7129
    const-string v4, "AudioService"

    const-string v5, "detected headphone -> headset, so remove headphone device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7133
    .end local v3    # "remDevice":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_5
    monitor-exit v13

    const/4 v3, 0x1

    return v3

    .line 7134
    .end local v16    # "isConnected":Z
    .end local v19    # "res":I
    .restart local v8    # "isConnected":Z
    :cond_6
    move/from16 v16, v8

    move v15, v9

    .line 7134
    .end local v8    # "isConnected":Z
    .restart local v16    # "isConnected":Z
    if-nez v2, :cond_7

    if-eqz v16, :cond_7

    .line 7135
    invoke-static {v10, v15, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7138
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7139
    monitor-exit v13

    const/4 v3, 0x1

    return v3

    .line 7141
    :cond_7
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", deviceSpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7143
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v14    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v16    # "isConnected":Z
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7145
    const-string v0, "AudioService"

    const-string v3, "handleDeviceConnection: returning false"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7146
    return v15

    .line 7143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasMediaDynamicPolicy()Z
    .locals 7

    .line 7203
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7205
    monitor-exit v0

    return v2

    .line 7207
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 7208
    .local v1, "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 7209
    .local v4, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7210
    monitor-exit v0

    return v5

    .line 7212
    .end local v4    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_1
    goto :goto_0

    .line 7213
    :cond_2
    monitor-exit v0

    return v2

    .line 7214
    .end local v1    # "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2635
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2636
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2637
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2638
    const/4 v1, 0x1

    return v1

    .line 2641
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .line 6917
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initA11yMonitoring()V
    .locals 2

    .line 8283
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 8284
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8285
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8286
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8287
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 8288
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 8289
    return-void
.end method

.method private isASWiredHeadsetOn()Z
    .locals 2

    .line 3927
    const-string v0, ""

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    .line 3929
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3931
    const/4 v0, 0x0

    return v0

    .line 3933
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isAlarm(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 3075
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 2117
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2118
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2118
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2120
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 2121
    return v0

    .line 2123
    :cond_0
    return v3

    .line 2124
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2125
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isAudioPathUp()Z
    .locals 6

    .line 7502
    const/4 v0, 0x0

    .line 7503
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7504
    .local v1, "it":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7505
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 7506
    const/4 v0, 0x1

    .line 7507
    goto :goto_1

    .line 7509
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 7510
    :cond_1
    :goto_1
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAudioPathUp returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7511
    return v0
.end method

.method private isBluetoothAudioNotConnectedToEarbud()Z
    .locals 7

    .line 3807
    const/4 v0, 0x1

    .line 3808
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3809
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3812
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 3813
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3814
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 3815
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3816
    .local v3, "peerDev":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peer device audio State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3819
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 3821
    :cond_0
    const-string v4, "AudioService"

    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    const/4 v0, 0x0

    .line 3826
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    return v0
.end method

.method public static isEnableEU()Z
    .locals 3

    .line 1152
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method private isInCommunication()Z
    .locals 6

    .line 5088
    const/4 v0, 0x0

    .line 5090
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    .line 5091
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 5093
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5094
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 5095
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5097
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 5098
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 5097
    :goto_1
    return v4
.end method

.method private isMedia(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 3084
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMuteAdjust(I)Z
    .locals 1
    .param p1, "adjust"    # I

    .line 5083
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 3079
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPlatformAutomotive()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .line 238
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .line 234
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 4981
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSystem(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 3089
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 11
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .line 7834
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7837
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 7838
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7839
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 7841
    :cond_0
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 7844
    .local v2, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 7845
    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7848
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 7847
    nop

    .line 7849
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 7849
    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_4

    .line 7850
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 7852
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 7853
    goto :goto_1

    .line 7856
    :cond_1
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 7858
    goto :goto_1

    .line 7860
    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7861
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7862
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7863
    goto :goto_1

    .line 7866
    :cond_3
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7867
    .local v6, "uid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 7868
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 7867
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7872
    .end local v6    # "uid":I
    goto :goto_1

    .line 7870
    :catch_0
    move-exception v6

    .line 7871
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7849
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 7874
    .end local v4    # "j":I
    :cond_4
    return-void

    .line 7846
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v3

    .line 7847
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .line 3431
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3432
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3433
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    aput v0, v2, v0

    .line 3434
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 3432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3436
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 11

    .line 3439
    const/4 v0, 0x0

    .line 3442
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3443
    return-void

    .line 3446
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 3451
    const-string v1, "audio_assets"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3452
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3453
    .local v1, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3455
    .local v3, "inTouchSoundsGroup":Z
    const-string v4, "1.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3457
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3458
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3459
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3460
    goto :goto_1

    .line 3462
    :cond_1
    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3463
    const-string/jumbo v5, "name"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3464
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "touch_sounds"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3465
    const/4 v3, 0x1

    .line 3466
    nop

    .line 3470
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_5

    .line 3471
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3472
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3473
    .restart local v4    # "element":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 3474
    goto :goto_2

    .line 3476
    :cond_2
    const-string v5, "asset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3477
    const-string/jumbo v5, "id"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3478
    .local v5, "id":Ljava/lang/String;
    const-string v6, "file"

    invoke-interface {v0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3482
    .local v6, "file":Ljava/lang/String;
    :try_start_1
    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3483
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3483
    .end local v7    # "field":Ljava/lang/reflect/Field;
    move v7, v8

    .line 3487
    .local v7, "fx":I
    nop

    .line 3486
    nop

    .line 3489
    :try_start_2
    sget-object v8, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3490
    .local v8, "i":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 3491
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v8, v9

    .line 3492
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3494
    :cond_3
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v7

    const/4 v10, 0x0

    aput v8, v9, v10

    .line 3498
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "fx":I
    .end local v8    # "i":I
    goto :goto_1

    .line 3484
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "file":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 3485
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3486
    goto :goto_1

    .line 3469
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    goto/16 :goto_0

    .line 3507
    .end local v1    # "version":Ljava/lang/String;
    .end local v3    # "inTouchSoundsGroup":Z
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 3508
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    .line 3507
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3504
    :catch_1
    move-exception v1

    .line 3505
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "AudioService"

    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3507
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_6

    goto :goto_3

    .line 3502
    :catch_2
    move-exception v1

    .line 3503
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "AudioService"

    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3507
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v0, :cond_6

    goto :goto_3

    .line 3500
    :catch_3
    move-exception v1

    .line 3501
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "AudioService"

    const-string v3, "audio assets file not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3507
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v0, :cond_6

    goto :goto_3

    .line 3511
    :cond_6
    :goto_4
    return-void

    .line 3507
    :goto_5
    if-eqz v0, :cond_7

    .line 3508
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v1
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 6762
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    .line 6765
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 6766
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeA2dpDeviceAvailable isAvrcpAbsoluteVolumeSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6767
    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/android/server/audio/AudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 6770
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v6, p3

    invoke-virtual {v1, v5, v6}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 6771
    const/16 v0, 0x80

    invoke-static {v0, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6774
    const-string v7, "A2dpSuspended=false"

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6775
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6776
    invoke-direct {v1, v0, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v9, v1, v0, v3, v2}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6775
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6779
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x1b

    const/4 v12, 0x2

    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6783
    iget v0, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    if-ne v0, v5, :cond_2

    const/16 v0, 0xb

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6784
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 6785
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v8

    .line 6786
    .local v8, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v9, 0x0

    .line 6787
    .local v9, "packageName":Ljava/lang/String;
    move v10, v5

    .line 6789
    .local v10, "sendKey":Z
    :try_start_0
    invoke-interface {v8}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 6791
    goto :goto_0

    .line 6790
    :catch_0
    move-exception v0

    .line 6792
    :goto_0
    if-eqz v9, :cond_1

    const-string/jumbo v0, "tv.danmaku.bili"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6793
    const/4 v10, 0x0

    .line 6795
    :cond_1
    if-ne v10, v5, :cond_2

    .line 6796
    const-string v0, "auto.play.delay"

    const/16 v5, 0x5dc

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6797
    .local v0, "autoPlayDelay":I
    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v12, 0x22

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6798
    const-string v5, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A2DP autoPlayDelay  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6802
    .end local v0    # "autoPlayDelay":I
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "sessionManagerService":Landroid/media/session/ISessionManager;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "sendKey":Z
    :cond_2
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 6841
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6843
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6844
    const/16 v1, 0x80

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6843
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6846
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 6852
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 6810
    if-nez p1, :cond_0

    .line 6811
    return-void

    .line 6815
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6816
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6819
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6820
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 6821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6823
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeA2dpDeviceUnavailableNow address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x80

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6826
    const-string v0, ""

    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6828
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6829
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6828
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6831
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6832
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    .line 6833
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 6835
    :cond_2
    return-void

    .line 6821
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6856
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6858
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6859
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v4, ""

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6858
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6862
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 6866
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6868
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6869
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6868
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6870
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 6887
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 6888
    .local v0, "index":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 6890
    const/4 v1, 0x1

    invoke-static {v2, v1, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6892
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6893
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6892
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6896
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x1b

    const/4 v7, 0x2

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6898
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 6902
    const-string v0, ""

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6904
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6905
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6904
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6907
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6908
    return-void
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;)Z
    .locals 6
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 2927
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2928
    return v1

    .line 2930
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2932
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2933
    return v1

    .line 2936
    :cond_2
    if-nez p1, :cond_3

    .line 2937
    return v1

    .line 2939
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 2940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 2939
    invoke-virtual {v1, v3, v4, p1, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 2941
    return v2
.end method

.method private muteRingerModeStreams()V
    .locals 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 3015
    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 3017
    .local v2, "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 3018
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3021
    :cond_0
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3022
    .local v3, "ringerMode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 3024
    .local v5, "ringerModeMute":Z
    :goto_1
    if-ne v3, v4, :cond_3

    .line 3025
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 3027
    .local v6, "shouldRingSco":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3029
    .local v7, "eventSource":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 3030
    if-eqz v6, :cond_4

    const/4 v8, 0x3

    move v13, v8

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 3029
    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3032
    add-int/lit8 v8, v2, -0x1

    .line 3032
    .local v8, "streamType":I
    :goto_4
    if-ltz v8, :cond_e

    .line 3033
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    .line 3034
    .local v9, "isMuted":Z
    const/4 v10, 0x2

    if-eqz v6, :cond_6

    if-eq v8, v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v4

    .line 3036
    .local v11, "muteAllowedBySco":Z
    :goto_6
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    .line 3037
    .local v12, "shouldZenMute":Z
    if-nez v12, :cond_8

    if-eqz v5, :cond_7

    .line 3038
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move v13, v4

    .line 3039
    .local v13, "shouldMute":Z
    :goto_8
    if-ne v9, v13, :cond_9

    .line 3032
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    move/from16 v17, v2

    const/4 v2, 0x0

    goto/16 :goto_d

    .line 3040
    .restart local v9    # "isMuted":Z
    .restart local v11    # "muteAllowedBySco":Z
    .restart local v12    # "shouldZenMute":Z
    .restart local v13    # "shouldMute":Z
    :cond_9
    if-nez v13, :cond_d

    .line 3043
    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_c

    .line 3044
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    .line 3045
    :try_start_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    .line 3046
    .local v14, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v15, 0x0

    .line 3046
    .local v15, "i":I
    :goto_9
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    .line 3047
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3048
    .local v4, "device":I
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 3049
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 3050
    move/from16 v16, v0

    .line 3050
    .end local v0    # "value":I
    .local v16, "value":I
    const-string v0, "AudioService"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v2

    const/16 v2, 0xa

    :try_start_1
    invoke-virtual {v14, v2, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 3050
    .end local v2    # "numStreamTypes":I
    .end local v4    # "device":I
    .end local v16    # "value":I
    .local v17, "numStreamTypes":I
    goto :goto_a

    .line 3046
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_a
    move/from16 v17, v2

    .line 3046
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    const/4 v4, 0x1

    goto :goto_9

    .line 3054
    .end local v15    # "i":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_b
    move/from16 v17, v2

    .line 3054
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v21

    .line 3055
    .local v21, "device":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v19, 0x1

    const/16 v20, 0x2

    const/16 v22, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v23, v2, v8

    const/16 v24, 0x1f4

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v24}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3062
    .end local v14    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v21    # "device":I
    monitor-exit v10

    goto :goto_c

    .line 3062
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :catchall_0
    move-exception v0

    move/from16 v17, v2

    .line 3062
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_b
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 3064
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_c
    move/from16 v17, v2

    .line 3064
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_c
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3065
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v4, 0x1

    shl-int v10, v4, v8

    not-int v10, v10

    and-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_d

    .line 3068
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_d
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 3068
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3069
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v10, v4, v8

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 3032
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    :goto_d
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v17

    goto/16 :goto_4

    .line 3072
    .end local v8    # "streamType":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_e
    move/from16 v17, v2

    .line 3072
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    .line 5318
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5319
    const/4 v1, 0x0

    move v2, v1

    .local v2, "stream":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 5320
    if-eq v2, p1, :cond_0

    .line 5321
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 5319
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5324
    .end local v2    # "stream":I
    :cond_1
    monitor-exit v0

    .line 5325
    return-void

    .line 5324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .locals 8
    .param p1, "newDevice"    # I

    .line 5486
    const-string v0, "AudioService"

    const-string/jumbo v1, "onAccessoryPlugMediaUnmute newDevice=%d [%s]"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 5487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5486
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const v1, 0x402678c

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    .line 5492
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    .line 5493
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5494
    invoke-static {v3}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 5497
    const-string v1, "AudioService"

    const-string v4, " onAccessoryPlugMediaUnmute unmuting device=%d [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 5498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 5497
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5500
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5502
    :cond_0
    monitor-exit v0

    .line 5503
    return-void

    .line 5502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 13
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 7049
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 7050
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpDeviceConfigChange btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7052
    :cond_0
    if-nez p1, :cond_1

    .line 7053
    return-void

    .line 7055
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7056
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7057
    const-string v0, ""

    .line 7060
    :cond_2
    const/16 v1, 0x80

    .line 7061
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7062
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7063
    monitor-exit v2

    return-void

    .line 7065
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7066
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7067
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_4

    .line 7069
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v11

    .line 7070
    .local v11, "musicDevice":I
    nop

    .line 7071
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7070
    invoke-static {v1, v0, v5}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 7074
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, -0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    .line 7079
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v11    # "musicDevice":I
    :cond_4
    monitor-exit v2

    .line 7080
    return-void

    .line 7079
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 4408
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v0, :cond_0

    .line 4409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4410
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4411
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4413
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4414
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 4416
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .line 4726
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4728
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 4730
    .local v2, "device":I
    const v3, 0x400000c

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 4731
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4738
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4739
    .local v3, "index":I
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4740
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_1

    .line 4742
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0xea60

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4743
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0x44aa200

    if-le v1, v5, :cond_0

    .line 4744
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4745
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4747
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 4751
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_1
    monitor-exit v0

    .line 4752
    return-void

    .line 4751
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 13
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 4787
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4788
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 4789
    .local v1, "mcc":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    .line 4790
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 4793
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 4795
    const-string v2, "audio.safemedia.force"

    .line 4796
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4797
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120098

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 4800
    .local v2, "safeMediaVolumeEnabled":Z
    :goto_1
    const-string v5, "audio.safemedia.bypass"

    .line 4801
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4806
    .local v3, "safeMediaVolumeBypass":Z
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 4807
    const/4 v4, 0x3

    .line 4811
    .local v4, "persistedState":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 4812
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v5, :cond_3

    .line 4813
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4814
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_2

    .line 4817
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_2

    .line 4821
    .end local v4    # "persistedState":I
    :cond_4
    const/4 v5, 0x1

    .line 4822
    .local v5, "persistedState":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4824
    move v4, v5

    .end local v5    # "persistedState":I
    .restart local v4    # "persistedState":I
    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 4825
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4833
    .end local v1    # "mcc":I
    .end local v2    # "safeMediaVolumeEnabled":Z
    .end local v3    # "safeMediaVolumeBypass":Z
    .end local v4    # "persistedState":I
    :cond_6
    monitor-exit v0

    .line 4834
    return-void

    .line 4833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .locals 6
    .param p1, "state"    # Z

    .line 1281
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .local v2, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    goto :goto_1

    .line 1285
    :catch_0
    move-exception v3

    .line 1286
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    .end local v2    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1289
    :cond_0
    monitor-exit v0

    .line 1290
    return-void

    .line 1289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 7
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 8959
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8960
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8962
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 8963
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 8965
    :try_start_1
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8969
    goto :goto_2

    .line 8966
    :catch_0
    move-exception v1

    .line 8967
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8968
    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8967
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8970
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    return-void

    .line 8972
    .end local v4    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_1
    goto :goto_1

    .line 8973
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_2
    goto :goto_0

    .line 8974
    :cond_3
    monitor-exit v0

    .line 8975
    return-void

    .line 8974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1577
    .local p1, "enabledSurroundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1578
    .local v3, "surroundFormat":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1579
    .local v4, "enabled":Z
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1580
    .local v5, "ret":I
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable surround format:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    .end local v3    # "surroundFormat":I
    .end local v4    # "enabled":Z
    .end local v5    # "ret":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1582
    :cond_0
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .line 6805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6806
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "a2dpVolume"    # I

    .line 6922
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 6923
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSinkConnectionState btDevice= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is dock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6924
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6923
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6926
    :cond_0
    if-nez p1, :cond_1

    .line 6927
    return-void

    .line 6929
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6930
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6931
    const-string v0, ""

    .line 6934
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6935
    nop

    .line 6936
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 6935
    const/16 v3, 0x80

    invoke-direct {p0, v3, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6937
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6938
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 6940
    .local v5, "isConnected":Z
    :goto_0
    const/4 v6, 0x2

    if-eqz v5, :cond_6

    if-eq p2, v6, :cond_6

    .line 6941
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6942
    if-nez p2, :cond_5

    .line 6946
    const/16 v3, 0x1f40

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto :goto_1

    .line 6950
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 6952
    :cond_5
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_3

    .line 6953
    :cond_6
    if-nez v5, :cond_a

    if-ne p2, v6, :cond_a

    .line 6954
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6956
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 6957
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    goto :goto_2

    .line 6961
    :cond_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 6962
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 6963
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 6966
    :cond_8
    :goto_2
    const/4 v6, -0x1

    if-eq p3, v6, :cond_9

    .line 6967
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    .line 6969
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    mul-int/lit8 p3, p3, 0xa

    .line 6970
    const-string/jumbo v7, "onSetA2dpSinkConnectionState"

    invoke-virtual {v6, p3, v3, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 6972
    invoke-direct {p0, v6, v3}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6974
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v0, v3, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6976
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6978
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v5    # "isConnected":Z
    :cond_a
    :goto_3
    monitor-exit v1

    .line 6979
    return-void

    .line 6978
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 6984
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6986
    if-nez p1, :cond_0

    .line 6987
    return-void

    .line 6989
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6990
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6991
    const-string v0, ""

    .line 6994
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6995
    const/high16 v2, -0x7ffe0000

    :try_start_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6996
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6997
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 6999
    .local v4, "isConnected":Z
    :goto_0
    const/4 v5, 0x2

    if-eqz v4, :cond_3

    if-eq p2, v5, :cond_3

    .line 7000
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_1

    .line 7001
    :cond_3
    if-nez v4, :cond_4

    if-ne p2, v5, :cond_4

    .line 7002
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 7004
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_4
    :goto_1
    monitor-exit v1

    .line 7005
    return-void

    .line 7004
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 7009
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 7010
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetHearingAidConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    :cond_0
    if-nez p1, :cond_1

    .line 7013
    return-void

    .line 7015
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7016
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7017
    const-string v0, ""

    .line 7020
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7021
    const/high16 v2, 0x8000000

    .line 7022
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 7021
    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7023
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7024
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 7026
    .local v4, "isConnected":Z
    :goto_0
    const/4 v5, 0x2

    if-eqz v4, :cond_4

    if-eq p2, v5, :cond_4

    .line 7027
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 7028
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_1

    .line 7029
    :cond_4
    if-nez v4, :cond_5

    if-ne p2, v5, :cond_5

    .line 7030
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7032
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 7034
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_5
    :goto_1
    monitor-exit v1

    .line 7035
    return-void

    .line 7034
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 17
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 2142
    move-object/from16 v10, p5

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v0, v7

    .line 2143
    .local v11, "stream":I
    const/4 v4, 0x0

    move-object v0, v6

    move v1, v11

    move v2, v8

    move/from16 v3, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2146
    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    if-eqz v8, :cond_1

    move/from16 v14, p4

    if-ne v14, v13, :cond_2

    .line 2147
    move v0, v12

    .local v0, "i":I
    :goto_0
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v15, v0, :cond_2

    .line 2148
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2149
    .local v5, "mapDevice":I
    if-eq v5, v13, :cond_0

    .line 2150
    const/4 v4, 0x0

    move-object v0, v6

    move v1, v11

    move v2, v8

    move v3, v5

    move/from16 v16, v5

    move-object v5, v10

    .end local v5    # "mapDevice":I
    .local v16, "mapDevice":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2147
    .end local v16    # "mapDevice":I
    :cond_0
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 2156
    .end local v0    # "i":I
    :cond_1
    move/from16 v14, p4

    :cond_2
    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_3

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v11, v0, :cond_4

    .line 2158
    :cond_3
    invoke-direct {v6, v11, v8, v9}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    const-string v1, "AudioService.onSetStreamVolume"

    invoke-direct {v6, v0, v1, v12}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2163
    :cond_4
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2166
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    if-nez v8, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v12

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2169
    :cond_6
    if-eqz v10, :cond_8

    new-instance v0, Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne v7, v13, :cond_8

    .line 2170
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    if-nez v8, :cond_7

    move v12, v1

    nop

    :cond_7
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2173
    :cond_8
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 7357
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 7358
    const-string v0, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7359
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " deviceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ");"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7358
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7365
    :cond_0
    move-object/from16 v7, p5

    :goto_0
    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 7366
    const v0, 0x402600c

    const/4 v15, 0x1

    if-nez v3, :cond_1

    and-int v8, v2, v0

    if-eqz v8, :cond_1

    .line 7367
    :try_start_0
    const-string/jumbo v8, "onSetWiredDeviceConnectionState state 0"

    invoke-virtual {v1, v15, v8}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 7372
    :cond_1
    move-object v14, v5

    .line 7373
    .local v14, "name_switch":Ljava/lang/String;
    const-string v8, " not broadcast"

    move-object v13, v8

    .line 7374
    .local v13, "stemp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 7376
    .local v8, "needBroadcast":Z
    const-string/jumbo v9, "not broadcast"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_2

    .line 7377
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v14, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 7378
    .end local p4    # "deviceName":Ljava/lang/String;
    .local v5, "deviceName":Ljava/lang/String;
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onSetWiredDeviceConnectionState not need broadcast name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " name_switch:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7381
    .end local v5    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    .line 7384
    .end local v8    # "needBroadcast":Z
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    .local v16, "needBroadcast":Z
    :goto_1
    move/from16 v16, v8

    if-ne v3, v15, :cond_3

    move v8, v15

    goto :goto_2

    :cond_3
    move v8, v12

    :goto_2
    invoke-direct {v1, v8, v2, v4, v5}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 7386
    monitor-exit v6

    return-void

    .line 7388
    :cond_4
    if-eqz v3, :cond_9

    .line 7389
    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 7390
    const-string/jumbo v0, "onSetWiredDeviceConnectionState state not 0"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 7392
    :cond_5
    const v0, 0x400000c

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 7393
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const v17, 0xea60

    move v15, v12

    move v12, v0

    move-object/from16 v18, v13

    move-object v13, v7

    .line 7393
    .end local v13    # "stemp":Ljava/lang/String;
    .local v18, "stemp":Ljava/lang/String;
    move-object/from16 v19, v14

    move/from16 v14, v17

    .line 7393
    .end local v14    # "name_switch":Ljava/lang/String;
    .local v19, "name_switch":Ljava/lang/String;
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3

    .line 7402
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    .restart local v13    # "stemp":Ljava/lang/String;
    .restart local v14    # "name_switch":Ljava/lang/String;
    :cond_6
    move v15, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 7402
    .end local v13    # "stemp":Ljava/lang/String;
    .end local v14    # "name_switch":Ljava/lang/String;
    .restart local v18    # "stemp":Ljava/lang/String;
    .restart local v19    # "name_switch":Ljava/lang/String;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_8

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_8

    .line 7403
    iget v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 7404
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 7405
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8

    .line 7406
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7407
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_7

    .line 7408
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7409
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 7411
    :cond_7
    monitor-exit v8

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 7414
    :cond_8
    :goto_4
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_a

    .line 7415
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x1

    invoke-direct {v1, v0, v8}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_5

    .line 7418
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    .restart local v13    # "stemp":Ljava/lang/String;
    .restart local v14    # "name_switch":Ljava/lang/String;
    :cond_9
    move v15, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 7418
    .end local v13    # "stemp":Ljava/lang/String;
    .end local v14    # "name_switch":Ljava/lang/String;
    .restart local v18    # "stemp":Ljava/lang/String;
    .restart local v19    # "name_switch":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_a

    .line 7419
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_a

    .line 7420
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7421
    :try_start_3
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7422
    monitor-exit v8

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 7432
    :cond_a
    :goto_5
    if-eqz v16, :cond_b

    .line 7433
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 7436
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->updateAudioRoutes(II)V

    .line 7437
    .end local v16    # "needBroadcast":Z
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    monitor-exit v6

    .line 7438
    return-void

    .line 7437
    .end local v5    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    .line 7437
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private onUnmuteStream(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .line 2041
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2042
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 2045
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2046
    .local v2, "index":I
    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2047
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5237
    .local v0, "ident":J
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5239
    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5240
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 7

    .line 8488
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 8489
    .local v0, "isLowRamDevice":Z
    const-wide/32 v1, 0x40000000

    .line 8492
    .local v1, "totalMemory":J
    :try_start_0
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 8493
    .local v3, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 8494
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v4

    .line 8498
    .end local v3    # "info":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_0

    .line 8495
    :catch_0
    move-exception v3

    .line 8496
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8497
    const/4 v0, 0x1

    .line 8500
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v3

    .line 8501
    .local v3, "status":I
    if-eqz v3, :cond_0

    .line 8502
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8504
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7
    .param p1, "userSwitch"    # Z

    .line 3626
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3627
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 3630
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3631
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    move v2, v1

    .line 3631
    .local v2, "streamType":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v0, :cond_4

    .line 3632
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    .line 3634
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_0

    .line 3635
    goto :goto_1

    .line 3638
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3639
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 3641
    :try_start_0
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3642
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    .line 3643
    :cond_2
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$802(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3645
    :cond_3
    monitor-exit v5

    .line 3631
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3645
    .restart local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3650
    .end local v2    # "streamType":I
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3652
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3653
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 3654
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 3656
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 3657
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const v5, 0x44aa200

    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3660
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 3661
    const-string v1, "AudioService"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3663
    :cond_5
    monitor-exit v2

    .line 3664
    return-void

    .line 3663
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private readCameraSoundForced()Z
    .locals 3

    .line 7964
    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7965
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 7964
    :goto_1
    return v1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1464
    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1467
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1471
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 1472
    const/16 v1, 0x8

    :goto_1
    move v7, v1

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1467
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1475
    return-void
.end method

.method private readPersistedSettings()V
    .locals 9

    .line 1585
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1587
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    .line 1588
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1590
    .local v1, "ringerModeFromSettings":I
    move v3, v1

    .line 1593
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1594
    const/4 v3, 0x2

    .line 1596
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_1

    .line 1597
    const/4 v3, 0x0

    .line 1599
    :cond_1
    if-eq v3, v1, :cond_2

    .line 1600
    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1602
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_4

    .line 1603
    :cond_3
    const/4 v3, 0x2

    .line 1605
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1606
    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1607
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 1608
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1614
    :cond_5
    nop

    .line 1616
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1614
    move v6, v2

    goto :goto_0

    .line 1617
    :cond_6
    nop

    .line 1614
    move v6, v7

    :goto_0
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1618
    iget v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1620
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    goto :goto_1

    .line 1621
    :cond_7
    nop

    .line 1618
    move v2, v7

    :goto_1
    invoke-static {v6, v7, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1623
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1624
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1625
    const-string/jumbo v2, "readPersistedSettings"

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1626
    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1627
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    const-string/jumbo v2, "mute_streams_affected"

    const/16 v5, 0x2f

    const/4 v6, -0x2

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1633
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1638
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1639
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1642
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1643
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1646
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1647
    return-void

    .line 1627
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private readUserRestrictions()V
    .locals 9

    .line 1650
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1653
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string v2, "disallow_unmute_device"

    .line 1654
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_adjust_volume"

    .line 1656
    invoke-virtual {v1, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 1658
    .local v1, "masterMute":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_2

    .line 1659
    const/4 v1, 0x0

    .line 1660
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1663
    :cond_2
    const-string v4, "AudioService"

    const-string v5, "Master mute %s, user=%d"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1666
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1667
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1669
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v5, "no_unmute_microphone"

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v4

    .line 1672
    .local v4, "microphoneMute":Z
    const-string v5, "AudioService"

    const-string v7, "Mic mute %s, user=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-static {v4}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1675
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .line 1678
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    .line 1679
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1680
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1681
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    .line 1682
    .local v0, "rescaled":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1683
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    return v1

    .line 1685
    :cond_0
    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .line 4391
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4392
    :try_start_0
    const-string v1, "AudioService"

    const-string v2, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 4394
    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4395
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    .line 4396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4397
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4398
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4399
    const-string/jumbo v0, "resetBluetoothSco"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 4400
    return-void

    .line 4396
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private safeMediaVolumeIndex(I)I
    .locals 2
    .param p1, "device"    # I

    .line 8127
    const v0, 0x400000c

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 8128
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 8130
    :cond_0
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_1

    .line 8131
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    .line 8133
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .line 8476
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8482
    const/4 v0, 0x0

    return-object v0

    .line 8480
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 8479
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 8478
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 8477
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .line 4755
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4756
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2460
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2461
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2464
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2467
    nop

    .line 2468
    return-void

    .line 2466
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 7253
    move-object/from16 v0, p4

    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_0

    .line 7254
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7255
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7254
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v12, v3

    .line 7260
    .local v12, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, -0x7e000000

    const/high16 v6, 0x4000000

    const/4 v7, 0x1

    if-ne v2, v3, :cond_1

    .line 7261
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7262
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 7263
    :cond_1
    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 7267
    :cond_2
    if-ne v2, v6, :cond_4

    .line 7268
    const-string v3, "AudioService"

    const-string/jumbo v8, "lht sendDeviceConnectionInetent Intent.ACTION_HEADSET_PLUG"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7269
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7273
    const-string/jumbo v3, "usbheadset"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7275
    const-string/jumbo v3, "microphone"

    .line 7277
    const-string v8, ""

    .line 7276
    invoke-static {v5, v8}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 7277
    nop

    .line 7275
    move v8, v7

    goto :goto_0

    .line 7277
    :cond_3
    nop

    .line 7275
    move v8, v4

    :goto_0
    invoke-virtual {v12, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 7278
    :cond_4
    if-ne v2, v5, :cond_6

    .line 7279
    const-string v3, ""

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 7281
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7282
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 7285
    :cond_5
    return-void

    .line 7287
    :cond_6
    const/16 v3, 0x400

    if-eq v2, v3, :cond_7

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_9

    .line 7289
    :cond_7
    invoke-direct {v1, v12, v10}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_2

    .line 7265
    :cond_8
    :goto_1
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7266
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7292
    :cond_9
    :goto_2
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    .line 7293
    return-void

    .line 7296
    :cond_a
    const-string/jumbo v3, "state"

    invoke-virtual {v12, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7297
    const-string v3, "address"

    invoke-virtual {v12, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7298
    const-string/jumbo v3, "portName"

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7302
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    invoke-virtual {v3, v10, v11, v0}, Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;->collectHeadPhoneEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 7307
    const-string v3, "American Headset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7308
    const-string/jumbo v3, "standard"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7309
    const-string v0, "Headset"

    .line 7314
    .end local p4    # "deviceName":Ljava/lang/String;
    .local v13, "deviceName":Ljava/lang/String;
    :goto_3
    move-object v13, v0

    goto :goto_4

    .line 7311
    .end local v13    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v3, "standard"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 7314
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v13    # "deviceName":Ljava/lang/String;
    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v14, v3

    .line 7318
    .local v14, "ident":J
    const/4 v0, -0x1

    :try_start_0
    invoke-static {v12, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7320
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7321
    nop

    .line 7324
    iget v0, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    if-ne v0, v7, :cond_f

    if-eq v2, v5, :cond_f

    .line 7325
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 7326
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v8

    .line 7327
    .local v8, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v3, 0x0

    .line 7328
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 7329
    .local v4, "delay":I
    move v5, v7

    .line 7331
    .local v5, "sendKey":Z
    :try_start_1
    invoke-interface {v8}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    .line 7333
    goto :goto_5

    .line 7332
    :catch_0
    move-exception v0

    .line 7334
    move-object v0, v3

    .line 7334
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    :goto_5
    if-eqz v0, :cond_d

    const-string v3, "com.tencent.qqmusic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7335
    const/16 v3, 0x708

    .line 7336
    .end local v4    # "delay":I
    .local v3, "delay":I
    if-ne v2, v6, :cond_c

    .line 7337
    const-string/jumbo v4, "qq.auto.play.delay"

    const/16 v6, 0xc1c

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7340
    .end local v3    # "delay":I
    .local v16, "delay":I
    :cond_c
    move/from16 v16, v3

    goto :goto_6

    .line 7340
    .end local v16    # "delay":I
    .restart local v4    # "delay":I
    :cond_d
    move/from16 v16, v4

    .line 7340
    .end local v4    # "delay":I
    .restart local v16    # "delay":I
    :goto_6
    if-eqz v0, :cond_e

    const-string/jumbo v3, "tv.danmaku.bili"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7341
    const/4 v5, 0x0

    .line 7343
    .end local v5    # "sendKey":Z
    .local v6, "sendKey":Z
    :cond_e
    move v6, v5

    if-ne v6, v7, :cond_f

    .line 7344
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move/from16 v18, v6

    move v6, v10

    .line 7344
    .end local v6    # "sendKey":Z
    .local v18, "sendKey":Z
    move-object/from16 v19, v8

    move-object/from16 v8, v17

    .line 7344
    .end local v8    # "sessionManagerService":Landroid/media/session/ISessionManager;
    .local v19, "sessionManagerService":Landroid/media/session/ISessionManager;
    move-object/from16 v17, v9

    move/from16 v9, v16

    .line 7344
    .end local v9    # "b":Landroid/os/IBinder;
    .local v17, "b":Landroid/os/IBinder;
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7348
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v16    # "delay":I
    .end local v17    # "b":Landroid/os/IBinder;
    .end local v18    # "sendKey":Z
    .end local v19    # "sessionManagerService":Landroid/media/session/ISessionManager;
    :cond_f
    return-void

    .line 7320
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    throw v3
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .locals 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "forceUpdate"    # Z

    .line 1530
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1532
    return-void

    .line 1534
    :cond_0
    const-string v0, "encoded_surround_output_enabled_formats"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "enabledSurroundFormats":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1539
    const-string v0, ""

    .line 1541
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1544
    return-void

    .line 1547
    :cond_2
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1548
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "surroundFormats":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v2, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 1552
    .local v6, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1553
    .local v7, "audioFormat":I
    const/4 v8, 0x0

    .line 1554
    .local v8, "isSurroundFormat":Z
    sget-object v9, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v10, v9

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_4

    aget v12, v9, v11

    .line 1555
    .local v12, "sf":I
    if-ne v12, v7, :cond_3

    .line 1556
    const/4 v8, 0x1

    .line 1557
    goto :goto_2

    .line 1554
    .end local v12    # "sf":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1560
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1561
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    .end local v7    # "audioFormat":I
    .end local v8    # "isSurroundFormat":Z
    :cond_5
    goto :goto_3

    .line 1563
    :catch_0
    move-exception v7

    .line 1564
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid enabled surround format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1569
    :cond_6
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "encoded_surround_output_enabled_formats"

    const-string v5, ","

    .line 1571
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1569
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1572
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x1e

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1573
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .locals 10
    .param p1, "encodedSurroundMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1499
    const/16 v0, 0x10

    .line 1500
    .local v0, "forceSetting":I
    packed-switch p1, :pswitch_data_0

    .line 1514
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1511
    :pswitch_0
    const/16 v0, 0xf

    .line 1512
    goto :goto_0

    .line 1508
    :pswitch_1
    const/16 v0, 0xe

    .line 1509
    goto :goto_0

    .line 1505
    :pswitch_2
    const/16 v0, 0xd

    .line 1506
    goto :goto_0

    .line 1502
    :pswitch_3
    const/4 v0, 0x0

    .line 1503
    nop

    .line 1518
    :goto_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1519
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v9, 0x0

    move v7, v0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1527
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1490
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1493
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1494
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 2519
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2520
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2521
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5245
    if-nez p2, :cond_0

    .line 5246
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5247
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5248
    return-void

    .line 5250
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v0

    .line 5251
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 5253
    .local v1, "time":J
    const/16 v3, 0x65

    if-eq p1, v3, :cond_2

    const/16 v3, 0x66

    if-eq p1, v3, :cond_2

    const/16 v3, 0x69

    if-eq p1, v3, :cond_2

    const/16 v3, 0x64

    if-eq p1, v3, :cond_2

    const/16 v3, 0x67

    if-eq p1, v3, :cond_2

    const/16 v3, 0x6a

    if-ne p1, v3, :cond_4

    .line 5259
    :cond_2
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_3

    .line 5261
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1e

    add-long v1, v3, v5

    .line 5263
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5266
    :cond_4
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5267
    .end local v1    # "time":J
    monitor-exit v0

    .line 5268
    return-void

    .line 5267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2471
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2474
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2477
    nop

    .line 2478
    return-void

    .line 2476
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 4462
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4463
    :try_start_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtScoActiveDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4465
    .local v1, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4467
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4468
    const-string v2, "AudioService"

    const-string/jumbo v3, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    monitor-exit v0

    return-void

    .line 4473
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4474
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4475
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4479
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    const/4 p1, 0x0

    .line 4483
    :cond_2
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4484
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    .line 4485
    const-string v2, "AudioService"

    const-string v3, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 4489
    .end local v1    # "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    monitor-exit v0

    .line 4490
    return-void

    .line 4489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCurrentAudioRouteName(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 7038
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 7039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7040
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7041
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7044
    :cond_0
    monitor-exit v0

    .line 7045
    return-void

    .line 7044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 9
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 6039
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6041
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6044
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 6045
    .local v1, "numStreamTypes":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "streamType":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6046
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    .line 6047
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 6050
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 6051
    .local v3, "streamDevice":I
    if-eq p2, v3, :cond_0

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, p2, 0x380

    if-eqz v4, :cond_0

    .line 6053
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6055
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6045
    .end local v3    # "streamDevice":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6058
    .end local v1    # "numStreamTypes":I
    .end local v2    # "streamType":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6060
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6068
    return-void

    .line 6058
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8922
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8924
    const-string v0, "AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8926
    return-void

    .line 8928
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8930
    const-string v1, "AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8932
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8933
    monitor-exit v0

    .line 8934
    return-void

    .line 8933
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setForceUseInt_SyncDevices(IILjava/lang/String;)V
    .locals 8
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 8049
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 8050
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8053
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8054
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8055
    return-void
.end method

.method private setHearingAidVolume(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 6873
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_1

    .line 6876
    div-int/lit8 v1, p1, 0xa

    const/high16 v2, 0x8000000

    invoke-static {p2, v1, v2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v1

    float-to-int v1, v1

    .line 6878
    .local v1, "gainDB":I
    const/16 v2, -0x80

    if-ge v1, v2, :cond_0

    .line 6879
    const/16 v1, -0x80

    .line 6880
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V

    .line 6882
    .end local v1    # "gainDB":I
    :cond_1
    monitor-exit v0

    .line 6883
    return-void

    .line 6882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 2
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .line 2691
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    .line 2692
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2695
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2697
    return-void

    .line 2699
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2700
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2703
    return-void

    .line 2705
    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 2706
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 5
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2710
    const-string v0, "AudioService"

    const-string v1, "Master mute %s, %d, user=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    .line 2716
    return-void

    .line 2718
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 2719
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2720
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2721
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2722
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 2724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2726
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2729
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .locals 6
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    .line 2835
    const-string v0, "AudioService"

    const-string v1, "Mic mute %s, user=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 2839
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    .line 2840
    .local v0, "currentMute":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2841
    .local v1, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2842
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2843
    if-eq p1, v0, :cond_0

    .line 2844
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 2845
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 2844
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2848
    .end local v0    # "currentMute":Z
    .end local v1    # "identity":J
    :cond_0
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 20
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p3

    .line 3261
    move-object/from16 v9, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeInt(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3263
    :cond_0
    move/from16 v2, p1

    :goto_0
    const/4 v1, 0x0

    .line 3264
    .local v1, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 3265
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return v1

    .line 3269
    :cond_1
    const/4 v3, 0x0

    .line 3270
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3270
    .local v4, "iter":Ljava/util/Iterator;
    :goto_1
    move-object v10, v4

    .line 3271
    .end local v4    # "iter":Ljava/util/Iterator;
    .local v10, "iter":Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 3272
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3273
    .local v4, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 3274
    move-object v3, v4

    .line 3276
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 3277
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3278
    goto :goto_2

    .line 3280
    .end local v4    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_2
    nop

    .line 3270
    move-object v4, v10

    goto :goto_1

    .line 3281
    :cond_3
    :goto_2
    move-object/from16 v4, p2

    move v0, v5

    .line 3281
    .end local p1    # "mode":I
    .end local p2    # "cb":Landroid/os/IBinder;
    .local v0, "status":I
    .local v2, "mode":I
    .local v4, "cb":Landroid/os/IBinder;
    :goto_3
    move v6, v0

    .line 3284
    .end local v0    # "status":I
    .local v6, "status":I
    move v11, v2

    .line 3285
    .local v11, "actualMode":I
    if-nez v2, :cond_6

    .line 3287
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3288
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3289
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3290
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v3, "cb":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v4

    .line 3291
    .end local v11    # "actualMode":I
    .local v4, "actualMode":I
    sget-boolean v11, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v11, :cond_4

    .line 3292
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " using mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " instead due to death hdlr at pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3293
    invoke-static {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$2100(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3292
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_4
    move-object v12, v3

    move v11, v4

    goto :goto_6

    .line 3314
    .end local v3    # "cb":Landroid/os/IBinder;
    .end local v4    # "actualMode":I
    .restart local v11    # "actualMode":I
    .local v12, "cb":Landroid/os/IBinder;
    :cond_5
    :goto_4
    move-object v0, v3

    move-object v12, v4

    goto :goto_6

    .line 3297
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v12    # "cb":Landroid/os/IBinder;
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v4, "cb":Landroid/os/IBinder;
    :cond_6
    if-nez v3, :cond_7

    .line 3298
    new-instance v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v0, v7, v4, v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    move-object v3, v0

    .line 3302
    :cond_7
    :try_start_0
    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3306
    goto :goto_5

    .line 3303
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 3305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3311
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_4

    .line 3314
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v12    # "cb":Landroid/os/IBinder;
    :goto_6
    iget v3, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v13, 0x1

    if-eq v11, v3, :cond_11

    .line 3317
    if-eqz v9, :cond_8

    .line 3318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setModeClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3319
    .local v3, "setModeClient":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 3320
    .end local v3    # "setModeClient":Ljava/lang/String;
    goto :goto_7

    .line 3321
    :cond_8
    const-string/jumbo v3, "setModeClient=nullPackage"

    .line 3322
    .restart local v3    # "setModeClient":Ljava/lang/String;
    const-string/jumbo v4, "setModeClient=nullPackage"

    invoke-static {v4}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 3325
    .end local v3    # "setModeClient":Ljava/lang/String;
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3326
    .local v3, "identity":J
    invoke-static {v11}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v6

    .line 3327
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3328
    if-nez v6, :cond_e

    .line 3329
    sget-boolean v14, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v14, :cond_9

    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mode successfully set to "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_9
    iput v11, v7, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3333
    iget-boolean v5, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    const/16 v14, 0xa

    const/4 v15, 0x6

    if-ne v5, v13, :cond_a

    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3334
    invoke-virtual {v5, v13}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v13, 0xc

    if-ne v5, v13, :cond_a

    .line 3335
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3336
    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v15

    invoke-direct {v7, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/2addr v5, v14

    .line 3337
    .local v5, "currentBtScoVol":I
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v13, v15

    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3338
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v13, v15

    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3339
    const-string v13, "AudioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() revert sco volume to  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    .end local v5    # "currentBtScoVol":I
    :cond_a
    iget v5, v7, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ne v5, v14, :cond_b

    if-ne v11, v14, :cond_b

    const/16 v5, 0x1388

    .line 3342
    invoke-static {v13, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3343
    const/4 v5, 0x6

    invoke-direct {v7, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    .line 3344
    .local v14, "btScoDevice":I
    and-int/lit8 v15, v14, 0x70

    if-eqz v15, :cond_b

    .line 3345
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3346
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v15, v5

    invoke-virtual {v15, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const/16 v15, 0xa

    div-int/2addr v5, v15

    .line 3347
    .restart local v5    # "currentBtScoVol":I
    const-string/jumbo v13, "tts.ring.sco.volume"

    invoke-static {v13, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 3348
    .local v13, "ttsRingScoVol":I
    if-ge v5, v13, :cond_b

    .line 3349
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3350
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/16 v17, 0x6

    aget-object v15, v15, v17

    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v15

    move/from16 v18, v1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 3350
    .end local v1    # "newModeOwnerPid":I
    .local v18, "newModeOwnerPid":I
    invoke-virtual {v15, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3351
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v17

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3352
    const-string v1, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string/jumbo v2, "setMode() set sco volume to  "

    .line 3352
    .end local v2    # "mode":I
    .local v19, "mode":I
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldindex "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "currentBtScoVol":I
    .end local v13    # "ttsRingScoVol":I
    .end local v14    # "btScoDevice":I
    goto :goto_8

    .line 3360
    .end local v18    # "newModeOwnerPid":I
    .end local v19    # "mode":I
    .restart local v1    # "newModeOwnerPid":I
    .restart local v2    # "mode":I
    :cond_b
    move/from16 v18, v1

    move/from16 v19, v2

    .line 3360
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    :goto_8
    const/4 v1, 0x2

    if-ne v11, v1, :cond_c

    .line 3361
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3362
    const-string v1, "AudioService"

    const-string/jumbo v5, "setStreamMute STREAM_MUSIC mute!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 3378
    const/4 v1, 0x0

    goto :goto_9

    .line 3365
    :cond_c
    const/4 v2, 0x3

    :cond_d
    const-string v1, "AudioService"

    const-string/jumbo v5, "setStreamMute STREAM_MUSIC unmute!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 3378
    .end local v3    # "identity":J
    :goto_9
    move/from16 v2, v19

    goto :goto_a

    .line 3370
    .end local v18    # "newModeOwnerPid":I
    .end local v19    # "mode":I
    .restart local v1    # "newModeOwnerPid":I
    .restart local v2    # "mode":I
    .restart local v3    # "identity":J
    :cond_e
    move/from16 v18, v1

    move/from16 v19, v2

    move v1, v5

    .line 3370
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    if-eqz v0, :cond_f

    .line 3371
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3372
    invoke-interface {v12, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3375
    :cond_f
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_10

    const-string v1, "AudioService"

    const-string v2, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_10
    const/4 v2, 0x0

    .line 3378
    .end local v3    # "identity":J
    .end local v19    # "mode":I
    .restart local v2    # "mode":I
    :goto_a
    nop

    .line 3381
    move/from16 v19, v2

    move v13, v6

    goto :goto_b

    .line 3379
    .end local v18    # "newModeOwnerPid":I
    .restart local v1    # "newModeOwnerPid":I
    :cond_11
    move/from16 v18, v1

    move/from16 v19, v2

    .line 3379
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    const/4 v1, 0x0

    .line 3381
    .end local v6    # "status":I
    .local v1, "status":I
    move v13, v1

    .line 3381
    .end local v1    # "status":I
    .local v13, "status":I
    :goto_b
    if-eqz v13, :cond_13

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_c

    .line 3281
    .end local v11    # "actualMode":I
    :cond_12
    move-object v3, v0

    move-object v4, v12

    move v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 3383
    .restart local v11    # "actualMode":I
    :cond_13
    :goto_c
    if-nez v13, :cond_16

    .line 3384
    if-eqz v11, :cond_15

    .line 3385
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3386
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 3388
    :cond_14
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    .line 3392
    .end local v18    # "newModeOwnerPid":I
    .local v1, "newModeOwnerPid":I
    move/from16 v18, v1

    .line 3392
    .end local v1    # "newModeOwnerPid":I
    .restart local v18    # "newModeOwnerPid":I
    :cond_15
    :goto_d
    iget-object v14, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v15, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v15

    move-object v2, v9

    move v3, v8

    move/from16 v4, v19

    move/from16 v5, v18

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v14, v15}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3394
    const/high16 v1, -0x80000000

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v14

    .line 3395
    .local v14, "streamType":I
    invoke-direct {v7, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v15

    .line 3396
    .local v15, "device":I
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v14

    aget-object v1, v1, v2

    invoke-virtual {v1, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v16

    .line 3398
    .local v16, "index":I
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v14

    const/4 v5, 0x1

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, v7

    move/from16 v3, v16

    move v4, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3399
    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3401
    .end local v14    # "streamType":I
    .end local v15    # "device":I
    .end local v16    # "index":I
    :cond_16
    return v18
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 15
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    move-object v1, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    .line 2945
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v2, :cond_a

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 2951
    :cond_0
    iget v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 2952
    if-eqz p3, :cond_1

    iget v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-eq v0, v2, :cond_1

    .line 2953
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2955
    :cond_1
    return-void

    .line 2959
    :cond_2
    if-eqz v10, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 2962
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 2963
    if-ne v0, v8, :cond_3

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_3

    .line 2964
    const/4 v0, 0x0

    .line 2966
    .end local p1    # "ringerMode":I
    .local v11, "ringerMode":I
    :cond_3
    move v11, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 2968
    .local v12, "identity":J
    :try_start_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2969
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    .line 2970
    .local v0, "ringerModeInternal":I
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    .line 2971
    .local v3, "ringerModeExternal":I
    const/4 v2, 0x2

    if-eqz p3, :cond_5

    .line 2972
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2973
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_4

    .line 2975
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_4

    .line 2976
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v11

    move-object v5, v10

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    .line 2979
    :cond_4
    if-eq v11, v0, :cond_8

    .line 2980
    invoke-direct {v1, v11, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_0

    .line 2983
    :cond_5
    if-eq v11, v0, :cond_6

    .line 2984
    invoke-direct {v1, v11, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2986
    :cond_6
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_7

    .line 2988
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_7

    .line 2989
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v0

    move v6, v11

    move-object v7, v10

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    .line 2992
    :cond_7
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2994
    .end local v0    # "ringerModeInternal":I
    .end local v3    # "ringerModeExternal":I
    :cond_8
    :goto_0
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2996
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2997
    nop

    .line 2998
    return-void

    .line 2994
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2996
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2960
    .end local v11    # "ringerMode":I
    .end local v12    # "identity":J
    .restart local p1    # "ringerMode":I
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2946
    :cond_a
    :goto_1
    return-void
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 3001
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3002
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    .line 3003
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 3004
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3007
    return-void

    .line 3004
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .locals 10
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .line 3094
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3095
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3096
    .local v1, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3097
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 3098
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 3104
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer"

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3105
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerModeInt set ringerMode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to database to avoid user-switch and data do not store in time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_1
    if-eqz p2, :cond_2

    .line 3111
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3114
    :cond_2
    if-eqz v1, :cond_3

    .line 3116
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3119
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->updateHeadsetNotificationStatus()V

    .line 3122
    :cond_3
    return-void

    .line 3098
    .end local v1    # "change":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 10
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 8138
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 8141
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 8142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8143
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    .line 8144
    :cond_0
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 8145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8146
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 8147
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 8148
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8157
    :cond_1
    :goto_0
    monitor-exit v0

    .line 8158
    return-void

    .line 8157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 2258
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume(stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", calling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-boolean v2, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_0

    .line 2262
    return-void

    .line 2265
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2266
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v2, v8

    .line 2267
    .local v11, "streamTypeAlias":I
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v2, v11

    .line 2269
    .local v12, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    .line 2274
    .local v13, "device":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v3, "android.media.cts"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2279
    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    if-ge v0, v2, :cond_1

    .line 2280
    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 2282
    .end local p2    # "index":I
    .local v0, "index":I
    :cond_1
    if-eqz v10, :cond_2

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2283
    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    if-le v0, v2, :cond_2

    .line 2284
    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 2287
    :cond_2
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume range fixed to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] by system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    .end local v0    # "index":I
    .local v2, "index":I
    :cond_3
    move v2, v0

    and-int/lit16 v0, v13, 0x380

    if-nez v0, :cond_4

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_4

    .line 2296
    return-void

    .line 2300
    :cond_4
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_5

    .line 2301
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2304
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v14, v0

    goto :goto_0

    .line 2304
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_5
    move v14, v3

    .line 2304
    .end local p6    # "uid":I
    .local v14, "uid":I
    :goto_0
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v11

    invoke-virtual {v0, v3, v14, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 2306
    return-void

    .line 2309
    :cond_6
    invoke-direct {v7, v9}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2310
    invoke-direct {v7, v11, v2, v1}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2311
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 2312
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2315
    :cond_8
    :goto_1
    invoke-direct {v7, v11, v1}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2316
    return-void

    .line 2319
    :cond_9
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v15

    .line 2321
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2323
    invoke-virtual {v12, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v6, v0

    .line 2325
    .local v6, "oldIndex":I
    mul-int/lit8 v0, v2, 0xa

    invoke-direct {v7, v0, v8, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    move v2, v0

    .line 2327
    const/4 v0, 0x3

    if-ne v11, v0, :cond_b

    and-int/lit16 v3, v13, 0x380

    if-eqz v3, :cond_b

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_b

    .line 2330
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2331
    :try_start_1
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_a

    iget-boolean v4, v7, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_a

    .line 2332
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v5, v2, 0xa

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2334
    :cond_a
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 2337
    :cond_b
    :goto_2
    const/high16 v3, 0x8000000

    and-int/2addr v3, v13

    if-eqz v3, :cond_c

    .line 2338
    invoke-direct {v7, v2, v8}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 2341
    :cond_c
    if-ne v11, v0, :cond_d

    .line 2342
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    invoke-direct {v7, v6, v2, v3, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2345
    :cond_d
    and-int/lit8 v1, v1, -0x21

    .line 2346
    .end local p3    # "flags":I
    .local v1, "flags":I
    if-ne v11, v0, :cond_f

    iget v3, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v13

    if-eqz v3, :cond_f

    .line 2348
    or-int/lit8 v1, v1, 0x20

    .line 2351
    if-eqz v2, :cond_f

    .line 2352
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_e

    const v0, 0x400000c

    and-int/2addr v0, v13

    if-eqz v0, :cond_e

    .line 2354
    invoke-direct {v7, v13}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    goto :goto_3

    .line 2356
    :cond_e
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 2361
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .local v0, "index":I
    .local v4, "flags":I
    .local v5, "index":I
    :goto_3
    move v5, v0

    move v4, v1

    goto :goto_4

    .line 2361
    .end local v0    # "index":I
    .end local v4    # "flags":I
    .end local v5    # "index":I
    .restart local v1    # "flags":I
    .restart local v2    # "index":I
    :cond_f
    move v4, v1

    move v5, v2

    .line 2361
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .restart local v4    # "flags":I
    .restart local v5    # "index":I
    :goto_4
    :try_start_3
    invoke-direct {v7, v11, v5, v13}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v0, :cond_10

    .line 2362
    :try_start_4
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2363
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move/from16 v16, v4

    move v4, v5

    .line 2363
    .end local v4    # "flags":I
    .local v16, "flags":I
    move/from16 v17, v5

    move/from16 v5, v16

    .line 2363
    .end local v5    # "index":I
    .local v17, "index":I
    move v9, v6

    move v6, v13

    .line 2363
    .end local v6    # "oldIndex":I
    .local v9, "oldIndex":I
    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2369
    move/from16 v2, v17

    goto :goto_5

    .line 2369
    .end local v9    # "oldIndex":I
    :catchall_1
    move-exception v0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_7

    .line 2369
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v4    # "flags":I
    .restart local v5    # "index":I
    :catchall_2
    move-exception v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v1, v16

    move/from16 v2, v17

    .line 2369
    .end local v4    # "flags":I
    .end local v5    # "index":I
    .restart local v16    # "flags":I
    .restart local v17    # "index":I
    goto :goto_7

    .line 2366
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v4    # "flags":I
    .restart local v5    # "index":I
    .restart local v6    # "oldIndex":I
    :cond_10
    move/from16 v16, v4

    move/from16 v17, v5

    move v9, v6

    .line 2366
    .end local v4    # "flags":I
    .end local v5    # "index":I
    .end local v6    # "oldIndex":I
    .restart local v9    # "oldIndex":I
    .restart local v16    # "flags":I
    .restart local v17    # "index":I
    move-object v1, v7

    move v2, v8

    move/from16 v3, v17

    move v5, v13

    move-object v6, v10

    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2367
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2369
    .end local v17    # "index":I
    .restart local v0    # "index":I
    move v2, v0

    .line 2369
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :goto_5
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2370
    move/from16 v1, v16

    invoke-virtual {v7, v8, v9, v2, v1}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2371
    .end local v16    # "flags":I
    .restart local v1    # "flags":I
    return-void

    .line 2369
    .end local v1    # "flags":I
    .end local v9    # "oldIndex":I
    .restart local v16    # "flags":I
    :catchall_3
    move-exception v0

    move/from16 v1, v16

    goto :goto_6

    .line 2369
    .end local v2    # "index":I
    .restart local v17    # "index":I
    :catchall_4
    move-exception v0

    move/from16 v1, v16

    move/from16 v2, v17

    .line 2369
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v1    # "flags":I
    .restart local v2    # "index":I
    :goto_6
    goto :goto_7

    .line 2369
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .restart local v4    # "flags":I
    .restart local v5    # "index":I
    :catchall_5
    move-exception v0

    move v1, v4

    move/from16 v17, v5

    move/from16 v2, v17

    .line 2369
    .end local v4    # "flags":I
    .end local v5    # "index":I
    .restart local v1    # "flags":I
    .restart local v17    # "index":I
    goto :goto_7

    .line 2369
    .end local v1    # "flags":I
    .end local v17    # "index":I
    .restart local v2    # "index":I
    .restart local p3    # "flags":I
    :catchall_6
    move-exception v0

    .line 2369
    .end local p3    # "flags":I
    .restart local v1    # "flags":I
    :goto_7
    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .line 2546
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2548
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v0, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p4, :cond_1

    .line 2551
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2559
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .line 2562
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2563
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 2564
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2565
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2566
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2568
    .local v2, "token":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2570
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    nop

    .line 2572
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2573
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2574
    return-void

    .line 2570
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2572
    .end local v2    # "token":J
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 2573
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 2562
    :cond_2
    :goto_0
    return-void
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .line 2050
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_2

    if-eq p1, p2, :cond_2

    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2057
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 2058
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2059
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2060
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2062
    .local v2, "token":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2064
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    nop

    .line 2066
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2067
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2068
    return-void

    .line 2064
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2066
    .end local v2    # "token":J
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 2067
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 2053
    :cond_2
    :goto_0
    return-void
.end method

.method private shouldZenMuteStream(I)Z
    .locals 8
    .param p1, "streamType"    # I

    .line 4961
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 4962
    return v1

    .line 4965
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 4966
    .local v0, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4968
    .local v3, "muteAlarms":Z
    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 4970
    .local v4, "muteMedia":Z
    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    .line 4972
    .local v5, "muteSystem":Z
    :goto_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4973
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 4974
    .local v6, "muteNotificationAndRing":Z
    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    .line 4975
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    .line 4976
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    .line 4977
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4974
    :cond_7
    move v1, v2

    goto :goto_3

    .line 4977
    :cond_8
    nop

    .line 4974
    :goto_3
    return v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .locals 4
    .param p1, "a11VolEnabled"    # Z

    .line 8333
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility volume enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1

    .line 8335
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8337
    const-string v0, "AudioService"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 8339
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8340
    goto :goto_0

    .line 8341
    :cond_0
    nop

    .line 8339
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 8342
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 8344
    :cond_1
    return-void
.end method

.method private updateAudioRoutes(II)V
    .locals 11
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 7219
    const/4 v0, 0x0

    .line 7221
    .local v0, "connType":I
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 7222
    const/4 v0, 0x1

    goto :goto_2

    .line 7223
    :cond_0
    const/16 v1, 0x8

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 7226
    :cond_1
    const/16 v1, 0x400

    if-eq p1, v1, :cond_4

    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 7229
    :cond_2
    const/16 v1, 0x4000

    if-eq p1, v1, :cond_3

    const/high16 v1, 0x4000000

    if-ne p1, v1, :cond_6

    .line 7231
    :cond_3
    const/16 v0, 0x10

    goto :goto_2

    .line 7228
    :cond_4
    :goto_0
    const/16 v0, 0x8

    goto :goto_2

    .line 7225
    :cond_5
    :goto_1
    const/4 v0, 0x2

    .line 7234
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 7235
    if-eqz v0, :cond_8

    .line 7236
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7237
    .local v2, "newConn":I
    if-eqz p2, :cond_7

    .line 7238
    or-int/2addr v2, v0

    goto :goto_3

    .line 7240
    :cond_7
    not-int v3, v0

    and-int/2addr v2, v3

    .line 7242
    :goto_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_8

    .line 7243
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7244
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .end local v2    # "newConn":I
    goto :goto_4

    .line 7248
    :catchall_0
    move-exception v2

    goto :goto_5

    :cond_8
    :goto_4
    monitor-exit v1

    .line 7249
    return-void

    .line 7248
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .locals 3
    .param p1, "touchExploreEnabled"    # Z

    .line 8311
    if-eqz p1, :cond_0

    .line 8312
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_0

    .line 8314
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 8316
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch exploration enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stream override delay is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    return-void
.end method

.method private updateDefaultVolumes()V
    .locals 4

    .line 1369
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1370
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_0

    .line 1371
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    .line 1369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1377
    .end local v0    # "stream":I
    :cond_1
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 2506
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 2507
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v0

    .line 2508
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_0

    .line 2510
    and-int/lit8 p1, p1, -0x2

    .line 2512
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2514
    :cond_1
    :goto_0
    return p1
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1480
    const-string/jumbo v0, "master_mono"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1483
    .local v0, "masterMono":Z
    :goto_0
    const-string v3, "AudioService"

    const-string v4, "Master mono %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1486
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 5022
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 5023
    .local v0, "updatedZenModeAffectedStreams":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/4 v3, -0x2

    const/16 v4, 0xa6

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 5029
    .local v1, "ringerModeAffectedStreams":I
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_0

    .line 5030
    const/4 v1, 0x0

    goto :goto_0

    .line 5031
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v2, :cond_1

    .line 5032
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 5033
    invoke-interface {v2, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 5035
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v2, :cond_2

    .line 5036
    and-int/lit16 v1, v1, -0x81

    goto :goto_1

    .line 5038
    :cond_2
    or-int/lit16 v1, v1, 0x80

    .line 5040
    :goto_1
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v4, 0x8

    aget v2, v2, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 5041
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 5043
    :cond_3
    and-int/lit16 v1, v1, -0x101

    .line 5046
    :goto_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v2, :cond_4

    .line 5047
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mode_ringer_streams_affected"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5051
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5052
    const/4 v2, 0x1

    return v2

    .line 5054
    :cond_4
    return v0
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 22
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1393
    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v0, :cond_0

    .line 1394
    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    .line 1396
    .local v5, "a11yStreamAlias":I
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1398
    const/4 v3, 0x3

    .local v3, "dtmfStreamAlias":I
    goto :goto_1

    .line 1400
    .end local v3    # "dtmfStreamAlias":I
    :cond_1
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    .line 1406
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1407
    goto :goto_1

    .line 1402
    :cond_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1403
    const/4 v3, 0x2

    .line 1404
    .restart local v3    # "dtmfStreamAlias":I
    nop

    .line 1407
    :goto_1
    move v0, v3

    .line 1411
    .end local v3    # "dtmfStreamAlias":I
    .local v0, "dtmfStreamAlias":I
    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 1412
    iput v6, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    .line 1414
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1415
    const/4 v0, 0x0

    .line 1416
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    .line 1418
    :cond_4
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1422
    .end local v0    # "dtmfStreamAlias":I
    .restart local v3    # "dtmfStreamAlias":I
    :goto_2
    move v3, v0

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    aput v3, v0, v7

    .line 1423
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v5, v0, v4

    .line 1425
    if-eqz p1, :cond_6

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_6

    .line 1426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1428
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1429
    :try_start_0
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1430
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v3

    .line 1431
    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1432
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-static {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1202(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1434
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v5

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1436
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->refreshRange(I)V

    .line 1438
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1439
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1440
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_5

    .line 1442
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1446
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1447
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v7

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1453
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v20, v6, v4

    const/16 v21, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3

    .line 1438
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1439
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1460
    :cond_6
    :goto_3
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 7489
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7490
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7491
    .local v0, "prevState":Ljava/lang/Integer;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTwsPlusScoState: prevState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7492
    if-eq p2, v0, :cond_0

    .line 7493
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7494
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7496
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 7497
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7499
    :goto_0
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .locals 4

    .line 4993
    const/4 v0, 0x0

    .line 4994
    .local v0, "zenModeAffectedStreams":I
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 4995
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 4996
    .local v1, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_0

    .line 4998
    or-int/lit8 v0, v0, 0x10

    .line 5001
    :cond_0
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_1

    .line 5003
    or-int/lit8 v0, v0, 0x8

    .line 5006
    :cond_1
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    .line 5008
    or-int/lit8 v0, v0, 0x2

    .line 5012
    .end local v1    # "zenPolicy":Landroid/app/NotificationManager$Policy;
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v1, v0, :cond_3

    .line 5013
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 5014
    return v2

    .line 5017
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 2
    .param p1, "streamTypeAlias"    # I
    .param p2, "flags"    # I

    .line 2375
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2386
    return v1

    .line 2381
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2382
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 2381
    :cond_1
    :goto_0
    return v1

    .line 2377
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .line 1300
    monitor-enter p0

    .line 1301
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1304
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :goto_1
    goto :goto_0

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1309
    :cond_0
    monitor-exit p0

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "delay_ms"    # I

    .line 5108
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5109
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5108
    :goto_1
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .locals 2
    .param p1, "newMode"    # I

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2132
    return v1

    .line 2133
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2135
    return v1

    .line 2137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method IsOnEUArea(Ljava/lang/String;)Z
    .locals 41
    .param p1, "Listeningarea"    # Ljava/lang/String;

    .line 1122
    const-string v0, "ca_ES"

    const-string v1, "ca_AD"

    const-string v2, "ca_FR"

    const-string v3, "ca_IT"

    const-string v4, "cs_CZ"

    const-string v5, "de_DE"

    const-string v6, "de_AT"

    const-string v7, "de_BE"

    const-string v8, "de_LU"

    const-string/jumbo v9, "hr_HR"

    const-string/jumbo v10, "it_IT"

    const-string v11, "en_GB"

    const-string v12, "en_AT"

    const-string v13, "en_BE"

    const-string v14, "en_CY"

    const-string v15, "en_DK"

    const-string v16, "en_FI"

    const-string v17, "en_DE"

    const-string v18, "en_IE"

    const-string v19, "en_MT"

    const-string v20, "en_NL"

    const-string v21, "en_SI"

    const-string v22, "en_SE"

    const-string v23, "es_ES"

    const-string v24, "fr_BE"

    const-string v25, "fr_FR"

    const-string v26, "fr_LU"

    const-string/jumbo v27, "hu_HU"

    const-string/jumbo v28, "nl_BE"

    const-string/jumbo v29, "nl_NL"

    const-string/jumbo v30, "pl_PL"

    const-string/jumbo v31, "pt_PT"

    const-string/jumbo v32, "ro_RO"

    const-string/jumbo v33, "sk_SK"

    const-string v34, "fi_FI"

    const-string/jumbo v35, "sv_SE"

    const-string/jumbo v36, "sv_FI"

    const-string/jumbo v37, "tr_CY"

    const-string v38, "el_GR"

    const-string v39, "el_CY"

    const-string v40, "da_DK"

    filled-new-array/range {v0 .. v40}, [Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 1129
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1130
    aget-object v3, v0, v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1131
    const/4 v1, 0x1

    return v1

    .line 1129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    .end local v2    # "i":I
    :cond_1
    move-object/from16 v4, p1

    return v1
.end method

.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 7947
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8863
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8865
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8866
    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8867
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8868
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_1

    .line 8869
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8871
    :cond_1
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)V

    .line 8872
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8873
    const/4 v0, 0x0

    return v0

    .line 8872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1772
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return-void

    .line 1777
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1779
    nop

    .line 1780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1779
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1781
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 31
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p5

    .line 1785
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_0

    .line 1787
    const-string v2, "AudioService"

    const-string/jumbo v3, "mUseFixedVolume!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return-void

    .line 1791
    :cond_0
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1795
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1797
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v11

    .line 1799
    .local v11, "isMuteAdjust":Z
    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1801
    const-string v2, "AudioService"

    const-string v3, "be mute!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void

    .line 1808
    :cond_1
    if-eqz v11, :cond_2

    if-nez v9, :cond_2

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    .line 1810
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1813
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1813
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    .line 1821
    :cond_2
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v2, v9

    .line 1823
    .local v15, "streamTypeAlias":I
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v2, v15

    .line 1825
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {v8, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    .line 1827
    .local v13, "device":I
    invoke-virtual {v14, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1828
    .local v2, "aliasIndex":I
    const/4 v12, 0x1

    .line 1833
    .local v12, "adjustVolume":Z
    const/4 v6, -0x1

    const/16 v3, 0xa

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ne v15, v5, :cond_8

    if-eqz v10, :cond_8

    new-instance v4, Ljava/lang/String;

    const-string v5, "android.media.cts"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1835
    if-ne v0, v6, :cond_3

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    mul-int/2addr v4, v3

    if-le v2, v4, :cond_4

    :cond_3
    if-ne v0, v7, :cond_5

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    mul-int/2addr v4, v3

    if-lt v2, v4, :cond_5

    .line 1837
    :cond_4
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "volume range fixed to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] by system"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/4 v0, 0x0

    .line 1842
    .end local p2    # "direction":I
    .local v0, "direction":I
    :cond_5
    const/16 v6, -0x64

    if-eq v0, v6, :cond_6

    const/16 v4, 0x64

    if-ne v0, v4, :cond_9

    .line 1843
    :cond_6
    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v4, v7, :cond_7

    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    move v4, v0

    :goto_0
    move v0, v4

    goto :goto_1

    .line 1850
    .end local v0    # "direction":I
    .restart local p2    # "direction":I
    :cond_8
    const/16 v6, -0x64

    .line 1850
    .end local p2    # "direction":I
    .local v5, "direction":I
    :cond_9
    :goto_1
    move v5, v0

    and-int/lit16 v0, v13, 0x380

    if-nez v0, :cond_a

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_a

    .line 1853
    const-string v0, "AudioService"

    const-string/jumbo v3, "skip a2dp absolute volume control!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    return-void

    .line 1860
    :cond_a
    const/16 v0, 0x3e8

    move/from16 v4, p6

    if-ne v4, v0, :cond_b

    .line 1861
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v0, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1864
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v6, v0

    goto :goto_2

    .line 1864
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_b
    move v6, v4

    .line 1864
    .end local p6    # "uid":I
    .local v6, "uid":I
    :goto_2
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v15

    move-object/from16 v7, p4

    invoke-virtual {v0, v4, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 1867
    const-string v0, "AudioService"

    const-string v3, "NOT ALLOWE!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return-void

    .line 1873
    :cond_c
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1874
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1875
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1877
    and-int/lit8 v0, v1, -0x21

    .line 1878
    .end local p3    # "flags":I
    .local v0, "flags":I
    const/4 v4, 0x3

    if-ne v15, v4, :cond_e

    iget v1, v8, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v13

    if-eqz v1, :cond_e

    .line 1880
    or-int/lit8 v0, v0, 0x20

    .line 1885
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_d

    const v1, 0x400000c

    and-int/2addr v1, v13

    if-eqz v1, :cond_d

    .line 1887
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    .line 1887
    .local v1, "step":I
    goto :goto_3

    .line 1889
    .end local v1    # "step":I
    :cond_d
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1891
    .restart local v1    # "step":I
    :goto_3
    if-eqz v2, :cond_f

    .line 1892
    move v2, v1

    goto :goto_4

    .line 1896
    .end local v1    # "step":I
    :cond_e
    invoke-direct {v8, v3, v9, v15}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1896
    .end local v2    # "aliasIndex":I
    .restart local v1    # "step":I
    .local v23, "aliasIndex":I
    :cond_f
    :goto_4
    move/from16 v23, v2

    move/from16 v27, v1

    .line 1901
    .end local v1    # "step":I
    .local v27, "step":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_11

    .line 1902
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v15, v1, :cond_10

    goto :goto_5

    .line 1925
    :cond_10
    move v7, v0

    move/from16 v24, v6

    move v2, v12

    const/4 v10, 0x1

    move v12, v5

    goto :goto_7

    .line 1903
    :cond_11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    .line 1905
    .local v3, "ringerMode":I
    const/4 v2, 0x1

    if-ne v3, v2, :cond_12

    .line 1906
    and-int/lit8 v0, v0, -0x11

    .line 1910
    :cond_12
    nop

    .line 1911
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v16

    .line 1910
    move-object v1, v8

    move/from16 v17, v2

    move/from16 v2, v23

    move/from16 v18, v3

    move v3, v5

    .line 1910
    .end local v3    # "ringerMode":I
    .local v18, "ringerMode":I
    move/from16 v28, v12

    move v12, v4

    move/from16 v4, v27

    .line 1910
    .end local v12    # "adjustVolume":Z
    .local v28, "adjustVolume":Z
    move v12, v5

    move/from16 v5, v16

    .line 1910
    .end local v5    # "direction":I
    .local v12, "direction":I
    move/from16 v24, v6

    const/16 v16, -0x64

    move-object v6, v7

    .line 1910
    .end local v6    # "uid":I
    .local v24, "uid":I
    move/from16 v10, v17

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    .line 1912
    .local v1, "result":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_13

    move v2, v10

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    .line 1914
    .end local v28    # "adjustVolume":Z
    .local v2, "adjustVolume":Z
    :goto_6
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_14

    .line 1915
    or-int/lit16 v0, v0, 0x80

    .line 1918
    :cond_14
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_15

    .line 1919
    or-int/lit16 v0, v0, 0x800

    .line 1925
    .end local v0    # "flags":I
    .end local v1    # "result":I
    .end local v18    # "ringerMode":I
    .local v7, "flags":I
    :cond_15
    move v7, v0

    :goto_7
    invoke-direct {v8, v15, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1926
    const/4 v2, 0x0

    .line 1928
    .end local v2    # "adjustVolume":Z
    .local v25, "adjustVolume":Z
    :cond_16
    move/from16 v25, v2

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1930
    .local v6, "oldIndex":I
    if-eqz v25, :cond_2b

    if-eqz v12, :cond_2b

    .line 1931
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1933
    if-eqz v11, :cond_1d

    .line 1935
    const/16 v0, 0x65

    if-ne v12, v0, :cond_17

    .line 1936
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    xor-int/2addr v0, v10

    .line 1936
    .local v0, "state":Z
    goto :goto_8

    .line 1938
    .end local v0    # "state":Z
    :cond_17
    const/16 v0, -0x64

    if-ne v12, v0, :cond_18

    move v0, v10

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    .line 1940
    .restart local v0    # "state":Z
    :goto_8
    const/4 v2, 0x3

    if-ne v15, v2, :cond_19

    .line 1941
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1943
    :cond_19
    const/4 v3, 0x0

    .line 1943
    .local v3, "stream":I
    :goto_9
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v4, v4

    if-ge v3, v4, :cond_1c

    .line 1944
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v3

    if-ne v15, v4, :cond_1b

    .line 1945
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    .line 1946
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1b

    .line 1948
    :cond_1a
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1943
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1952
    .end local v0    # "state":Z
    .end local v3    # "stream":I
    :cond_1c
    goto :goto_a

    :cond_1d
    const/4 v2, 0x3

    if-ne v12, v10, :cond_1e

    add-int v0, v23, v27

    .line 1953
    invoke-direct {v8, v15, v0, v13}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1954
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1981
    .end local v12    # "direction":I
    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .local v3, "direction":I
    .local v5, "device":I
    .local v26, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v29, "streamTypeAlias":I
    :goto_a
    move v1, v2

    move v0, v10

    move v3, v12

    move v5, v13

    move-object/from16 v26, v14

    move/from16 v29, v15

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object/from16 v10, p5

    goto/16 :goto_d

    .line 1956
    .end local v3    # "direction":I
    .end local v5    # "device":I
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v29    # "streamTypeAlias":I
    .restart local v12    # "direction":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_1e
    mul-int v5, v12, v27

    move v0, v10

    move-object/from16 v10, p5

    invoke-virtual {v14, v5, v13, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1957
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_b

    .line 1981
    :cond_1f
    move v1, v2

    move v3, v12

    move v5, v13

    move-object/from16 v26, v14

    move/from16 v29, v15

    const/4 v2, 0x0

    const/4 v4, -0x1

    goto/16 :goto_d

    .line 1960
    :cond_20
    :goto_b
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1962
    if-ne v12, v0, :cond_21

    .line 1964
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1972
    move v1, v2

    move v2, v3

    move v3, v12

    move v5, v13

    move-object/from16 v26, v14

    move/from16 v29, v15

    const/4 v4, -0x1

    goto :goto_c

    .line 1965
    :cond_21
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v12, v4, :cond_22

    .line 1966
    iget-boolean v5, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_22

    .line 1967
    iget-object v5, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0x18

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x15e

    move v1, v2

    move v2, v3

    move v3, v12

    move-object v12, v5

    .line 1967
    .end local v12    # "direction":I
    .restart local v3    # "direction":I
    move v5, v13

    move/from16 v13, v16

    .line 1967
    .end local v13    # "device":I
    .restart local v5    # "device":I
    move-object/from16 v26, v14

    move/from16 v14, v17

    .line 1967
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move/from16 v29, v15

    .line 1967
    .end local v15    # "streamTypeAlias":I
    .restart local v29    # "streamTypeAlias":I
    move/from16 v16, v7

    move-object/from16 v17, v18

    move/from16 v18, v19

    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_c

    .line 1972
    .end local v3    # "direction":I
    .end local v5    # "device":I
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v29    # "streamTypeAlias":I
    .restart local v12    # "direction":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_22
    move v1, v2

    move v2, v3

    move v3, v12

    move v5, v13

    move-object/from16 v26, v14

    move/from16 v29, v15

    goto :goto_c

    :cond_23
    move v1, v2

    move v3, v12

    move v5, v13

    move-object/from16 v26, v14

    move/from16 v29, v15

    const/4 v2, 0x0

    const/4 v4, -0x1

    .end local v12    # "direction":I
    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v3    # "direction":I
    .restart local v5    # "device":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v29    # "streamTypeAlias":I
    :goto_c
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move/from16 v19, v5

    move-object/from16 v21, v26

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1981
    :goto_d
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v12, v9

    invoke-virtual {v12, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1984
    .local v12, "newIndex":I
    move/from16 v13, v29

    if-ne v13, v1, :cond_25

    .line 1984
    .end local v29    # "streamTypeAlias":I
    .local v13, "streamTypeAlias":I
    and-int/lit16 v14, v5, 0x380

    if-eqz v14, :cond_25

    and-int/lit8 v14, v7, 0x40

    if-nez v14, :cond_25

    .line 1987
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1988
    :try_start_1
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v15, :cond_24

    iget-boolean v15, v8, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v15, :cond_24

    .line 1989
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, v12, 0xa

    invoke-virtual {v15, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1991
    :cond_24
    monitor-exit v14

    goto :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1995
    :cond_25
    :goto_e
    const/high16 v2, 0x8000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_26

    .line 1996
    invoke-direct {v8, v12, v9}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 2000
    :cond_26
    if-ne v13, v1, :cond_27

    .line 2001
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    invoke-direct {v8, v6, v12, v2, v7}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2003
    :cond_27
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2a

    .line 2004
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    .line 2006
    :try_start_2
    iget-boolean v14, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v14, :cond_29

    if-ne v13, v1, :cond_29

    if-eq v6, v12, :cond_29

    .line 2009
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2010
    if-ne v3, v4, :cond_28

    const/16 v4, 0x19

    goto :goto_f

    .line 2011
    :cond_28
    const/16 v4, 0x18

    .line 2012
    .local v4, "keyCode":I
    :goto_f
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2014
    .local v14, "ident":J
    :try_start_4
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v30, v3

    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {v0, v4, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2015
    .end local v3    # "direction":I
    .local v30, "direction":I
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2017
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2018
    nop

    .line 2019
    .end local v4    # "keyCode":I
    .end local v14    # "ident":J
    monitor-exit v1

    goto :goto_12

    .line 2017
    .restart local v4    # "keyCode":I
    .restart local v14    # "ident":J
    :catchall_1
    move-exception v0

    goto :goto_10

    .line 2017
    .end local v30    # "direction":I
    .restart local v3    # "direction":I
    :catchall_2
    move-exception v0

    move/from16 v30, v3

    .line 2017
    .end local v3    # "direction":I
    .restart local v30    # "direction":I
    :goto_10
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2019
    .end local v4    # "keyCode":I
    .end local v14    # "ident":J
    .end local v30    # "direction":I
    .restart local v3    # "direction":I
    :catchall_3
    move-exception v0

    move/from16 v30, v3

    .line 2019
    .end local v3    # "direction":I
    .restart local v30    # "direction":I
    :goto_11
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_11

    .line 2021
    .end local v30    # "direction":I
    .restart local v3    # "direction":I
    :cond_29
    move/from16 v30, v3

    const/4 v3, 0x0

    .line 2021
    .end local v3    # "direction":I
    .restart local v30    # "direction":I
    :goto_12
    monitor-exit v2

    goto :goto_14

    .line 2021
    .end local v30    # "direction":I
    .restart local v3    # "direction":I
    :catchall_5
    move-exception v0

    move/from16 v30, v3

    .line 2021
    .end local v3    # "direction":I
    .restart local v30    # "direction":I
    :goto_13
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_13

    .line 2024
    .end local v12    # "newIndex":I
    .end local v30    # "direction":I
    .restart local v3    # "direction":I
    :cond_2a
    move/from16 v30, v3

    const/4 v3, 0x0

    .line 2024
    .end local v3    # "direction":I
    .restart local v30    # "direction":I
    goto :goto_14

    .line 2024
    .end local v5    # "device":I
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v30    # "direction":I
    .local v12, "direction":I
    .local v13, "device":I
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_2b
    move/from16 v30, v12

    move v5, v13

    move-object/from16 v26, v14

    move v13, v15

    const/4 v3, 0x0

    move-object/from16 v10, p5

    .line 2024
    .end local v12    # "direction":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v5    # "device":I
    .local v13, "streamTypeAlias":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v30    # "direction":I
    :goto_14
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 2025
    .local v0, "index":I
    invoke-virtual {v8, v9, v6, v0, v7}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2028
    const/4 v12, 0x2

    if-ne v9, v12, :cond_2d

    if-eqz v0, :cond_2d

    if-ne v5, v12, :cond_2d

    .line 2029
    nop

    .line 2029
    .local v3, "i":I
    :goto_15
    move v14, v3

    .line 2029
    .end local v3    # "i":I
    .local v14, "i":I
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_2d

    .line 2030
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2031
    .local v15, "mapDevice":I
    if-eq v15, v12, :cond_2c

    .line 2032
    const/16 v16, 0x0

    move-object v1, v8

    move v2, v9

    move/from16 v17, v30

    move v3, v0

    .line 2032
    .end local v30    # "direction":I
    .local v17, "direction":I
    move v4, v15

    move/from16 v18, v5

    move/from16 v5, v16

    .line 2032
    .end local v5    # "device":I
    .local v18, "device":I
    move/from16 v16, v6

    move-object v6, v10

    .line 2032
    .end local v6    # "oldIndex":I
    .local v16, "oldIndex":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2032
    .end local v15    # "mapDevice":I
    goto :goto_16

    .line 2029
    .end local v16    # "oldIndex":I
    .end local v17    # "direction":I
    .end local v18    # "device":I
    .restart local v5    # "device":I
    .restart local v6    # "oldIndex":I
    .restart local v30    # "direction":I
    :cond_2c
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v17, v30

    .line 2029
    .end local v5    # "device":I
    .end local v6    # "oldIndex":I
    .end local v30    # "direction":I
    .restart local v16    # "oldIndex":I
    .restart local v17    # "direction":I
    .restart local v18    # "device":I
    :goto_16
    add-int/lit8 v3, v14, 0x1

    .line 2029
    .end local v14    # "i":I
    .restart local v3    # "i":I
    move/from16 v6, v16

    move/from16 v30, v17

    move/from16 v5, v18

    goto :goto_15

    .line 2037
    .end local v3    # "i":I
    .end local v16    # "oldIndex":I
    .end local v17    # "direction":I
    .end local v18    # "device":I
    .restart local v5    # "device":I
    .restart local v6    # "oldIndex":I
    .restart local v30    # "direction":I
    :cond_2d
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v17, v30

    .line 2037
    .end local v5    # "device":I
    .end local v6    # "oldIndex":I
    .end local v30    # "direction":I
    .restart local v16    # "oldIndex":I
    .restart local v17    # "direction":I
    .restart local v18    # "device":I
    return-void

    .line 1875
    .end local v0    # "index":I
    .end local v7    # "flags":I
    .end local v16    # "oldIndex":I
    .end local v17    # "direction":I
    .end local v18    # "device":I
    .end local v23    # "aliasIndex":I
    .end local v24    # "uid":I
    .end local v25    # "adjustVolume":Z
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v27    # "step":I
    .local v2, "aliasIndex":I
    .local v5, "direction":I
    .local v6, "uid":I
    .local v12, "adjustVolume":Z
    .local v13, "device":I
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v15, "streamTypeAlias":I
    .restart local p3    # "flags":I
    :catchall_7
    move-exception v0

    move/from16 v17, v5

    move/from16 v24, v6

    move/from16 v28, v12

    move/from16 v18, v13

    move-object/from16 v26, v14

    move v13, v15

    .line 1875
    .end local v5    # "direction":I
    .end local v6    # "uid":I
    .end local v12    # "adjustVolume":Z
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .local v13, "streamTypeAlias":I
    .restart local v17    # "direction":I
    .restart local v18    # "device":I
    .restart local v24    # "uid":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "adjustVolume":Z
    :goto_17
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_17
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v8, p0

    .line 1696
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1697
    :try_start_0
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1698
    .local v0, "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    if-eqz v0, :cond_0

    .line 1700
    iget-object v9, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x1c

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p1

    move-object v14, v0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1704
    :cond_0
    nop

    .line 1705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1704
    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1707
    :goto_0
    return-void

    .line 1698
    .end local v0    # "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .line 7084
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7085
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 7086
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7089
    monitor-exit v0

    .line 7090
    return-void

    .line 7089
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 5271
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5273
    const/4 v0, 0x1

    return v0

    .line 5275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5276
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5278
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    const/4 v1, 0x0

    return v1
.end method

.method public clearAllScoClients(IZ)V
    .locals 5
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .line 4299
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4300
    const/4 v1, 0x0

    .line 4301
    .local v1, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4302
    .local v3, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 4303
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    goto :goto_1

    .line 4305
    :cond_0
    move-object v1, v3

    .line 4307
    .end local v3    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_1
    goto :goto_0

    .line 4308
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4309
    if-eqz v1, :cond_2

    .line 4310
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4312
    .end local v1    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    monitor-exit v0

    .line 4313
    return-void

    .line 4312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRingtoneSync(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 9001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9002
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_0

    .line 9003
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9006
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9009
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9012
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9013
    nop

    .line 9014
    return-void

    .line 9012
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 8199
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8200
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8201
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 8202
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_0

    .line 8203
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 8208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8210
    :cond_0
    monitor-exit v0

    .line 8211
    return-void

    .line 8210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectA2dp()V
    .locals 8

    .line 4654
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4656
    const/4 v2, 0x0

    .line 4658
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v6, 0x80

    if-ge v2, v5, :cond_2

    .line 4659
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4660
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_1

    .line 4661
    if-eqz v4, :cond_0

    move-object v6, v4

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    move-object v4, v6

    .line 4662
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4658
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4665
    .end local v2    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 4666
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4668
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 4669
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 4668
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4672
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4673
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4674
    return-void

    .line 4672
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 4673
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method disconnectA2dpSink()V
    .locals 7

    .line 4677
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4678
    const/4 v1, 0x0

    .line 4680
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4681
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4682
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v6, -0x7ffe0000

    if-ne v5, v6, :cond_1

    .line 4683
    if-eqz v3, :cond_0

    move-object v5, v3

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    move-object v3, v5

    .line 4684
    iget-object v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4680
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4687
    .end local v1    # "i":I
    :cond_2
    if-eqz v3, :cond_3

    .line 4688
    nop

    .local v2, "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4689
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 4688
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 4692
    .end local v2    # "i":I
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v0

    .line 4693
    return-void

    .line 4692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectAllBluetoothProfiles()V
    .locals 0

    .line 4647
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    .line 4648
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    .line 4649
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    .line 4650
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    .line 4651
    return-void
.end method

.method disconnectHeadset()V
    .locals 2

    .line 4696
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4697
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 4698
    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 4699
    monitor-exit v0

    .line 4700
    return-void

    .line 4699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectHearingAid()V
    .locals 8

    .line 4703
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4705
    const/4 v2, 0x0

    .line 4707
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/high16 v6, 0x8000000

    if-ge v2, v5, :cond_2

    .line 4708
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4709
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_1

    .line 4710
    if-eqz v4, :cond_0

    move-object v6, v4

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    move-object v4, v6

    .line 4711
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4707
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4714
    .end local v2    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 4715
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4717
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 4718
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 4717
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4721
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4722
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4723
    return-void

    .line 4721
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 4722
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9173
    if-eqz p1, :cond_2

    .line 9176
    if-eqz p3, :cond_1

    .line 9179
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9183
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 9181
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9174
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 8432
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8434
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 8435
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 8436
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 8437
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8438
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8439
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8441
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8442
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8443
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8444
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8445
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8446
    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8447
    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 8448
    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8449
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8450
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8451
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8452
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8453
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8454
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8455
    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8457
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 8458
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8460
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 8462
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 8464
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8465
    const-string v0, "\nEvent logs:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8466
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8467
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8468
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8469
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8470
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8471
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8472
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8473
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 4
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2649
    if-nez p2, :cond_0

    .line 2650
    return-void

    .line 2652
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2654
    const-string v0, "AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    return-void

    .line 2657
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2658
    const/4 v1, 0x0

    .line 2659
    .local v1, "applyRequired":Z
    if-eqz p1, :cond_3

    .line 2660
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2661
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_2

    .line 2663
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2664
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2665
    const/4 v1, 0x1

    .line 2667
    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_0

    .line 2684
    .end local v1    # "applyRequired":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2670
    .restart local v1    # "applyRequired":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v2, :cond_4

    .line 2671
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2672
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_4

    .line 2673
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2674
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2675
    const/4 v1, 0x1

    .line 2679
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 2681
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2682
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2684
    .end local v1    # "applyRequired":Z
    :cond_5
    monitor-exit v0

    .line 2685
    return-void

    .line 2684
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2391
    const-string v0, "AudioService"

    const-string v1, "forceVolumeControlStream(%d)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2393
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq p1, v3, :cond_0

    .line 2394
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 2396
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2397
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v1, v3, :cond_2

    .line 2398
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v1, :cond_1

    .line 2399
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2402
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_0

    .line 2404
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v1, :cond_3

    .line 2405
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 2407
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p2, :cond_4

    .line 2408
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2410
    :cond_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2411
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2415
    :goto_0
    monitor-exit v0

    .line 2416
    return-void

    .line 2415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 9033
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9034
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9036
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 8994
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8995
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8997
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .line 7955
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceStreamVolume(II)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 2763
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2766
    .local v1, "index":I
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 2768
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    move v1, v2

    .line 2770
    :cond_0
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v0

    return v2

    .line 2771
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 7959
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getHeadsetNotificationStatus()I
    .locals 1

    .line 3941
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 2789
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2790
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2791
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .locals 1

    .line 3406
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .locals 3

    .line 2852
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2856
    const-string v1, "AudioService"

    const-string v2, "DND is on!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2860
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 2861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    .line 2866
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2867
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 2868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .line 8065
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 2777
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2778
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 2783
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2784
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .line 2743
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2744
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2745
    .local v0, "device":I
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2749
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2750
    const/4 v2, 0x0

    .line 2752
    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 2754
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    .line 2756
    :cond_1
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v1

    return v3

    .line 2757
    .end local v2    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    .line 2796
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .line 3147
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3148
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 5467
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5468
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5474
    monitor-exit v0

    .line 5475
    return-void

    .line 5474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isASBluetoothA2dpOn()Z
    .locals 3

    .line 3904
    const-string v0, ""

    const/16 v1, 0x80

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3906
    return v1

    .line 3907
    :cond_0
    const/16 v0, 0x100

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3909
    return v1

    .line 3910
    :cond_1
    const/16 v0, 0x200

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3912
    return v1

    .line 3914
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isAudioServerRunning()Z
    .locals 1

    .line 9271
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9272
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .line 3891
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3892
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 3893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .locals 3

    .line 3865
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isBluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .line 8359
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8360
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 8361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHasSpeakerAuthority(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;

    .line 3682
    const/4 v0, 0x1

    .line 3683
    .local v0, "mIsTelName":Z
    const-string v1, "com.android.server.telecom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3684
    const/4 v0, 0x1

    goto :goto_0

    .line 3686
    :cond_0
    const/4 v0, 0x0

    .line 3688
    :goto_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHasSpeakerAuthority APP keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mIsTelName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCallState()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 3690
    const/4 v1, 0x0

    return v1

    .line 3692
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .line 8276
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isInCallState()Z
    .locals 7

    .line 3669
    const/4 v0, 0x0

    .line 3670
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    .line 3671
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3672
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3673
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3674
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3675
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInCallState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .line 2733
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 3

    .line 3728
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 5059
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 4957
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .line 2578
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2579
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2581
    :cond_0
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2582
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2583
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .line 2879
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadSoundEffects()Z
    .locals 10

    .line 3539
    const/4 v0, 0x3

    .line 3540
    .local v0, "attempts":I
    new-instance v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3542
    .local v1, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v1

    .line 3543
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3544
    :goto_0
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 3544
    .local v2, "attempts":I
    if-lez v0, :cond_0

    .line 3546
    .end local v0    # "attempts":I
    const-wide/16 v3, 0x1388

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3549
    :goto_1
    goto :goto_2

    .line 3547
    :catch_0
    move-exception v0

    .line 3548
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "AudioService"

    const-string/jumbo v4, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3548
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 3544
    :goto_2
    move v0, v2

    goto :goto_0

    .line 3551
    :cond_0
    move v0, v2

    .line 3551
    .end local v2    # "attempts":I
    .local v0, "attempts":I
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3552
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    return v3

    .line 3551
    :catchall_0
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 3551
    .end local v0    # "attempts":I
    .restart local v2    # "attempts":I
    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 8544
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8547
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8548
    return-void

    .line 8551
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 8552
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8553
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 8329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8330
    return-void
.end method

.method onAreaSystemReady()V
    .locals 5

    .line 1138
    const-string/jumbo v0, "persist.vendor.audio.EuropeanStandard"

    .line 1139
    .local v0, "KEY":Ljava/lang/String;
    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "value":Ljava/lang/String;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAreaSystemReady persist.vendor.audio.EuropeanStandard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mListeningarea:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->IsOnEUArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    const-string v2, "EuropeanStandard=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    :cond_0
    const-string v2, "EuropeanStandard=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1149
    :cond_1
    :goto_0
    return-void
.end method

.method public onAudioServerDied()V
    .locals 11

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_b

    .line 1171
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1177
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1185
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1188
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1189
    const/4 v1, 0x0

    move v2, v1

    .line 1189
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 1190
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 1191
    .local v3, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    iget-object v6, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v5, v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1189
    .end local v3    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1201
    invoke-static {v5}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    invoke-direct {v2, v1, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1207
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1208
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1210
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1212
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1213
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v0, :cond_3

    .line 1214
    const/16 v0, 0xb

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1215
    .local v0, "forSys":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1216
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x4

    invoke-direct {v3, v6, v0, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1218
    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1221
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1222
    .local v3, "numStreamTypes":I
    add-int/lit8 v2, v3, -0x1

    .line 1222
    .local v2, "streamType":I
    :goto_2
    const/16 v5, 0xa

    if-ltz v2, :cond_4

    .line 1223
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v2

    .line 1224
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    nop

    .line 1225
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v7

    div-int/2addr v7, v5

    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v8

    div-int/2addr v8, v5

    .line 1224
    invoke-static {v2, v7, v8}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1227
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1222
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1231
    .end local v2    # "streamType":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1237
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_5

    .line 1238
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1241
    :cond_5
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1242
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_6

    .line 1243
    move v5, v1

    nop

    :cond_6
    move v2, v5

    .line 1244
    .local v2, "forMed":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v8, "onAudioServerDied"

    invoke-direct {v7, v4, v2, v8}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1246
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1247
    .end local v2    # "forMed":I
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1249
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1250
    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v5, :cond_7

    .line 1251
    const/16 v1, 0x8

    nop

    .line 1252
    .local v1, "forDock":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v7, "onAudioServerDied"

    const/4 v8, 0x3

    invoke-direct {v6, v8, v1, v7}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1254
    invoke-static {v8, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1255
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1256
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1257
    .end local v1    # "forDock":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1258
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_9

    .line 1259
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 1260
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_8

    .line 1261
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1263
    :cond_8
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1266
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 1267
    :try_start_5
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1268
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    .line 1269
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_4

    .line 1270
    :cond_a
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1274
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1276
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x1d

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1278
    return-void

    .line 1270
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 1257
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 1247
    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    .line 1215
    .end local v0    # "forSys":I
    .end local v3    # "numStreamTypes":I
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 1197
    :catchall_5
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 1172
    :cond_b
    :goto_5
    const-string v0, "AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1175
    return-void
.end method

.method onIndicateSystemReady()V
    .locals 8

    .line 1157
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    return-void

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1167
    return-void
.end method

.method public onPlaySilentBuffer()V
    .locals 1

    .line 1034
    new-instance v0, Lcom/android/server/audio/AudioService$playSilentBufferThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$playSilentBufferThread;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 1035
    .local v0, "onPlaySilentBufferThread":Lcom/android/server/audio/AudioService$playSilentBufferThread;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$playSilentBufferThread;->start()V

    .line 1036
    return-void
.end method

.method public onSystemReady()V
    .locals 11

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 1064
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 1068
    const-string v0, "AudioService"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 1070
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 1073
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1078
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1079
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1082
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v5, 0x15

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1086
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1087
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1088
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1089
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 1090
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_1

    .line 1091
    iget v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v5, -0x2c0003

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 1093
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1094
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1095
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1098
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 1100
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "AudioService"

    .line 1106
    const-string v3, "audio.safemedia.bypass"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1107
    nop

    .line 1100
    :goto_1
    move v10, v2

    goto :goto_2

    .line 1107
    :cond_3
    const/16 v2, 0x7530

    goto :goto_1

    .line 1100
    :goto_2
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1109
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1113
    invoke-static {}, Lcom/android/server/audio/AudioService;->isEnableEU()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onAreaSystemReady()V

    .line 1117
    :cond_4
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 8307
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8308
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .line 3515
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3516
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 3521
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3522
    return-void

    .line 3525
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 3530
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3532
    return-void

    .line 3526
    :cond_2
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 9044
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 9045
    return-void
.end method

.method public playerEvent(II)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "event"    # I

    .line 9048
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 9049
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z

    .line 9052
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 9053
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)Ljava/lang/String;
    .locals 15
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z
    .param p4, "isFocusPolicy"    # Z
    .param p5, "isVolumeController"    # Z

    move-object v8, p0

    .line 8781
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 8783
    const/4 v9, 0x0

    .line 8785
    .local v9, "regId":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8786
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v11, v0

    .line 8788
    .local v11, "hasPermissionForPolicy":Z
    const/4 v12, 0x0

    if-nez v11, :cond_1

    .line 8789
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t register audio policy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8789
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8791
    return-object v12

    .line 8794
    :cond_1
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAudioPolicy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8795
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8794
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8796
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v14

    .line 8798
    :try_start_0
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8799
    const-string v0, "AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8800
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12

    .line 8802
    :cond_2
    :try_start_2
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)V

    .line 8804
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 8805
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 8806
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8812
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    nop

    .line 8813
    :try_start_3
    monitor-exit v14

    .line 8814
    return-object v9

    .line 8813
    :catchall_0
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_1

    .line 8807
    :catch_0
    move-exception v0

    .line 8809
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, p2

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder death"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8811
    monitor-exit v14

    return-object v12

    .line 8813
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 4
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 9240
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9241
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 9242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9243
    const-string v1, "AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9244
    monitor-exit v0

    return-void

    .line 9246
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9248
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_1
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9251
    goto :goto_0

    .line 9249
    :catch_0
    move-exception v2

    .line 9252
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9253
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 9254
    return-void

    .line 9253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 2
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9022
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9023
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9025
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 9026
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 2
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 8983
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8984
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8986
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 8987
    return-void
.end method

.method public releasePlayer(I)V
    .locals 2
    .param p1, "piid"    # I

    .line 9056
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 9057
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    .line 3621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3622
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8877
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8879
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8880
    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8881
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8882
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_1

    .line 8883
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8885
    :cond_1
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)V

    .line 8886
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8887
    const/4 v0, 0x0

    return v0

    .line 8886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 15
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p9, "sdk"    # I

    move-object v1, p0

    .line 7922
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 7923
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7924
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 7926
    const-string v0, "AudioService"

    const-string v3, "Invalid permission to (un)lock audio focus"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7927
    return v2

    .line 7931
    :cond_0
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 7932
    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7933
    const-string v0, "AudioService"

    const-string v4, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7934
    monitor-exit v3

    return v2

    .line 7936
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7940
    :cond_2
    move-object/from16 v12, p5

    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 7942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v11

    .line 7940
    move-object v3, v13

    move v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method protected sendVolumeUpdate(IIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 2495
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 2497
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2498
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2501
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .line 5417
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I
    .locals 16
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "musicDevice"    # I
    .param p6, "a2dpVolume"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 5436
    const/4 v0, 0x2

    if-eq v10, v0, :cond_1

    const/16 v1, 0xb

    if-ne v10, v1, :cond_0

    goto :goto_0

    .line 5437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5439
    :cond_1
    :goto_0
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 5440
    const/4 v1, 0x0

    if-ne v10, v0, :cond_3

    if-nez v11, :cond_3

    .line 5441
    if-ne v9, v0, :cond_2

    const/4 v1, 0x1

    nop

    .line 5442
    .local v1, "intState":I
    :cond_2
    const/16 v2, 0x80

    move/from16 v13, p5

    :try_start_0
    invoke-direct {v8, v2, v1, v13}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 5442
    .end local v1    # "intState":I
    move v1, v2

    .line 5444
    .local v1, "delay":I
    goto :goto_1

    .line 5445
    .end local v1    # "delay":I
    :cond_3
    move/from16 v13, p5

    .line 5445
    .restart local v1    # "delay":I
    :goto_1
    move v14, v1

    .line 5448
    .end local v1    # "delay":I
    .local v14, "delay":I
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_4

    .line 5449
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothA2dpDeviceConnectionStateInt device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v15, p1

    :try_start_1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delay(ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " suppressNoisyIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5454
    :cond_4
    move-object/from16 v15, p1

    :goto_2
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5455
    if-ne v10, v0, :cond_5

    .line 5456
    const/16 v0, 0x66

    .line 5454
    :goto_3
    move v3, v0

    goto :goto_4

    .line 5456
    :cond_5
    const/16 v0, 0x65

    goto :goto_3

    .line 5454
    :goto_4
    move-object v1, v8

    move v4, v9

    move/from16 v5, p6

    move-object v6, v15

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5461
    monitor-exit v12

    move v0, v14

    .line 5462
    .end local v14    # "delay":I
    .local v0, "delay":I
    return v0

    .line 5461
    .end local v0    # "delay":I
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_5
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 5424
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5425
    const/4 v0, 0x0

    return v0

    .line 5427
    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 9
    .param p1, "on"    # Z

    .line 3873
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3874
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3875
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3877
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3878
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-ne v2, p1, :cond_0

    .line 3879
    monitor-exit v1

    return-void

    .line 3881
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3882
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 3884
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/16 v6, 0xa

    :goto_0
    const/4 v8, 0x0

    .line 3882
    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3886
    monitor-exit v1

    .line 3887
    return-void

    .line 3886
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 8038
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8039
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 8040
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 8041
    const/4 v1, 0x1

    .line 8042
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 8041
    :goto_0
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    .line 8044
    monitor-exit v0

    .line 8045
    return-void

    .line 8044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBluetoothCtsScoOn(Z)V
    .locals 11
    .param p1, "on"    # Z

    .line 3773
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3774
    return-void

    .line 3778
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v1, :cond_3

    .line 3779
    if-eqz p1, :cond_1

    .line 3780
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    goto :goto_0

    .line 3781
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    if-ne v0, v3, :cond_2

    .line 3782
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3783
    :cond_2
    :goto_0
    return-void

    .line 3787
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3790
    .local v0, "eventSource":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 3791
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_1

    .line 3792
    :cond_4
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v3, :cond_5

    .line 3793
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3795
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const-string/jumbo v2, "on"

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "off"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3797
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v10, 0x0

    move-object v9, v0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3799
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3801
    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 5397
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5398
    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 5399
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 5400
    .local v1, "intState":I
    :cond_0
    const/high16 v2, 0x8000000

    :try_start_0
    invoke-direct {p0, v2, v1, p4}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .end local v1    # "intState":I
    move v1, v2

    .line 5402
    .local v1, "delay":I
    goto :goto_0

    .line 5403
    .end local v1    # "delay":I
    :cond_1
    nop

    .line 5405
    .restart local v1    # "delay":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x69

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    move-object v7, p1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5411
    monitor-exit v0

    .line 5412
    return v1

    .line 5411
    .end local v1    # "delay":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBluetoothScoOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .line 3735
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3736
    return-void

    .line 3739
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v1, :cond_3

    .line 3740
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setBluetoothScoOn(), on: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ". The calling application Uid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3740
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    if-eqz p1, :cond_1

    .line 3744
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    goto :goto_0

    .line 3745
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    if-ne v0, v3, :cond_2

    .line 3746
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3747
    :cond_2
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setbluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    return-void

    .line 3753
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3756
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 3760
    const/4 v1, 0x3

    .line 3761
    .local v1, "streamType":I
    const/16 v4, 0x20

    .line 3762
    .local v4, "device":I
    if-nez p1, :cond_4

    iget v5, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v3

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 3763
    invoke-virtual {p0, v3, v2, v2, v7}, Lcom/android/server/audio/AudioService;->threeKeySetStreamVolume(IIII)V

    .line 3766
    :cond_4
    return-void
.end method

.method public setBluetoothScoOnInt(ZLjava/lang/String;)V
    .locals 10
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 3832
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOnInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 3835
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3836
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3837
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    .line 3839
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3840
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3841
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothScoOnInt(true) failed because "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not in audio connected mode"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    monitor-exit v3

    return-void

    .line 3846
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3847
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 3846
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3848
    :cond_1
    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v3, v1, :cond_2

    .line 3849
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3851
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3852
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setbluetoothScoOnInt(), mForcedUseForCommExt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT_SCO="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string/jumbo v3, "on"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "off"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3855
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3857
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3860
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3861
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 7
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8891
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8892
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8891
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8893
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8894
    :try_start_0
    const-string v1, "Cannot change audio policy focus properties"

    .line 8895
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8896
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 8897
    monitor-exit v0

    return v2

    .line 8899
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8900
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8901
    monitor-exit v0

    return v2

    .line 8903
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 8905
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8906
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_3

    .line 8907
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8908
    monitor-exit v0

    return v2

    .line 8910
    .end local v5    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_3
    goto :goto_0

    .line 8912
    :cond_4
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 8913
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 8915
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8916
    return v4

    .line 8915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9189
    if-eqz p1, :cond_2

    .line 9192
    if-eqz p3, :cond_1

    .line 9195
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9199
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 9200
    monitor-exit v0

    .line 9201
    return-void

    .line 9197
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9190
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 8
    .param p1, "on"    # Z

    .line 8250
    const/4 v0, 0x0

    .line 8251
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_3

    .line 8252
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 8253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 8254
    const-string v2, "AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8255
    monitor-exit v1

    return v0

    .line 8258
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8259
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v3, p1, :cond_2

    .line 8260
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8261
    if-eqz p1, :cond_1

    const/16 v3, 0xc

    goto :goto_0

    .line 8262
    :cond_1
    const/4 v3, 0x0

    .line 8263
    .local v3, "config":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v6, "setHdmiSystemAudioSupported"

    const/4 v7, 0x5

    invoke-direct {v5, v7, v3, v6}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8265
    invoke-static {v7, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8267
    .end local v3    # "config":I
    :cond_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v3

    move v0, v3

    .line 8268
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8269
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 8268
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 8269
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 8271
    :cond_3
    :goto_1
    return v0
.end method

.method public setHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 5386
    const-string v0, "AudioService"

    const-string/jumbo v1, "setBluetoothHearingAidDeviceConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 5390
    return-void
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 2737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2739
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2804
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPD audioservice setMicrophoneMute Mute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2806
    .local v0, "stm":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2807
    .local v3, "elem":Ljava/lang/StackTraceElement;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Elem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    .end local v3    # "elem":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2812
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2813
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 2814
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 2817
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2819
    return-void

    .line 2821
    :cond_2
    const-string/jumbo v2, "setMicrophoneMute()"

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2822
    return-void

    .line 2824
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p3, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2825
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 2828
    return-void

    .line 2830
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    .line 2831
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3218
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Process ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_0
    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3222
    return-void

    .line 3225
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 3226
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3229
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3230
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3229
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    return-void

    .line 3234
    :cond_2
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/4 v1, 0x4

    if-lt p1, v1, :cond_3

    goto :goto_0

    .line 3238
    :cond_3
    const/4 v1, 0x0

    .line 3239
    .local v1, "oldModeOwnerPid":I
    const/4 v2, 0x0

    .line 3240
    .local v2, "newModeOwnerPid":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3241
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3242
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    move v1, v4

    .line 3244
    :cond_4
    if-ne p1, v0, :cond_5

    .line 3245
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move p1, v0

    .line 3247
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 3248
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3251
    if-eq v2, v1, :cond_6

    if-eqz v2, :cond_6

    .line 3252
    const-string v0, "AudioService"

    const-string v3, "In setMode(), calling disconnectBluetoothSco()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    .line 3255
    :cond_6
    return-void

    .line 3248
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3235
    .end local v1    # "oldModeOwnerPid":I
    .end local v2    # "newModeOwnerPid":I
    :cond_7
    :goto_0
    return-void
.end method

.method public setOnePlusFixedRingerMode(I)V
    .locals 3
    .param p1, "fixed"    # I

    .line 9302
    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    .line 9303
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9304
    return-void
.end method

.method public setOnePlusRingVolumeRange(II)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 9289
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOnePlusRingVolumeRange] min volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9291
    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 9292
    iput p2, p0, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 9293
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2883
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2884
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2885
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2888
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2889
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2892
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2893
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2894
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .line 8059
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8060
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 8061
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 9
    .param p1, "on"    # Z

    .line 3699
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3700
    return-void

    .line 3703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3706
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3709
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3710
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3714
    :cond_1
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 3715
    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v2, v1, :cond_3

    .line 3716
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3719
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3720
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3724
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object v7, p0

    move v8, p1

    .line 2177
    move-object v9, p4

    const/16 v0, 0xa

    if-ne v8, v0, :cond_0

    invoke-direct {v7}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return-void

    .line 2182
    :cond_0
    if-nez v8, :cond_1

    if-nez p2, :cond_1

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 2184
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    return-void

    .line 2191
    :cond_1
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v10, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v10

    move v2, v8

    move v3, p2

    move v4, p3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2193
    nop

    .line 2194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2193
    move-object v0, v7

    move v1, v8

    move v2, p2

    move v3, p3

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2195
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 3154
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    .line 3156
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 3160
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 3162
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 8513
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8516
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8517
    return-void

    .line 8521
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 8522
    if-eqz p1, :cond_1

    .line 8525
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8536
    goto :goto_0

    .line 8534
    :catch_0
    move-exception v0

    .line 8538
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 8539
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8540
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 8557
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8558
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8559
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 8560
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8562
    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p4

    .line 5349
    iget-object v11, v8, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 5350
    :try_start_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 5351
    :try_start_1
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredDeviceConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p3

    :try_start_2
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5380
    :catchall_0
    move-exception v0

    move-object/from16 v12, p3

    :goto_0
    move/from16 v13, p1

    goto/16 :goto_3

    .line 5360
    :cond_0
    move-object/from16 v12, p3

    :goto_1
    const/4 v0, 0x0

    .line 5361
    .local v0, "delay":I
    const-string/jumbo v1, "not broadcast"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 5362
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWiredDeviceConnectionState name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5365
    iget v1, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I

    move v0, v1

    .line 5366
    iput v3, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5374
    move/from16 v13, p1

    goto :goto_2

    .line 5368
    :cond_1
    move/from16 v13, p1

    :try_start_3
    invoke-direct {v8, v13, v9, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v1

    move v0, v1

    .line 5371
    iput v0, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I

    .line 5374
    :goto_2
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v15, 0x64

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object/from16 v1, v18

    move-object v2, v8

    move v3, v13

    move v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5380
    .end local v0    # "delay":I
    monitor-exit v11

    .line 5381
    return-void

    .line 5380
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v12, p3

    :goto_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .line 3126
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3141
    return v1

    .line 3134
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 3131
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 3138
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 2897
    const/4 v0, 0x0

    .line 2898
    .local v0, "effect":Landroid/os/VibrationEffect;
    const/4 v1, 0x0

    .line 2899
    .local v1, "ringerMode":I
    const/4 v2, 0x0

    .line 2901
    .local v2, "toastText":I
    const/4 v3, 0x0

    .line 2902
    .local v3, "silenceRingerSetting":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2903
    const v5, 0x11200d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2904
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "volume_hush_gesture"

    const/4 v7, -0x2

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2909
    :cond_0
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2911
    :pswitch_0
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2912
    const/4 v1, 0x0

    .line 2913
    const v2, 0x10406bd

    .line 2914
    goto :goto_0

    .line 2916
    :pswitch_1
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2917
    const/4 v1, 0x1

    .line 2918
    const v2, 0x10406be

    .line 2921
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;)Z

    .line 2922
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2923
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2924
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .line 3970
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    const/16 v0, 0x12

    if-ge p2, v0, :cond_0

    .line 3973
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3974
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3975
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .line 3984
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3989
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 3995
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3996
    .local v1, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 3997
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3998
    return-void

    .line 3987
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_1
    :goto_0
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 3979
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3981
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 8070
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 8071
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 8072
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8073
    monitor-exit v0

    return-object v1

    .line 8074
    .end local v1    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 4002
    const-string v0, "AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4007
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 4011
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4012
    .local v1, "ident":J
    if-eqz v0, :cond_1

    .line 4013
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 4015
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4016
    return-void

    .line 4005
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_2
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 7

    .line 1040
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1060
    return-void
.end method

.method public threeKeySetStreamVolume(IIII)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .line 2202
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    .line 2203
    const/16 v1, -0x64

    const/4 v2, -0x1

    if-ne p3, v1, :cond_1

    .line 2204
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v1, v2, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 2207
    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "ThreeKeySpeakerMediaVolume"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2209
    const-string v1, "AudioService"

    const-string/jumbo v2, "threeKeySetStreamVolume  set speaker music mute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2210
    :cond_1
    const/16 v1, 0x64

    if-ne p3, v1, :cond_3

    .line 2211
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v1, v2, :cond_2

    .line 2212
    return-void

    .line 2214
    :cond_2
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "ThreeKeySpeakerMediaVolume"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2216
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "threeKeySetStreamVolume  restore speaker music "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_3
    :goto_0
    if-ne p1, v0, :cond_7

    const/16 v0, 0x20

    if-ne p4, v0, :cond_7

    .line 2220
    const/16 v0, 0x1e

    if-ne p2, v0, :cond_5

    .line 2221
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_4

    .line 2222
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 2224
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v5, 0x0

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, p0

    move v2, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2225
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threeKeySetStreamVolume  set sco music volume to max + mPerScoMediaVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2226
    :cond_5
    if-nez p2, :cond_7

    .line 2227
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_6

    .line 2228
    return-void

    .line 2230
    :cond_6
    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    const/4 v5, 0x0

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, p0

    move v2, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2231
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threeKeySetStreamVolume  restore soc  music volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_7
    :goto_1
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 1
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 9040
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .line 3561
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3562
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 7951
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 7952
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8818
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8819
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8818
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8820
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8822
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_0

    .line 8823
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8824
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8823
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8825
    monitor-exit v0

    return-void

    .line 8827
    :cond_0
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8829
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8830
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8832
    return-void

    .line 8830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 9257
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9258
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 9259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 9260
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    if-nez v1, :cond_0

    .line 9261
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9261
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9263
    monitor-exit v0

    return-void

    .line 9265
    :cond_0
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9267
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 9268
    return-void

    .line 9267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 1
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9029
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 9030
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 8990
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 8991
    return-void
.end method

.method public updateCallInfoBroadcastStatus()V
    .locals 4

    .line 3962
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_call_information_broadcast"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 3964
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallInfoBroadcastStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    return-void
.end method

.method public updateHeadsetNotificationStatus()V
    .locals 5

    .line 3944
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_notification_ringtone"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 3946
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v0, v1, :cond_0

    .line 3947
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 3949
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v0, :cond_2

    .line 3951
    :cond_1
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 3954
    :cond_2
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3956
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHeadsetNotificationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Force for notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    return-void
.end method
