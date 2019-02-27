.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private mAudioBufferSize:I

.field private final mAudioFormat:I

.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mSampleRateInHz:I

.field private mSessionId:I

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .locals 14

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v5

    move v2, v5

    if-ge v5, v0, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v5, :cond_2

    sub-int v5, v0, v2

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v6

    div-int/2addr v5, v6

    int-to-long v12, v5

    const-wide/16 v8, 0x14

    const-wide/16 v10, 0x9c4

    move-wide v6, v12

    invoke-static/range {v6 .. v11}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v5

    if-ne v2, v1, :cond_0

    add-long/2addr v3, v5

    const-wide/16 v7, 0x9c4

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    const-string v7, "TTS.BlockingAudioTrack"

    const-string v8, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    :cond_1
    move v1, v2

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v7

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .locals 1

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    :goto_0
    return-void
.end method

.method private blockUntilEstimatedCompletion()V
    .locals 4

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    return-void
.end method

.method private static final clip(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpg-float v0, p0, p2

    if-gez v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method private static final clip(JJJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p4

    if-gez v0, :cond_1

    move-wide v0, p0

    goto :goto_0

    :cond_1
    move-wide v0, p4

    :goto_0
    return-wide v0
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .locals 11

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v9

    new-instance v10, Landroid/media/AudioTrack;

    iget-object v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v4, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v8, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    const/4 v7, 0x1

    move-object v3, v10

    move-object v5, v9

    move v6, v2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const-string v4, "TTS.BlockingAudioTrack"

    const-string v5, "Unable to create audio track."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    const/4 v4, 0x0

    return-object v4

    :cond_0
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    iget-object v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v4, v5}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    return-object v3
.end method

.method static getChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 v0, 0xc

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v3, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v3

    move v4, v2

    move v5, v2

    cmpl-float v6, v3, v0

    if-lez v6, :cond_0

    sub-float/2addr v1, v3

    mul-float/2addr v4, v1

    goto :goto_0

    :cond_0
    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Failed to set volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method getAudioLengthMs(I)J
    .locals 3

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v0, p1, v0

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1
.end method

.method public init()Z
    .locals 3

    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    monitor-exit v1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setNotificationMarkerPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

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

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

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

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitAndRelease()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    :cond_2
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public write([B)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result v1

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    return v1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
