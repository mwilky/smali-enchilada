.class public Landroid/hardware/camera2/legacy/LegacyResultMapper;
.super Ljava/lang/Object;
.source "LegacyResultMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LegacyResultMapper"


# instance fields
.field private mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-void
.end method

.method private static convertLegacyAfMode(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "LegacyResultMapper"

    const-string v2, "convertLegacyAfMode - no AF mode, default to OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "continuous-picture"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_1
    const-string v2, "infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "macro"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "fixed"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string v2, "edof"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "continuous-video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "LegacyResultMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertLegacyAfMode - unknown mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v3

    :pswitch_3
    return v5

    :pswitch_4
    return v4

    :pswitch_5
    return v6

    :pswitch_6
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_6
        0x2dddaf -> :sswitch_5
        0x2f6eb6 -> :sswitch_4
        0x5cee774 -> :sswitch_3
        0x62d9bcc -> :sswitch_2
        0xa526a28 -> :sswitch_1
        0x363d9440 -> :sswitch_0
    .end sparse-switch

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

.method private static convertLegacyAwbMode(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "daylight"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_1
    const-string v2, "fluorescent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "twilight"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "cloudy-daylight"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "shade"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "warm-fluorescent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v2, "incandescent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "LegacyResultMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAwbMode - unrecognized WB mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/16 v0, 0x8

    return v0

    :pswitch_1
    return v4

    :pswitch_2
    return v6

    :pswitch_3
    return v5

    :pswitch_4
    return v8

    :pswitch_5
    return v3

    :pswitch_6
    return v7

    :pswitch_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37fc9231 -> :sswitch_7
        -0x2adfe6e0 -> :sswitch_6
        0x2dddaf -> :sswitch_5
        0x6854e2d -> :sswitch_4
        0x1c4eedc3 -> :sswitch_3
        0x625dee90 -> :sswitch_2
        0x71671468 -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 15

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    iget-object v9, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    move-object v10, v0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/graphics/Rect;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v11, v0, v8, v9}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v12

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    move-object v0, v10

    move-object v1, v6

    move-object v2, v7

    move-object v3, v11

    move-object v4, v12

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    invoke-static {v10, v11, v12, v9}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    invoke-static {v10, v9}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeFromLegacy(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v5, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v5, "LegacyResultMapper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown scene mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " returned by camera HAL, setting to disabled."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v5, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeFromLegacy(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v3, "LegacyResultMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown effect mode "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " returned by camera HAL, setting to off."

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    move v0, v1

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v0, "infinity"

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {v10, v12, v9}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const-string v1, "LegacyResultMapper"

    const-string v2, "Null thumbnail size received from parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v10, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-object v10
.end method

.method private static getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    nop

    invoke-static {p0, p1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toMetering()Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v1
.end method

.method private static mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 5

    nop

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingModeOrDefault(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_1

    const-string v2, "LegacyResultMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mapAe - android.control.aeLock was requested to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but resulted in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0, p1, p5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    nop

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    const-string v1, "AE"

    invoke-static {p3, p4, v0, v1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xddf

    const/4 v8, 0x3

    if-eq v6, v7, :cond_5

    const v7, 0x1ad6f

    if-eq v6, v7, :cond_4

    const v2, 0x2dddaf

    if-eq v6, v2, :cond_3

    const v2, 0x696d3fc

    if-eq v6, v2, :cond_2

    const v2, 0x407706f5

    if-eq v6, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "red-eye"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v8

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "torch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    :cond_3
    const-string v2, "auto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "on"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    const-string v2, "LegacyResultMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mapAeAndFlashMode - Ignoring unknown flash mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x4

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x1

    const/4 v3, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const/4 v3, 0x2

    goto :goto_3

    :pswitch_4
    nop

    :cond_7
    :goto_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAfMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    nop

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    const-string v1, "AF"

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAwbMode(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-object v0
.end method
