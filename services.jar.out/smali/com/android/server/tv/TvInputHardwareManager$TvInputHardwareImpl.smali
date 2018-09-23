.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    monitor-exit v0

    return v2

    :cond_4
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-nez p1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAudioConfigLocked()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v3, :cond_0

    move/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_c

    :cond_0
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800(Lcom/android/server/tv/TvInputHardwareManager;)V

    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v5

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_5

    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/media/AudioGain;->mode()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_1

    move-object v6, v12

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v9

    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v10

    div-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_3

    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v11

    int-to-float v12, v9

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    :goto_2
    new-array v11, v7, [I

    aput v10, v11, v8

    nop

    invoke-virtual {v6}, Landroid/media/AudioGain;->channelMask()I

    move-result v12

    invoke-virtual {v6, v7, v12, v11, v8}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v9

    const-string v10, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-array v10, v7, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v8

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v11, v8

    goto :goto_5

    :cond_7
    :goto_4
    move v11, v7

    :goto_5
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioDevicePort;

    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v14

    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iget v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iget v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    if-eqz v14, :cond_a

    if-nez v15, :cond_8

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v15

    :cond_8
    if-ne v4, v7, :cond_9

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    :cond_9
    if-ne v8, v7, :cond_a

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    if-ne v7, v15, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v7

    if-ne v7, v4, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    if-eq v7, v8, :cond_f

    :cond_b
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    invoke-static {v7, v15}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_c

    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    const/16 v16, 0x0

    aget v15, v7, v16

    :cond_c
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_d

    const/4 v4, 0x1

    :cond_d
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v8, 0x1

    :cond_e
    const/4 v7, 0x0

    invoke-virtual {v13, v15, v4, v8, v7}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v14

    const/4 v7, 0x1

    move v11, v7

    :cond_f
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/media/AudioPortConfig;

    if-eqz v6, :cond_12

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    move/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_b

    :cond_12
    :goto_7
    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v12

    invoke-static {v8, v12}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    goto :goto_8

    :cond_13
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_14

    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    const/4 v12, 0x0

    aget v7, v8, v12

    :cond_14
    :goto_8
    const/4 v8, 0x1

    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_16

    aget v15, v12, v14

    move/from16 v17, v1

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    move/from16 v18, v2

    invoke-static {v15}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    if-ne v1, v2, :cond_15

    move v8, v15

    goto :goto_a

    :cond_15
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_9

    :cond_16
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_a
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v2

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v12

    invoke-static {v2, v12}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v1

    :cond_17
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2, v7, v8, v1, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v6

    const/4 v11, 0x1

    :goto_b
    if-eqz v11, :cond_19

    iput v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    :cond_18
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/AudioPortConfig;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/media/AudioPortConfig;

    invoke-interface {v9, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/media/AudioPortConfig;

    invoke-static {v10, v1, v7}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    aget-object v1, v10, v2

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v5, :cond_19

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v1, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    :cond_19
    return-void

    :cond_1a
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_c
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_1b
    return-void
.end method

.method private updateAudioSinkLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method private updateAudioSourceLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public onMediaStreamVolumeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setStreamVolume(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_0

    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v3

    :cond_1
    if-nez p2, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v5}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    if-eqz v1, :cond_3

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v4

    move v1, v4

    if-nez v1, :cond_4

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    if-nez v1, :cond_5

    move v2, v3

    nop

    :cond_5
    monitor-exit v0

    return v2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
