.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$Sm85frAzwGZVMAK-NE_gwckYXVQ(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->notifyError(I)V

    return-void
.end method

.method private notifyError(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    :cond_0
    return-void
.end method

.method private onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v12

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v14, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne v9, v1, :cond_2

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1700(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/Surface;

    invoke-virtual {v15, v5}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;

    move-object/from16 v1, v16

    move-object v2, v8

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    move-object v0, v1

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v9, v1, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v1

    if-eqz v1, :cond_4

    nop

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    new-instance v16, Landroid/hardware/camera2/CaptureFailure;

    move-object/from16 v1, v16

    move-object v2, v15

    move v5, v10

    move-object/from16 v20, v0

    move v0, v6

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;

    invoke-direct {v2, v8, v14, v15, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    iget-object v5, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    invoke-virtual {v15}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v6

    invoke-virtual {v5, v12, v13, v0, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1
    invoke-virtual {v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object v0, v2

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private scheduleNotifyError(I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$702(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$CameraDeviceCallbacks$Sm85frAzwGZVMAK-NE_gwckYXVQ;->INSTANCE:Landroid/hardware/camera2/impl/-$$Lambda$CameraDeviceImpl$CameraDeviceCallbacks$Sm85frAzwGZVMAK-NE_gwckYXVQ;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 17

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v11

    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move/from16 v16, v10

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v14, v0

    if-nez v14, :cond_1

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_2

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :cond_2
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide v7, v0

    :try_start_7
    invoke-virtual {v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v15

    move-object v2, v9

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v5, p2

    move/from16 v16, v10

    move-wide v9, v7

    move-wide v7, v11

    :try_start_8
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;JJ)V

    invoke-interface {v0, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v13

    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v16, v10

    move-wide v9, v7

    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_3
    move-exception v0

    move/from16 v16, v10

    :goto_1
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_1
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->scheduleNotifyError(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->scheduleNotifyError(I)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :goto_0
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from camera device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->scheduleNotifyError(I)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDeviceIdle()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1002(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onPrepared(I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1700(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "onPrepared invoked for unknown output Surface"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRepeatingRequestError(JI)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v3

    invoke-static {v1, v3, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$900(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$802(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
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

.method public onRequestQueueEmpty()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onRequestQueueEmpty()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v11

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v24, v11

    move/from16 v18, v13

    move-object v4, v15

    goto/16 :goto_3

    :cond_0
    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v14, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    move-object v10, v0

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v0

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v30, v0

    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v9, :cond_2

    :try_start_3
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v24

    const/16 v27, 0x0

    move-wide/from16 v25, v11

    move/from16 v28, v30

    invoke-virtual/range {v24 .. v29}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_2
    :try_start_4
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_3

    :try_start_5
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v1

    const/4 v4, 0x0

    move-wide v2, v11

    move/from16 v5, v30

    move/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_4

    :try_start_7
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move-object v4, v1

    if-eqz v30, :cond_5

    new-instance v7, Landroid/hardware/camera2/CaptureResult;

    move-object/from16 v6, p2

    invoke-direct {v7, v14, v10, v6}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v9

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, v16

    nop

    move-object v1, v7

    nop

    move-object/from16 v31, v4

    move-object/from16 v17, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v24, v11

    move/from16 v18, v13

    move-object v4, v15

    move-object v8, v1

    move-object v1, v0

    goto :goto_2

    :cond_5
    :try_start_8
    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v21

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v14, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, v9

    move-object v7, v10

    move-wide v9, v1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v24, v11

    move-object v12, v1

    :try_start_9
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v11

    new-instance v1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    move-result v22

    move-object/from16 v17, v1

    move-object/from16 v18, v14

    move-object/from16 v19, v7

    move-object/from16 v20, p2

    move-object/from16 v23, p3

    invoke-direct/range {v17 .. v23}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    move-object/from16 v16, v1

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v5, v1

    move-object v6, v15

    move-object v2, v7

    move-object v7, v3

    move-object/from16 v17, v8

    move-object v8, v4

    move/from16 v18, v13

    move-object/from16 v13, p2

    move-object/from16 v14, v21

    move-object/from16 v31, v4

    move-object v4, v15

    move-object v15, v2

    :try_start_a
    invoke-direct/range {v5 .. v16}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    move-object v0, v1

    nop

    move-object/from16 v8, v16

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-wide v11, v5

    :try_start_b
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    move-wide/from16 v6, v24

    move/from16 v9, v30

    move/from16 v10, v29

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    if-nez v30, :cond_6

    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    :cond_6
    monitor-exit v17

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    move/from16 v18, v13

    move-object v4, v15

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v24, v11

    move/from16 v18, v13

    move-object v4, v15

    :goto_3
    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method
