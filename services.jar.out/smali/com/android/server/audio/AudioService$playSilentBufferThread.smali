.class Lcom/android/server/audio/AudioService$playSilentBufferThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "playSilentBufferThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 1008
    iput-object p1, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1011
    const-string v0, "AudioService"

    const-string/jumbo v1, "playSilentBufferToInitPA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1015
    :cond_0
    const/16 v0, 0x1f40

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 1016
    .local v0, "bufferSize":I
    if-gez v0, :cond_1

    .line 1017
    return-void

    .line 1019
    :cond_1
    const/16 v1, 0x3e80

    new-array v2, v1, [B

    .line 1020
    .local v2, "audioData":[B
    new-instance v10, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/16 v5, 0x1f40

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object v3, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1022
    .local v3, "mAudioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 1023
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 1025
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x4b0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    goto :goto_0

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "AudioService"

    const-string v5, "Interrupted while waiting on playback compelete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 1030
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 1031
    return-void

    .line 1013
    .end local v0    # "bufferSize":I
    .end local v2    # "audioData":[B
    .end local v3    # "mAudioTrack":Landroid/media/AudioTrack;
    :cond_2
    :goto_1
    return-void
.end method
