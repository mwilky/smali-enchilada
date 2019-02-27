.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionService$MyHandler;
    }
.end annotation


# static fields
.field static final MSG_LAUNCH_VOICE_ASSIST_FROM_KEYGUARD:I = 0x4

.field static final MSG_READY:I = 0x1

.field static final MSG_SHUTDOWN:I = 0x2

.field static final MSG_SOUND_MODELS_CHANGED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"


# instance fields
.field mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

.field private mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

.field mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mLock:Ljava/lang/Object;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static synthetic access$100(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    return-void
.end method

.method public static isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private onShutdownInternal()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownHotwordDetector()V

    return-void
.end method

.method private onSoundModelsChangedInternal()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private safelyShutdownHotwordDetector()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognition()Z

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->invalidate()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public final createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownHotwordDetector()V

    new-instance v8, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v5, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v6, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    iget-object v7, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    iput-object v8, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "VOICE INTERACTION"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  AlwaysOnHotwordDetector"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v1, :cond_0

    const-string v1, "    NULL"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    const-string v2, "    "

    invoke-virtual {v1, v2, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisabledShowContext()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method protected final getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public final isKeyphraseAndLocaleSupportedForHotword(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.voice.VoiceInteractionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/service/voice/VoiceInteractionService$MyHandler;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$MyHandler;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    return-void
.end method

.method public onLaunchVoiceAssistFromKeyguard()V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 2

    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-void
.end method

.method public onShutdown()V
    .locals 0

    return-void
.end method

.method public setDisabledShowContext(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public showSession(Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
