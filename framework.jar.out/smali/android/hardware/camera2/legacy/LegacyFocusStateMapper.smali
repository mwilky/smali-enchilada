.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LegacyFocusStateMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    return p1
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PASSIVE_UNFOCUSED"

    return-object v0

    :pswitch_1
    const-string v0, "NOT_FOCUSED_LOCKED"

    return-object v0

    :pswitch_2
    const-string v0, "FOCUSED_LOCKED"

    return-object v0

    :pswitch_3
    const-string v0, "ACTIVE_SCAN"

    return-object v0

    :pswitch_4
    const-string v0, "PASSIVE_FOCUSED"

    return-object v0

    :pswitch_5
    const-string v0, "PASSIVE_SCAN"

    return-object v0

    :pswitch_6
    const-string v0, "INACTIVE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 3

    const-string/jumbo v0, "result must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "captureRequest must not be null"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v0, v4}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    iget-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v3, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iput-object v5, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    iget-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    iget v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    invoke-direct {v7, v1, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const v11, 0x363d9440

    const v12, 0x62d9bcc

    const v13, 0x2dddaf

    const v14, -0xb99cbc3

    const/4 v15, -0x1

    if-eq v8, v14, :cond_4

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "continuous-picture"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v10

    goto :goto_2

    :cond_2
    const-string/jumbo v8, "macro"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_2

    :cond_3
    const-string v8, "auto"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_2

    :cond_4
    const-string v8, "continuous-video"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    goto :goto_2

    :cond_5
    :goto_1
    move v8, v15

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v8, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :goto_3
    packed-switch v4, :pswitch_data_1

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processRequestTriggers - ignoring unknown control.afTrigger = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_1
    iget-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v8, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v3, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v14, :cond_9

    if-eq v0, v13, :cond_8

    if-eq v0, v12, :cond_7

    if-eq v0, v11, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "continuous-picture"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v15, v10

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "macro"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v15, v6

    goto :goto_4

    :cond_8
    const-string v0, "auto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v15, v3

    goto :goto_4

    :cond_9
    const-string v0, "continuous-video"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v15, v9

    :cond_a
    :goto_4
    packed-switch v15, :pswitch_data_2

    goto :goto_5

    :pswitch_3
    const/4 v3, 0x1

    goto :goto_5

    :pswitch_4
    const/4 v3, 0x3

    nop

    :goto_5
    nop

    iget-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_8
    iget v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v3, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v6, v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    invoke-direct {v7, v1, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :pswitch_5
    nop

    :goto_6
    return-void

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
