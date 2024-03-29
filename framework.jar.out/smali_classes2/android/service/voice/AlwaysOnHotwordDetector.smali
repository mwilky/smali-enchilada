.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionModes;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionFlags;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ManageActions;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field public static final MANAGE_ACTION_ENROLL:I = 0x0

.field public static final MANAGE_ACTION_RE_ENROLL:I = 0x1

.field public static final MANAGE_ACTION_UN_ENROLL:I = 0x2

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_HOTWORD_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final STATE_INVALID:I = -0x3

.field public static final STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final STATE_KEYPHRASE_UNSUPPORTED:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"


# instance fields
.field private mAvailability:I

.field private final mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private final mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private final mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private final mText:Ljava/lang/String;

.field private final mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iput-object p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .locals 1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return v0
.end method

.method static synthetic access$202(Landroid/service/voice/AlwaysOnHotwordDetector;I)I
    .locals 0

    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p1
.end method

.method static synthetic access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    return-void
.end method

.method static synthetic access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object v0
.end method

.method private getManageIntentLocked(I)Landroid/content/Intent;
    .locals 3

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getManageIntent called on an invalid detector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSupportedRecognitionModesLocked()I
    .locals 2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v0, v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSupportedRecognitionModes called on an invalid detector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyStateChangedLocked()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startRecognitionLocked(I)I
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v3, v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v4, v4, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v2, v1, v5

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    const/high16 v3, -0x80000000

    :try_start_0
    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v6, v6, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v9, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v0, v1, v10}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "AlwaysOnHotwordDetector"

    const-string v6, "RemoteException in startRecognition!"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v3, :cond_2

    const-string v4, "AlwaysOnHotwordDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition() failed with error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method private stopRecognitionLocked()I
    .locals 5

    const/high16 v0, -0x80000000

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v3, v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AlwaysOnHotwordDetector"

    const-string v3, "RemoteException in stopRecognition!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition() failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public createEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createReEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createUnEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Text="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Locale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Availability="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KeyphraseMetadata="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "EnrollmentInfo="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedRecognitionModes()I
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method invalidate()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x3

    :try_start_0
    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSoundModelsChanged()V
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRecognition(I)Z
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecognition called on an invalid detector"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopRecognition()Z
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
