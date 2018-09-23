.class Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSoundTriggerDetectionService"
.end annotation


# static fields
.field private static final MSG_STOP_ALL_PENDING_OPERATIONS:I = 0x1


# instance fields
.field private final mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

.field private mDestroyOnceRunningOpsDone:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation
.end field

.field private mIsDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation
.end field

.field private final mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

.field private mNumTotalOpsPerformed:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation
.end field

.field private final mParams:Landroid/os/Bundle;

.field private final mPendingOps:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/soundtrigger/SoundTriggerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPuuid:Landroid/os/ParcelUuid;

.field private final mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private final mRemoteServiceLock:Ljava/lang/Object;

.field private final mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mRunningOpIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRemoteServiceLock"
    .end annotation
.end field

.field private final mServiceName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    iget-object v0, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteSoundTriggerDetectionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1100(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    if-nez v2, :cond_0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    move-object v2, v3

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1100(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    return-void
.end method

.method private bind()V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10000084

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    const-string v4, "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not require "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v4, v4, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const v5, 0x4000001

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, p0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    iget-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not bind to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;
    .locals 7

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x2ee00

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    :goto_0
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/16 v5, 0xc

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    new-instance v5, Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureSession()I

    move-result v6

    invoke-direct {v5, v1, v3, v4, v6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    return-object v5
.end method

.method private destroy()V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private disconnectLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->removeClient(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot remove client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic lambda$onError$3(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$onError$4(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onError(Landroid/os/ParcelUuid;II)V

    return-void
.end method

.method public static synthetic lambda$onGenericSoundTriggerDetected$0(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onGenericSoundTriggerDetected$1(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public static synthetic lambda$onGenericSoundTriggerDetected$2(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$wfDlqQ7aPvu9qZCZ24jJu4tfUMY(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->stopAllPendingOperations()V

    return-void
.end method

.method private runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->bind()V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->clearOldOps(J)V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "max_sound_trigger_detection_service_ops_per_day"

    const v5, 0x7fffffff

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v4}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->getOpsAdded()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->addOp(J)V

    iget v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    :cond_2
    iget v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    :try_start_1
    const-string v6, "SoundTriggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": runOp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    invoke-virtual {p1, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    const-string v8, "SoundTriggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": Could not run operation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;->INSTANCE:Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;

    invoke-static {v6, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sound_trigger_detection_service_op_timeout"

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->drop()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private stopAllPendingOperations()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onStopOperation(Landroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onBindingDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(I)V
    .locals 4

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 5

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Generic sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    new-instance v3, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;

    invoke-direct {v3, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onKeyphraseDetected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned a null binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRecognitionPaused()V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionPaused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecognitionResumed()V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionResumed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    invoke-interface {v1, v2, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Could not init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pingBinder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
