.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;
    .locals 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v8, p1

    .line 379
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 380
    .local v9, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .line 382
    .local v10, "device":Landroid/hardware/camera2/CameraDevice;
    iget-object v11, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 384
    const/4 v12, 0x0

    .line 386
    .local v12, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;I)V

    move-object v2, v0

    .line 394
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 397
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v4, 0x4

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 400
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_0

    .line 405
    iget-object v5, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    move/from16 v6, p4

    :try_start_2
    invoke-interface {v0, v3, v8, v5, v6}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v5

    move-object v0, v5

    .line 407
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v0, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    nop

    .line 450
    .end local v0    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 401
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    move/from16 v6, p4

    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    move/from16 v6, p4

    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    .local v0, "id":I
    nop

    .line 413
    nop

    .line 417
    :try_start_4
    const-string v5, "CameraManager"

    const-string v7, "Using legacy camera HAL."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {v3, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-result-object v5

    move-object v0, v5

    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v0, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 450
    .end local v0    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_2
    :goto_1
    goto/16 :goto_5

    .line 443
    :catch_0
    move-exception v0

    goto :goto_2

    .line 420
    :catch_1
    move-exception v0

    goto :goto_3

    .line 412
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 413
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 443
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    move/from16 v6, p4

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_5
    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    .line 448
    .local v4, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 449
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "sse":Landroid/os/ServiceSpecificException;
    goto :goto_5

    .line 420
    :catch_4
    move-exception v0

    move/from16 v6, p4

    .line 421
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :goto_3
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_6

    .line 423
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v7, 0x6

    const/4 v13, 0x7

    if-eq v5, v13, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0x8

    if-eq v5, v14, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0xa

    if-ne v5, v14, :cond_3

    goto :goto_4

    .line 441
    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_1

    .line 431
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_4
    :goto_4
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 433
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_5

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_5

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v4, v13, :cond_2

    .line 437
    :cond_5
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 457
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_5
    invoke-virtual {v2, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 458
    move-object v10, v2

    .line 459
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    monitor-exit v11

    .line 461
    return-object v10

    .line 422
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Should\'ve gone down the shim path"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 459
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catchall_0
    move-exception v0

    move/from16 v6, p4

    :goto_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 822
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .line 844
    const-string/jumbo v0, "msm8996"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "msm8998"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    .line 846
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 848
    const-string v2, "android.camera.cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.cts"

    .line 849
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.cts.verifier"

    .line 850
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.camera.cts.api25test"

    .line 851
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.cts.managedprofile"

    .line 852
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.vsco.cam"

    .line 853
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.whatsapp"

    .line 854
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.ss.android.ugc.aweme"

    .line 855
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.ss.android.ugc.trill"

    .line 856
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 858
    :cond_1
    return v1

    .line 866
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 868
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_3

    return v1

    .line 870
    :cond_3
    invoke-interface {v0, p1, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 871
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v0

    .line 874
    return v1
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 772
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_0

    .line 773
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 774
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x3

    .line 775
    .local v1, "reason":I
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    .line 799
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 789
    :pswitch_1
    const/16 v1, 0x3e8

    .line 790
    goto :goto_0

    .line 786
    :pswitch_2
    const/4 v1, 0x5

    .line 787
    goto :goto_0

    .line 783
    :pswitch_3
    const/4 v1, 0x4

    .line 784
    goto :goto_0

    .line 780
    :pswitch_4
    const/4 v1, 0x1

    .line 781
    goto :goto_0

    .line 777
    :pswitch_5
    const/4 v1, 0x2

    .line 778
    goto :goto_0

    .line 793
    :pswitch_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 795
    :pswitch_7
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 801
    :goto_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 802
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "reason":I
    :cond_0
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_3

    .line 806
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_2

    .line 809
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 813
    return-void

    .line 810
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 811
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 807
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 803
    :cond_3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_11

    .line 261
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_10

    .line 272
    :try_start_1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 277
    .local v4, "id":I
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "parameters":Ljava/lang/String;
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v6

    .line 281
    .local v6, "info":Landroid/hardware/CameraInfo;
    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    move-object v0, v7

    .line 282
    .end local v4    # "id":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "info":Landroid/hardware/CameraInfo;
    goto/16 :goto_4

    .line 284
    :cond_0
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    .line 287
    .local v4, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "msm8996"

    const-string/jumbo v7, "ro.board.platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "msm8998"

    const-string/jumbo v7, "ro.board.platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    :cond_1
    if-eqz v5, :cond_2

    const-string v6, "com.oneplus.camera"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    const-string v6, "CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 292
    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 296
    :cond_2
    if-eqz v5, :cond_e

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "sdm845"

    const-string/jumbo v7, "ro.board.platform"

    .line 298
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "com.android.cts.verifier"

    .line 299
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_e

    .line 301
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 303
    .local v6, "sizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-nez v6, :cond_3

    .line 304
    const-string v7, "CameraManager"

    const-string v8, "Get NULL StreamConfiguration!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 306
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v7, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    const/4 v8, 0x0

    move v9, v8

    .line 307
    .local v9, "i":I
    :goto_0
    array-length v10, v6

    if-ge v9, v10, :cond_c

    .line 308
    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x1040

    if-ne v10, v11, :cond_4

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0xc30

    if-eq v10, v11, :cond_b

    :cond_4
    aget-object v10, v6, v9

    .line 309
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0xfa0

    if-ne v10, v11, :cond_5

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0xbb8

    if-eq v10, v11, :cond_b

    :cond_5
    aget-object v10, v6, v9

    .line 310
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x5a0

    if-ne v10, v11, :cond_6

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0x438

    if-eq v10, v11, :cond_b

    :cond_6
    aget-object v10, v6, v9

    .line 311
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x500

    if-ne v10, v11, :cond_7

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0x3c0

    if-eq v10, v11, :cond_b

    :cond_7
    aget-object v10, v6, v9

    .line 312
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x400

    if-ne v10, v11, :cond_8

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0x300

    if-eq v10, v11, :cond_b

    :cond_8
    aget-object v10, v6, v9

    .line 313
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x320

    if-ne v10, v11, :cond_9

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0x258

    if-eq v10, v11, :cond_b

    :cond_9
    aget-object v10, v6, v9

    .line 314
    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v10

    const/16 v11, 0x140

    if-ne v10, v11, :cond_a

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v10

    const/16 v11, 0xf0

    if-ne v10, v11, :cond_a

    .line 315
    goto :goto_1

    .line 317
    :cond_a
    aget-object v10, v6, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_b
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 320
    .end local v9    # "i":I
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 321
    .local v9, "newSizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    nop

    .line 321
    .local v8, "j":I
    :goto_2
    array-length v10, v9

    if-ge v8, v10, :cond_d

    .line 322
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v10, v9, v8

    .line 321
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 324
    .end local v8    # "j":I
    :cond_d
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 329
    .end local v6    # "sizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v7    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .end local v9    # "newSizeArray":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_e
    :goto_3
    const-string/jumbo v6, "sdm845"

    const-string/jumbo v7, "ro.board.platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "android.camera.cts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 330
    const-string v6, "11"

    .line 331
    .local v6, "ctsCameraId":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 332
    .local v7, "infocts":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const-string v8, "CameraManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEBUG packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 334
    .local v8, "rect":Landroid/graphics/Rect;
    const-string v9, "CameraManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG rect: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v9, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 336
    new-instance v9, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v9, v7}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v0, v9

    .line 337
    .end local v6    # "ctsCameraId":Ljava/lang/String;
    .end local v7    # "infocts":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "rect":Landroid/graphics/Rect;
    goto :goto_4

    .line 338
    :cond_f
    new-instance v6, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v6, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 338
    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_4

    .line 344
    :catch_0
    move-exception v4

    .line 346
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 342
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 343
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 348
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_4
    nop

    .line 349
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    monitor-exit v1

    .line 350
    return-object v0

    .line 268
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_10
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 349
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 259
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 531
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 533
    return-void
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 568
    if-eqz p2, :cond_0

    .line 571
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 572
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 594
    if-eqz p1, :cond_3

    .line 596
    if-eqz p2, :cond_2

    .line 599
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Landroid/util/Permission;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, "requester":Landroid/util/Permission;
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v1

    .line 608
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 609
    return-void

    .line 615
    .end local v0    # "requester":Landroid/util/Permission;
    .end local v1    # "result":Z
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;

    .line 616
    return-void

    .line 600
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 143
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 144
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 143
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 145
    return-void
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 162
    if-eqz p1, :cond_0

    .line 165
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 203
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 204
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 203
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 205
    return-void
.end method

.method public registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 222
    if-eqz p1, :cond_0

    .line 225
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 226
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 659
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 662
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 663
    return-void

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 177
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 178
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 237
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 238
    return-void
.end method
