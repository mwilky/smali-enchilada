.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_MORE_DATA:I = 0x0

.field private static final NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mCTSKindApps:[Ljava/lang/String;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private mGameList:[Ljava/lang/String;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mLakalKindApps:[Ljava/lang/String;

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

.field private final mStreamEventCbLock:Ljava/lang/Object;

.field private mStreamEventExec:Ljava/util/concurrent/Executor;

.field private mStreamType:I

.field private mVoipApps:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 507
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 509
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 566
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 567
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 570
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 566
    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 576
    const-string v0, "AudioTrack"

    const-string v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method constructor <init>(J)V
    .locals 24
    .param p1, "nativeTrackInJavaObj"    # J

    move-object/from16 v0, p0

    .line 739
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 211
    const-string v3, "com.tencent.mm"

    const-string v4, "com.skype.rover"

    const-string v5, "com.whatsapp"

    const-string v6, "com.alibaba.mobileim"

    const-string v7, "com.tencent.mobileqqi"

    const-string v8, "com.tencent.qt.qtx"

    const-string v9, "com.xiaomi.channele"

    const-string v10, "com.google.android.talk"

    const-string v11, "cn.com.fetion"

    const-string v12, "cn.com.talker"

    const-string v13, "com.viber.voip"

    const-string/jumbo v14, "jp.naver.line.android"

    const-string v15, "com.tencent.mobileqq"

    const-string/jumbo v16, "yuku.luyinji.full"

    const-string v17, "im.yixin"

    const-string v18, "com.asiainno.pengpeng"

    const-string v19, "com.duowan.mobile"

    const-string v20, "com.immomo.momo"

    const-string v21, "com.yy.yymeet"

    const-string v22, "com.yx"

    const-string v23, "com.facebook.katana"

    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 234
    const-string v3, "com.lakala.android"

    const-string v4, "com.unionpay.kalefu"

    const-string v5, "com.huishuaka.credit"

    const-string v6, "air.mobilepos"

    const-string v7, "com.iboxpay.minicashbox"

    const-string v8, "com.bill99.kuaishua"

    const-string v9, "com.iboxpay.minicashbox"

    const-string v10, "com.dcsdzficb"

    const-string v11, "com.dcyiqing"

    const-string v12, "com.dcyqzf"

    const-string v13, "com.dczhongcicb"

    const-string v14, "com.epay.impay.ui.dapaizhifu"

    const-string v15, "com.epay.impay.ui.jfpal"

    const-string/jumbo v16, "remob.com"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 251
    const-string v1, "com.android.cts.verifier"

    const-string v3, "android.media.cts"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 256
    const-string v1, "com.nextwave.wcc2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    .line 358
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/AudioTrack;->mState:I

    .line 363
    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 367
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 373
    iput v1, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 374
    iput v1, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 391
    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 395
    const/4 v3, 0x4

    iput v3, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 404
    const/4 v4, 0x3

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 409
    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 415
    iput v3, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 419
    iput v1, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 430
    iput v1, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 434
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 438
    iput v1, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 442
    iput v1, v0, Landroid/media/AudioTrack;->mOffset:I

    .line 2918
    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3004
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3167
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 742
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 743
    iput-wide v2, v0, Landroid/media/AudioTrack;->mJniData:J

    .line 747
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, v4

    .line 747
    .local v5, "looper":Landroid/os/Looper;
    if-nez v4, :cond_0

    .line 748
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 750
    :cond_0
    iput-object v5, v0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 753
    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 755
    invoke-virtual/range {p0 .. p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_0

    .line 757
    :cond_1
    iput v1, v0, Landroid/media/AudioTrack;->mState:I

    .line 759
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 612
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    .line 613
    return-void
.end method

.method private constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V
    .locals 39
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .param p6, "offload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v12, p5

    .line 618
    const/4 v10, 0x1

    move-object/from16 v11, p1

    invoke-direct {v13, v11, v10}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 211
    const-string v16, "com.tencent.mm"

    const-string v17, "com.skype.rover"

    const-string v18, "com.whatsapp"

    const-string v19, "com.alibaba.mobileim"

    const-string v20, "com.tencent.mobileqqi"

    const-string v21, "com.tencent.qt.qtx"

    const-string v22, "com.xiaomi.channele"

    const-string v23, "com.google.android.talk"

    const-string v24, "cn.com.fetion"

    const-string v25, "cn.com.talker"

    const-string v26, "com.viber.voip"

    const-string/jumbo v27, "jp.naver.line.android"

    const-string v28, "com.tencent.mobileqq"

    const-string/jumbo v29, "yuku.luyinji.full"

    const-string v30, "im.yixin"

    const-string v31, "com.asiainno.pengpeng"

    const-string v32, "com.duowan.mobile"

    const-string v33, "com.immomo.momo"

    const-string v34, "com.yy.yymeet"

    const-string v35, "com.yx"

    const-string v36, "com.facebook.katana"

    filled-new-array/range {v16 .. v36}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 234
    const-string v16, "com.lakala.android"

    const-string v17, "com.unionpay.kalefu"

    const-string v18, "com.huishuaka.credit"

    const-string v19, "air.mobilepos"

    const-string v20, "com.iboxpay.minicashbox"

    const-string v21, "com.bill99.kuaishua"

    const-string v22, "com.iboxpay.minicashbox"

    const-string v23, "com.dcsdzficb"

    const-string v24, "com.dcyiqing"

    const-string v25, "com.dcyqzf"

    const-string v26, "com.dczhongcicb"

    const-string v27, "com.epay.impay.ui.dapaizhifu"

    const-string v28, "com.epay.impay.ui.jfpal"

    const-string/jumbo v29, "remob.com"

    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 251
    const-string v0, "com.android.cts.verifier"

    const-string v1, "android.media.cts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 256
    const-string v0, "com.nextwave.wcc2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    .line 358
    const/4 v9, 0x0

    iput v9, v13, Landroid/media/AudioTrack;->mState:I

    .line 363
    iput v10, v13, Landroid/media/AudioTrack;->mPlayState:I

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v13, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 373
    iput v9, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 374
    iput v9, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 391
    iput v10, v13, Landroid/media/AudioTrack;->mChannelCount:I

    .line 395
    const/4 v0, 0x4

    iput v0, v13, Landroid/media/AudioTrack;->mChannelMask:I

    .line 404
    const/4 v1, 0x3

    iput v1, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 409
    iput v10, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 415
    iput v0, v13, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 419
    iput v9, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 430
    iput v9, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 434
    const/4 v1, 0x0

    iput-object v1, v13, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 438
    iput v9, v13, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 442
    iput v9, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 2918
    iput-object v1, v13, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3004
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v13, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3167
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 621
    if-eqz v14, :cond_e

    .line 626
    iget-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v8, p4

    invoke-static {v1, v14, v15, v8}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 628
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 631
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 636
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .line 636
    .local v2, "looper":Landroid/os/Looper;
    if-nez v1, :cond_1

    .line 637
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 640
    .end local v2    # "looper":Landroid/os/Looper;
    .local v7, "looper":Landroid/os/Looper;
    :cond_1
    move-object v7, v2

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 641
    .local v1, "rate":I
    if-nez v1, :cond_2

    .line 642
    const/4 v1, 0x0

    .line 645
    .end local v1    # "rate":I
    .local v16, "rate":I
    :cond_2
    move/from16 v16, v1

    const/4 v1, 0x0

    .line 646
    .local v1, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    .line 650
    .end local v1    # "channelIndexMask":I
    .local v17, "channelIndexMask":I
    :cond_3
    move/from16 v17, v1

    const/4 v1, 0x0

    .line 651
    .local v1, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    .line 658
    .end local v1    # "channelMask":I
    .local v0, "channelMask":I
    .local v18, "channelMask":I
    :goto_0
    move/from16 v18, v0

    goto :goto_1

    .line 654
    .end local v0    # "channelMask":I
    .end local v18    # "channelMask":I
    .restart local v1    # "channelMask":I
    :cond_4
    if-nez v17, :cond_5

    .line 655
    const/16 v0, 0xc

    goto :goto_0

    .line 658
    :cond_5
    move/from16 v18, v1

    .line 658
    .end local v1    # "channelMask":I
    .restart local v18    # "channelMask":I
    :goto_1
    const/4 v0, 0x1

    .line 659
    .local v0, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_6

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    .line 662
    .end local v0    # "encoding":I
    .local v19, "encoding":I
    :cond_6
    move/from16 v19, v0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 663
    const/4 v0, -0x1

    iput v0, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 665
    invoke-direct {v13, v15}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 667
    iput-object v7, v13, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 669
    if-ltz v12, :cond_d

    .line 673
    new-array v0, v10, [I

    iget v1, v13, Landroid/media/AudioTrack;->mSampleRate:I

    aput v1, v0, v9

    move-object/from16 v20, v0

    .line 674
    .local v20, "sampleRate":[I
    new-array v6, v10, [I

    .line 675
    .local v6, "session":[I
    aput v12, v6, v9

    .line 678
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_7

    new-instance v0, Ljava/lang/String;

    const-string v1, "com.google.android.media.gts"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    const-string/jumbo v0, "mediagts=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 685
    :cond_7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v13, Landroid/media/AudioTrack;->mChannelMask:I

    iget v3, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v0, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v9, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v10, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    const-wide/16 v21, 0x0

    move/from16 v23, v0

    move-object v0, v13

    move/from16 v24, v3

    move-object/from16 v3, v20

    move-object/from16 v37, v5

    move/from16 v5, v24

    .end local v5    # "packageName":Ljava/lang/String;
    .local v37, "packageName":Ljava/lang/String;
    move-object/from16 v24, v6

    move/from16 v6, v23

    .line 685
    .end local v6    # "session":[I
    .local v24, "session":[I
    move-object/from16 v23, v7

    move v7, v9

    .line 685
    .end local v7    # "looper":Landroid/os/Looper;
    .local v23, "looper":Landroid/os/Looper;
    move v8, v10

    const/16 v25, 0x0

    move-object/from16 v9, v24

    const/4 v14, 0x1

    move-wide/from16 v10, v21

    move/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    .line 689
    .local v0, "initResult":I
    if-eqz v0, :cond_8

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 691
    return-void

    .line 694
    :cond_8
    aget v1, v20, v25

    iput v1, v13, Landroid/media/AudioTrack;->mSampleRate:I

    .line 695
    aget v1, v24, v25

    iput v1, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 697
    iget-object v1, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 699
    iget v1, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 700
    iget v1, v13, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v10, v1, v2

    .line 700
    .local v10, "frameSizeInBytes":I
    goto :goto_2

    .line 702
    .end local v10    # "frameSizeInBytes":I
    :cond_9
    move v10, v14

    .line 702
    .restart local v10    # "frameSizeInBytes":I
    :goto_2
    move v1, v10

    .line 704
    .end local v10    # "frameSizeInBytes":I
    .local v1, "frameSizeInBytes":I
    const/high16 v2, 0x41a00000    # 20.0f

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/2addr v2, v1

    iput v2, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 709
    .end local v1    # "frameSizeInBytes":I
    :cond_a
    const-string v1, "android.media.AudioTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferSizeInBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v1, v37

    if-eqz v1, :cond_b

    .line 710
    .end local v37    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v13, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v3, 0x3e80

    if-ne v2, v3, :cond_b

    const/16 v2, 0x5080

    if-ne v15, v2, :cond_b

    .line 713
    const-string/jumbo v2, "wechat16k=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3

    .line 715
    :cond_b
    const-string/jumbo v2, "wechat16k=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 718
    :goto_3
    iget v2, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_c

    .line 719
    const/4 v2, 0x2

    iput v2, v13, Landroid/media/AudioTrack;->mState:I

    goto :goto_4

    .line 721
    :cond_c
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    .line 724
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 725
    return-void

    .line 670
    .end local v0    # "initResult":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v20    # "sampleRate":[I
    .end local v23    # "looper":Landroid/os/Looper;
    .end local v24    # "session":[I
    .restart local v7    # "looper":Landroid/os/Looper;
    :cond_d
    move-object/from16 v23, v7

    .line 670
    .end local v7    # "looper":Landroid/os/Looper;
    .restart local v23    # "looper":Landroid/os/Looper;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    .end local v16    # "rate":I
    .end local v17    # "channelIndexMask":I
    .end local v18    # "channelMask":I
    .end local v19    # "encoding":I
    .end local v23    # "looper":Landroid/os/Looper;
    :cond_e
    move v2, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZLandroid/media/AudioTrack$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioAttributes;
    .param p2, "x1"    # Landroid/media/AudioFormat;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Landroid/media/AudioTrack$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 83
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Landroid/media/AudioFormat;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 83
    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .line 83
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .line 83
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .line 1272
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1273
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v0, v2

    .local v0, "frameSizeInBytes":I
    goto :goto_0

    .line 1275
    .end local v0    # "frameSizeInBytes":I
    :cond_0
    move v0, v1

    .line 1277
    .restart local v0    # "frameSizeInBytes":I
    :goto_0
    rem-int v2, p1, v0

    if-nez v2, :cond_1

    if-lt p1, v1, :cond_1

    .line 1281
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1282
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 1283
    return-void

    .line 1278
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private audioParamCheck(IIIII)V
    .locals 4
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .line 1135
    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_0

    const v0, 0x2ee00

    if-le p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_10

    .line 1141
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1146
    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 1148
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_3
    :goto_0
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1156
    const/4 v0, 0x1

    if-eq p2, v1, :cond_6

    packed-switch p2, :pswitch_data_0

    .line 1169
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 1170
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1171
    goto :goto_1

    .line 1173
    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1177
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1178
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_1

    .line 1175
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :pswitch_0
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1161
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1162
    goto :goto_1

    .line 1165
    :cond_6
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1166
    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1167
    nop

    .line 1181
    :goto_1
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1182
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_a

    .line 1184
    sget v1, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    .line 1185
    .local v1, "indexMask":I
    not-int v2, v1

    and-int/2addr v2, p3

    if-nez v2, :cond_9

    .line 1189
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 1190
    .local v2, "channelIndexCount":I
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v3, :cond_7

    .line 1191
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_2

    .line 1192
    :cond_7
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne v3, v2, :cond_8

    .end local v1    # "indexMask":I
    .end local v2    # "channelIndexCount":I
    goto :goto_2

    .line 1193
    .restart local v1    # "indexMask":I
    .restart local v2    # "channelIndexCount":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    .end local v2    # "channelIndexCount":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel index configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    .end local v1    # "indexMask":I
    :cond_a
    :goto_2
    if-ne p4, v0, :cond_b

    .line 1200
    const/4 p4, 0x2

    .line 1203
    :cond_b
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1206
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1210
    if-eq p5, v0, :cond_c

    if-nez p5, :cond_d

    :cond_c
    if-eq p5, v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1211
    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 1212
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_e
    :goto_3
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1215
    return-void

    .line 1204
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 3

    .line 3106
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3107
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3108
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3109
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 3110
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_0

    .line 3111
    :cond_0
    monitor-exit v0

    .line 3112
    return-void

    .line 3111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .line 1842
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1845
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 1846
    const/4 p0, 0x0

    goto :goto_0

    .line 1847
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1848
    const/high16 p0, 0x3f800000    # 1.0f

    .line 1850
    :cond_1
    :goto_0
    return p0

    .line 1843
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getMaxVolume()F
    .locals 1

    .line 1330
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 1646
    const/4 v0, 0x0

    .line 1647
    .local v0, "channelCount":I
    const/16 v1, 0xc

    const/4 v2, -0x2

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1657
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1658
    const-string v1, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1659
    return v2

    .line 1661
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_0

    .line 1650
    :pswitch_0
    const/4 v0, 0x1

    .line 1651
    goto :goto_0

    .line 1654
    :cond_1
    :pswitch_1
    const/4 v0, 0x2

    .line 1655
    nop

    .line 1665
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1666
    const-string v1, "getMinBufferSize(): Invalid audio format."

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1667
    return v2

    .line 1672
    :cond_2
    const/16 v1, 0xfa0

    if-lt p0, v1, :cond_5

    const v1, 0x2ee00

    if-le p0, v1, :cond_3

    goto :goto_1

    .line 1678
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1679
    .local v1, "size":I
    if-gtz v1, :cond_4

    .line 1680
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1681
    const/4 v2, -0x1

    return v2

    .line 1684
    :cond_4
    return v1

    .line 1674
    .end local v1    # "size":I
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1675
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .line 1318
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 1619
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    .line 1224
    and-int/lit16 v0, p0, 0x1cfc

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    .line 1225
    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1226
    return v1

    .line 1228
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1229
    .local v0, "channelCount":I
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v0, v2, :cond_1

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel configuration contains too many channels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1232
    return v1

    .line 1237
    :cond_1
    const/16 v2, 0xc

    .line 1239
    .local v2, "frontPair":I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    .line 1240
    const-string v3, "Front channels must be present in multichannel configurations"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1241
    return v1

    .line 1243
    :cond_2
    const/16 v3, 0xc0

    .line 1245
    .local v3, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_3

    .line 1246
    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_3

    .line 1247
    const-string v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1248
    return v1

    .line 1251
    :cond_3
    const/16 v4, 0x1800

    .line 1253
    .local v4, "sidePair":I
    and-int/lit16 v5, p0, 0x1800

    if-eqz v5, :cond_4

    and-int/lit16 v5, p0, 0x1800

    const/16 v6, 0x1800

    if-eq v5, v6, :cond_4

    .line 1255
    const-string v5, "Side channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1256
    return v1

    .line 1258
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$postEventFromNative$0(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3307
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamDataRequest(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$1(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3311
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onTearDown(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$2(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioTrack$StreamEventCallback;
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3314
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamPresentationEnd(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 3434
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 3438
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setPresentation(II)I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 3284
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 3285
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_0

    .line 3286
    return-void

    .line 3289
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 3290
    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 3291
    return-void

    .line 3294
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 3298
    :cond_2
    iget-object v1, v0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3299
    :try_start_0
    iget-object v2, v0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3300
    .local v2, "exec":Ljava/util/concurrent/Executor;
    iget-object v3, v0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3301
    .local v3, "cb":Landroid/media/AudioTrack$StreamEventCallback;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3302
    if-eqz v2, :cond_7

    if-nez v3, :cond_3

    goto :goto_0

    .line 3305
    :cond_3
    if-eqz p1, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 3319
    .end local v2    # "exec":Ljava/util/concurrent/Executor;
    .end local v3    # "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :cond_4
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 3320
    .local v1, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v1, :cond_5

    .line 3321
    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3322
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_5

    .line 3323
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3324
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3327
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_5
    return-void

    .line 3314
    .end local v1    # "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    .local v2, "exec":Ljava/util/concurrent/Executor;
    .local v3, "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :pswitch_0
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3315
    return-void

    .line 3311
    :pswitch_1
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3312
    return-void

    .line 3307
    :cond_6
    new-instance v1, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;

    invoke-direct {v1, v3, v0}, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3308
    return-void

    .line 3303
    :cond_7
    :goto_0
    return-void

    .line 3301
    .end local v2    # "exec":Ljava/util/concurrent/Executor;
    .end local v3    # "cb":Landroid/media/AudioTrack$StreamEventCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 9
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .line 1081
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 1082
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1084
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1086
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1087
    :cond_0
    return v0

    .line 1091
    :cond_1
    if-eqz p1, :cond_5

    .line 1092
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1093
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1094
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1095
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    if-ge v2, v1, :cond_2

    goto :goto_0

    .line 1100
    :cond_2
    if-eq p3, v1, :cond_3

    .line 1101
    return v0

    .line 1106
    :cond_3
    if-eqz p2, :cond_4

    .line 1107
    const-wide/16 v2, 0x64

    .line 1108
    .local v2, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v4, 0x3e8

    .line 1109
    .local v4, "MILLIS_PER_SECOND":I
    const-wide/16 v5, 0x64

    .line 1111
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    .line 1112
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v7

    invoke-static {v7}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    .line 1113
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1115
    .local v5, "bufferTargetSize":J
    int-to-long v7, p2

    cmp-long v7, v7, v5

    if-gez v7, :cond_4

    .line 1116
    return v0

    .line 1120
    .end local v2    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v4    # "MILLIS_PER_SECOND":I
    .end local v5    # "bufferTargetSize":J
    :cond_4
    return v1

    .line 1096
    :cond_5
    :goto_0
    return v0
.end method

.method private startImpl()V
    .locals 7

    .line 2171
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2172
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 2174
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2175
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.media.AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "play() packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v2, 0x0

    .line 2177
    .local v2, "isVoipApp":Z
    const/4 v3, 0x0

    move v4, v3

    .line 2177
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2178
    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2179
    const/4 v2, 0x1

    .line 2180
    goto :goto_1

    .line 2177
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2183
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2184
    const-string/jumbo v4, "isVoipApp=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    .line 2186
    :cond_2
    const-string/jumbo v4, "isVoipApp=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2189
    :goto_2
    move v4, v3

    .line 2189
    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 2190
    if-eqz v1, :cond_3

    iget-object v5, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2191
    const-string/jumbo v5, "isLakalKindApp=1"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2192
    goto :goto_4

    .line 2189
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2199
    .end local v4    # "i":I
    :cond_4
    :goto_4
    move v4, v3

    .line 2199
    .restart local v4    # "i":I
    :goto_5
    iget-object v5, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 2200
    if-eqz v1, :cond_6

    iget-object v5, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v6, 0xac44

    if-eq v5, v6, :cond_5

    iget v5, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v6, 0xbb80

    if-ne v5, v6, :cond_6

    .line 2202
    :cond_5
    const-string/jumbo v5, "mediacts=1"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2203
    goto :goto_6

    .line 2199
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2207
    .end local v4    # "i":I
    :cond_7
    :goto_6
    nop

    .line 2207
    .local v3, "i":I
    :goto_7
    iget-object v4, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 2208
    if-eqz v1, :cond_8

    iget-object v4, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2209
    const-string/jumbo v4, "specialGameplaying=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2210
    const-string v4, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParameters specialGameplaying=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    goto :goto_8

    .line 2207
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2215
    .end local v3    # "i":I
    :cond_9
    :goto_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 2216
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2217
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "isVoipApp":Z
    monitor-exit v0

    .line 2218
    return-void

    .line 2217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2991
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2992
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2994
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2981
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2982
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2984
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3020
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3021
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3022
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 3023
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3025
    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3023
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3027
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    .line 3028
    return-void

    .line 3027
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3087
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3088
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .line 2877
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2878
    const/4 v0, -0x3

    return v0

    .line 2880
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 1921
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .locals 17
    .param p1, "nativeTrackInJavaObj"    # J

    move-object/from16 v13, p0

    .line 765
    iget v0, v13, Landroid/media/AudioTrack;->mState:I

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1

    .line 768
    new-array v0, v14, [I

    const/4 v15, 0x0

    aput v15, v0, v15

    move-object/from16 v16, v0

    .line 769
    .local v16, "session":[I
    new-array v3, v14, [I

    aput v15, v3, v15

    .line 770
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v9, v16

    move-wide/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    .line 781
    .local v0, "initResult":I
    if-eqz v0, :cond_0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 783
    return-void

    .line 786
    :cond_0
    aget v1, v16, v15

    iput v1, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 788
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    .line 790
    .end local v0    # "initResult":I
    .end local v3    # "rates":[I
    .end local v16    # "session":[I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1304
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1305
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 1306
    return-void
.end method

.method public flush()V
    .locals 2

    .line 2324
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2326
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2331
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .line 1368
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1694
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    .line 1519
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .line 1463
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .line 1393
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1418
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 2

    .line 1402
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1403
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1404
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1405
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1406
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1408
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1409
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1411
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .line 1574
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 1803
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1804
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1530
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .line 1539
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPerformanceMode()I
    .locals 2

    .line 1605
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 1606
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1607
    const/4 v1, 0x1

    return v1

    .line 1608
    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 1609
    const/4 v1, 0x2

    return v1

    .line 1611
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getPlayState()I
    .locals 2

    .line 1440
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v0

    return v1

    .line 1442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .line 1562
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .line 1360
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .line 1350
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .line 1547
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 2950
    monitor-enter p0

    .line 2951
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 2952
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 2962
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2963
    .local v0, "deviceId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2964
    return-object v1

    .line 2966
    :cond_0
    const/4 v2, 0x2

    .line 2967
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 2968
    .local v2, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 2969
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 2970
    aget-object v1, v2, v3

    return-object v1

    .line 2968
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2973
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public getSampleRate()I
    .locals 1

    .line 1343
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1430
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1380
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 1739
    if-eqz p1, :cond_1

    .line 1743
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1744
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1745
    .local v1, "ret":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1746
    return v2

    .line 1748
    :cond_0
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1749
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1750
    return v2

    .line 1740
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 1781
    if-eqz p1, :cond_0

    .line 1785
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1786
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1787
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1788
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1789
    return v1

    .line 1782
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getUnderrunCount()I
    .locals 1

    .line 1591
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2295
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2300
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2301
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 2302
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 2303
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2304
    monitor-exit v0

    .line 2305
    return-void

    .line 2304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2142
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2146
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2147
    .local v0, "delay":I
    if-nez v0, :cond_0

    .line 2148
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_0

    .line 2150
    :cond_0
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 2166
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    .line 2168
    :goto_0
    return-void

    .line 2143
    .end local v0    # "delay":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 1910
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "id"    # I

    .line 1915
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    .line 3269
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 3270
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 2
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 2910
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2911
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2912
    .local v0, "err":I
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method playerSetVolume(ZFF)V
    .locals 2
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 1881
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1882
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 1884
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 1885
    return-void
.end method

.method playerStart()V
    .locals 0

    .line 3264
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 3265
    return-void
.end method

.method playerStop()V
    .locals 0

    .line 3274
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 3275
    return-void
.end method

.method public release()V
    .locals 1

    .line 1293
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1297
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1298
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 1299
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 1300
    return-void
.end method

.method public reloadStaticData()I
    .locals 2

    .line 2849
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2852
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 2850
    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 3038
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3039
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3040
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3043
    monitor-exit v0

    .line 3044
    return-void

    .line 3043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3099
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3100
    return-void
.end method

.method public removeStreamEventCallback()V
    .locals 2

    .line 3195
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3196
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3197
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3198
    monitor-exit v0

    .line 3199
    return-void

    .line 3198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .line 2902
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2903
    const/4 v0, -0x3

    return v0

    .line 2905
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    .line 1490
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    if-gez p1, :cond_1

    .line 1494
    const/4 v0, -0x2

    return v0

    .line 1496
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    .line 1491
    :cond_2
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .line 2067
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4

    .line 2068
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2071
    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 2073
    :cond_1
    if-ltz p1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_3

    if-ge p1, p2, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_1

    .line 2077
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 2075
    :cond_3
    :goto_1
    const/4 v0, -0x2

    return v0

    .line 2069
    :cond_4
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .line 1985
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1986
    const/4 v0, -0x3

    return v0

    .line 1988
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .line 2025
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3

    .line 2026
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2029
    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 2032
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    .line 2030
    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 2027
    :cond_3
    :goto_1
    const/4 v0, -0x3

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 1968
    if-eqz p1, :cond_0

    .line 1971
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1972
    return-void

    .line 1969
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 1820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1821
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1833
    if-eqz p1, :cond_0

    .line 1834
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0

    .line 1836
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1838
    :goto_0
    return-void
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .line 1943
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1944
    const/4 v0, -0x3

    return v0

    .line 1946
    :cond_0
    if-gtz p1, :cond_1

    .line 1947
    const/4 v0, -0x2

    return v0

    .line 1949
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .line 1999
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2000
    const/4 v0, -0x3

    return v0

    .line 2002
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 2931
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2932
    return v0

    .line 2934
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    nop

    .line 2935
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2936
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2937
    monitor-enter p0

    .line 2938
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2939
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2941
    :cond_2
    :goto_0
    return v1
.end method

.method public setPresentation(Landroid/media/AudioPresentation;)I
    .locals 2
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 2093
    if-eqz p1, :cond_0

    .line 2096
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2097
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    .line 2096
    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    .line 2094
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2109
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2110
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1871
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1872
    const/4 v0, -0x3

    return v0

    .line 1875
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 1876
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 3177
    if-eqz p2, :cond_1

    .line 3180
    if-eqz p1, :cond_0

    .line 3183
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3184
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3185
    iput-object p2, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3186
    monitor-exit v0

    .line 3187
    return-void

    .line 3186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3178
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .line 1903
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2230
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2235
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2237
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2238
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v3

    .line 2238
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2239
    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2240
    const-string/jumbo v5, "isLakalKindApp=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2241
    goto :goto_1

    .line 2238
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2249
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const-string v4, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stop() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mSampleRate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    move v4, v3

    .line 2250
    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 2251
    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2252
    const-string/jumbo v5, "mediacts=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2253
    goto :goto_3

    .line 2250
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2257
    .end local v4    # "i":I
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    new-instance v4, Ljava/lang/String;

    const-string v5, "com.tencent.mm"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v5, 0x3e80

    if-ne v4, v5, :cond_4

    .line 2259
    const-string/jumbo v4, "wechat16k=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2263
    :cond_4
    move v4, v3

    .line 2263
    .restart local v4    # "i":I
    :goto_4
    iget-object v5, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 2264
    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2265
    const-string/jumbo v5, "specialGameplaying=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2266
    const-string v5, "android.media.AudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setParameters specialGameplaying=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    goto :goto_5

    .line 2263
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2274
    .end local v4    # "i":I
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    new-instance v4, Ljava/lang/String;

    const-string v5, "com.google.android.media.gts"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2275
    const-string/jumbo v4, "mediagts=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2278
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 2279
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 2280
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2281
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2282
    iput v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2283
    .end local v2    # "packageName":Ljava/lang/String;
    monitor-exit v0

    .line 2284
    return-void

    .line 2283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2231
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 10
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 2688
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2689
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const/4 v0, -0x3

    return v0

    .line 2693
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    .line 2694
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    return v0

    .line 2698
    :cond_1
    if-eqz p1, :cond_8

    if-ltz p2, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p2, v2, :cond_2

    goto :goto_3

    .line 2703
    :cond_2
    const/4 v0, 0x0

    .line 2704
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2705
    nop

    .line 2706
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3

    .line 2705
    move v9, v1

    goto :goto_0

    .line 2706
    :cond_3
    nop

    .line 2705
    move v9, v3

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v0

    goto :goto_2

    .line 2709
    :cond_4
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 2710
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    .line 2709
    move v7, v1

    goto :goto_1

    .line 2710
    :cond_5
    nop

    .line 2709
    move v7, v3

    :goto_1
    move-object v2, p0

    move-object v3, v4

    move v4, v5

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 2715
    :goto_2
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_6

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-lez v0, :cond_6

    .line 2719
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2722
    :cond_6
    if-lez v0, :cond_7

    .line 2723
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2726
    :cond_7
    return v0

    .line 2699
    .end local v0    # "ret":I
    :cond_8
    :goto_3
    const-string v1, "android.media.AudioTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 6
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 2761
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 2762
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    return v1

    .line 2766
    :cond_0
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    .line 2767
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    return v0

    .line 2771
    :cond_1
    iget v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v3, v2, :cond_2

    .line 2772
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    return v1

    .line 2776
    :cond_2
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 2777
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 2781
    :cond_3
    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_4

    goto/16 :goto_0

    .line 2787
    :cond_4
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 2788
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2789
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2790
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550002

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2793
    :cond_5
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2794
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2795
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2796
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2797
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2798
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2802
    :cond_6
    const/4 v0, 0x0

    .line 2803
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 2804
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v2, v4, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2805
    if-gez v0, :cond_7

    .line 2806
    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iput-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2808
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2809
    return v0

    .line 2811
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    .line 2812
    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    return v1

    .line 2818
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2819
    .local v2, "sizeToWrite":I
    invoke-virtual {p0, p1, v2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2820
    if-gez v0, :cond_9

    .line 2821
    const-string v4, "android.media.AudioTrack"

    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    iput-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2823
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2824
    return v0

    .line 2827
    :cond_9
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2829
    return v0

    .line 2782
    .end local v0    # "ret":I
    .end local v2    # "sizeToWrite":I
    :cond_a
    :goto_0
    const-string v1, "android.media.AudioTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 2369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 10
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 2417
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2421
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 2422
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    return v0

    .line 2426
    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2432
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    .line 2435
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_4

    .line 2439
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2442
    :cond_4
    return v0

    .line 2429
    .end local v0    # "ret":I
    :cond_5
    :goto_1
    return v0

    .line 2418
    :cond_6
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public write([FIII)I
    .locals 10
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 2607
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 2608
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return v1

    .line 2612
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 2613
    const-string v0, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    return v1

    .line 2617
    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    .line 2618
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    return v0

    .line 2622
    :cond_2
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 2629
    :cond_3
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v9, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v0

    .line 2632
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-lez v0, :cond_5

    .line 2636
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2639
    :cond_5
    return v0

    .line 2625
    .end local v0    # "ret":I
    :cond_6
    :goto_1
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    return v0
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 2480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 10
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 2526
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2530
    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 2531
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return v0

    .line 2535
    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2541
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v0

    .line 2544
    .local v0, "ret":I
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_4

    .line 2548
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2551
    :cond_4
    return v0

    .line 2538
    .end local v0    # "ret":I
    :cond_5
    :goto_1
    return v0

    .line 2527
    :cond_6
    :goto_2
    const/4 v0, -0x3

    return v0
.end method
