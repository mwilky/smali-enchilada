.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x0

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_18

    const-wide/16 v6, 0xfa0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on RequestThread."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iput-boolean v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while queueing cleanup request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    :goto_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    :cond_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    :cond_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v10

    if-nez v10, :cond_6

    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v11}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Timed out while waiting for prior requests to complete."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    nop

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v0

    move-object v10, v0

    if-nez v10, :cond_5

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    monitor-exit v11

    goto :goto_1

    :cond_5
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    nop

    :goto_1
    move v6, v3

    move-wide/from16 v22, v4

    goto/16 :goto_11

    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->isQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRequestQueueEmpty()V

    :cond_7
    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getBurstHolder()Landroid/hardware/camera2/legacy/BurstHolder;

    move-result-object v11

    nop

    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getFrameNumber()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    const/16 v16, 0x0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eq v0, v14, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v22, v4

    :goto_4
    move/from16 v3, v16

    goto/16 :goto_7

    :cond_9
    :goto_5
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v3

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyRequest;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v0, v6, v14, v3, v7}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    move-object v6, v0

    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v7, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v7, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    nop

    const/4 v0, 0x1

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move/from16 v20, v0

    iget-object v0, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move/from16 v16, v20

    goto :goto_6

    :catch_2
    move-exception v0

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v3

    const-string v3, "Exception while setting camera parameters: "

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    move-wide/from16 v22, v4

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v15, v4, v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto :goto_8

    :cond_a
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    :goto_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1002(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    goto :goto_4

    :goto_7
    :try_start_4
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v16

    const-wide/16 v17, 0xfa0

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v4, v14

    move-object v14, v0

    move-object v5, v15

    :try_start_5
    invoke-virtual/range {v14 .. v19}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while queueing capture request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x3

    const-wide/16 v14, 0x0

    invoke-virtual {v6, v5, v14, v15, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    nop

    :goto_8
    move-wide/from16 v4, v22

    const/4 v3, 0x1

    const-wide/16 v6, 0xfa0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    :cond_c
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_9
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    const-wide/16 v14, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v14, v15, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while waiting for preview requests to complete."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V

    goto :goto_9

    :cond_d
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->close()V

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    :cond_e
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v6

    const-wide/16 v14, 0xfa0

    invoke-virtual {v6, v14, v15}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hit timeout for jpeg callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_f
    nop

    if-eqz v3, :cond_10

    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    nop

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_a

    :catch_3
    move-exception v0

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_e

    :cond_10
    :goto_a
    new-instance v0, Landroid/util/MutableLong;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    move-object v6, v0

    :try_start_7
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v14

    const-wide/16 v16, 0xfa0

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v15, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Timed out while waiting for request to complete."

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_11
    nop

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v7

    iget-wide v14, v6, Landroid/util/MutableLong;->value:J

    invoke-virtual {v0, v7, v14, v15}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v7

    iget-object v14, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v14

    invoke-virtual {v7, v0, v14}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    :cond_12
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->isOutputAbandoned()Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v0, 0x1

    move v9, v0

    :cond_13
    goto/16 :goto_8

    :catch_4
    move-exception v0

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Interrupted waiting for request completion: "

    invoke-static {v7, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v7

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    :goto_b
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception during capture call: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    :goto_c
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted during capture: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_e

    :catch_a
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    :goto_d
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception during capture call: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_e

    :cond_14
    move-wide/from16 v22, v4

    :goto_e
    if-eqz v9, :cond_15

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    move-result-wide v3

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(JI)V

    nop

    :cond_15
    :goto_f
    const/4 v6, 0x1

    goto/16 :goto_11

    :pswitch_2
    move-wide/from16 v22, v4

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v0, :cond_16

    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    move v4, v0

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configure outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " surfaces configured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v0, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Timed out while queueing configure request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_17
    nop

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-static {v0, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_f

    :catch_b
    move-exception v0

    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Interrupted while waiting for requests to complete."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_11

    :cond_18
    move v6, v3

    move-wide/from16 v22, v4

    :goto_11
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
