.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .locals 1

    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    iput v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 7

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v0

    if-gt p3, v0, :cond_3

    if-lez p3, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    const/4 v3, -0x5

    const/4 v4, -0x1

    if-nez v2, :cond_0

    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    monitor-exit v1

    return v4

    :cond_0
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-eqz v2, :cond_1

    monitor-exit v1

    return v4

    :cond_1
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v1

    return v2

    :cond_2
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-array v2, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v5, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    return v1

    :catch_0
    move-exception v1

    move-object v5, v1

    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    monitor-exit v6

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v6
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

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is too large or of zero length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public done()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v3, "PlaybackSynthesisRequest"

    const-string v5, "Duplicate call to done()"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :cond_0
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_1

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v3

    monitor-exit v2

    return v3

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v3, :cond_3

    const-string v3, "PlaybackSynthesisRequest"

    const-string v5, "done() was called before start() call"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    invoke-interface {v3, v5}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    :goto_0
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    monitor-exit v2

    return v4

    :cond_3
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    move-object v1, v3

    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    move v0, v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    :goto_1
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public error()V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    return-void
.end method

.method public error(I)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rangeStart(III)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v0, :cond_0

    const-string v0, "PlaybackSynthesisRequest"

    const-string/jumbo v1, "mItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->rangeStart(III)V

    return-void
.end method

.method public start(III)I
    .locals 11

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "PlaybackSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio format encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    :try_start_0
    const-string v3, "PlaybackSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported number of channels :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v1

    return v2

    :cond_2
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-eqz v3, :cond_3

    monitor-exit v1

    return v2

    :cond_3
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v3, :cond_4

    const-string v3, "PlaybackSynthesisRequest"

    const-string v4, "Start called twice"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v2

    :cond_4
    new-instance v2, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v10, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    move-object v3, v2

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v10}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v3, v2}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    iput-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method stop()V
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v2, "stop() called twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iput v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v0, v2}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
