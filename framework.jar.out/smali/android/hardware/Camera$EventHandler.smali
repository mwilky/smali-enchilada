.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string v0, "Camera"

    const-string v3, "CAMERA_MSG_STATE_CALLBACK"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraStateCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$CameraStateCallback;->onCameraStateChanged([BLandroid/hardware/Camera;)V

    goto :goto_0

    :cond_0
    const-string v0, "Camera"

    const-string/jumbo v3, "mCameraStateCallback is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_1
    const-string v0, "Camera"

    const-string v3, "CAMERA_MSG_DNG_META_DATA"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v4}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-direct {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v9, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v3, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "-1"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    new-instance v4, Landroid/hardware/camera2/CaptureResult;

    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v6, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    new-instance v15, Landroid/hardware/camera2/impl/CaptureResultExtras;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, -0x1

    const/16 v16, -0x1

    move-object v7, v15

    move-object/from16 v17, v3

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    invoke-direct {v4, v5, v6, v3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    move-object v3, v4

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v4}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v0, v3, v5}, Landroid/hardware/Camera$OneplusCallback;->onDngMetadata(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    goto :goto_1

    :cond_1
    const-string v0, "Camera"

    const-string/jumbo v3, "mOneplusCallback is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_2
    const-string v0, "Camera"

    const-string v3, "CAMERA_MSG_DNG_IMAGE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$OneplusCallback;->onDngImage([BLandroid/hardware/Camera;)V

    goto :goto_2

    :cond_2
    const-string v0, "Camera"

    const-string/jumbo v3, "mOneplusCallback is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :sswitch_3
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    :cond_3
    return-void

    :sswitch_4
    const/16 v0, 0x101

    new-array v3, v0, [I

    nop

    :goto_3
    if-ge v4, v0, :cond_4

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    mul-int/lit8 v6, v4, 0x4

    invoke-static {v5, v6}, Landroid/hardware/Camera;->access$1700([BI)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    :cond_5
    return-void

    :sswitch_5
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_6

    move v3, v4

    nop

    :cond_6
    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    :cond_7
    return-void

    :sswitch_6
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    :cond_8
    return-void

    :sswitch_7
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_9
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Camera"

    const-string/jumbo v3, "op jpeg callback"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_a
    return-void

    :sswitch_8
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_b
    return-void

    :sswitch_9
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_c
    return-void

    :sswitch_a
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v5, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$502(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    goto :goto_4

    :cond_d
    iget-object v5, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5, v3, v4}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;ZZ)V

    :cond_e
    :goto_4
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_f
    return-void

    :sswitch_b
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    iget v6, v2, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_10

    goto :goto_5

    :cond_10
    move v3, v4

    :goto_5
    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v5, v3, v4}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    :cond_11
    return-void

    :sswitch_c
    const/4 v5, 0x0

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v0

    move-object v5, v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_13

    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_12

    move v3, v4

    nop

    :cond_12
    move v0, v3

    iget-object v3, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v0, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_d
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    :cond_14
    return-void

    :sswitch_e
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_6

    :cond_15
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    const/4 v3, 0x2

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_6

    :cond_16
    iget-object v0, v1, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    :cond_17
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x4 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x40 -> :sswitch_9
        0x80 -> :sswitch_8
        0x100 -> :sswitch_7
        0x400 -> :sswitch_6
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method
