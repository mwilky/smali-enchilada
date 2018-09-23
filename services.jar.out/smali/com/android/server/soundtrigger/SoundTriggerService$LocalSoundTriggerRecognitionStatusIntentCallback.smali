.class final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalSoundTriggerRecognitionStatusIntentCallback"
.end annotation


# instance fields
.field private mCallbackIntent:Landroid/app/PendingIntent;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mUuid:Ljava/util/UUID;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mUuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-void
.end method

.method private removeCallback(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

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


# virtual methods
.method public onError(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.soundtrigger.STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    :goto_0
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    :goto_0
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyphrase sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    :goto_0
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    :goto_0
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    :goto_0
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
