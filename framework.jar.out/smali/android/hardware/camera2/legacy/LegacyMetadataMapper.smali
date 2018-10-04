.class public Landroid/hardware/camera2/legacy/LegacyMetadataMapper;
.super Ljava/lang/Object;
.source "LegacyMetadataMapper.java"


# static fields
.field private static final APPROXIMATE_CAPTURE_DELAY_MS:J = 0xc8L

.field private static final APPROXIMATE_JPEG_ENCODE_TIME_MS:J = 0x258L

.field private static final APPROXIMATE_SENSOR_AREA_PX:J = 0x800000L

.field private static final DEBUG:Z = false

.field public static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_RGBA_8888:I = 0x1

.field private static final LENS_INFO_MINIMUM_FOCUS_DISTANCE_FIXED_FOCUS:F = 0.0f

.field static final LIE_ABOUT_AE_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AE_STATE:Z = false

.field static final LIE_ABOUT_AF:Z = false

.field static final LIE_ABOUT_AF_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AWB:Z = false

.field static final LIE_ABOUT_AWB_STATE:Z = false

.field private static final NS_PER_MS:J = 0xf4240L

.field private static final PREVIEW_ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final REQUEST_MAX_NUM_INPUT_STREAMS_COUNT:I = 0x0

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC:I = 0x3

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC_STALL:I = 0x1

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_RAW:I = 0x0

.field private static final REQUEST_PIPELINE_MAX_DEPTH_HAL1:I = 0x3

.field private static final REQUEST_PIPELINE_MAX_DEPTH_OURS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LegacyMetadataMapper"

.field static final UNKNOWN_MODE:I = -0x1

.field private static final sAllowedTemplates:[I

.field private static final sEffectModes:[I

.field private static final sLegacyEffectMode:[Ljava/lang/String;

.field private static final sLegacySceneModes:[Ljava/lang/String;

.field private static final sSceneModes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "auto"

    const-string v1, "action"

    const-string/jumbo v2, "portrait"

    const-string/jumbo v3, "landscape"

    const-string/jumbo v4, "night"

    const-string/jumbo v5, "night-portrait"

    const-string/jumbo v6, "theatre"

    const-string v7, "beach"

    const-string/jumbo v8, "snow"

    const-string/jumbo v9, "sunset"

    const-string/jumbo v10, "steadyphoto"

    const-string v11, "fireworks"

    const-string/jumbo v12, "sports"

    const-string/jumbo v13, "party"

    const-string v14, "candlelight"

    const-string v15, "barcode"

    const-string v16, "hdr"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    const-string/jumbo v1, "none"

    const-string/jumbo v2, "mono"

    const-string/jumbo v3, "negative"

    const-string/jumbo v4, "solarize"

    const-string/jumbo v5, "sepia"

    const-string/jumbo v6, "posterize"

    const-string/jumbo v7, "whiteboard"

    const-string v8, "blackboard"

    const-string v9, "aqua"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    new-instance v2, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J
    .locals 8

    const-wide/32 v0, 0xbebc200

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x47

    mul-long v6, v2, v4

    add-long/2addr v6, v0

    return-wide v6
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method static convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "edof"

    goto :goto_0

    :pswitch_1
    const-string v0, "continuous-picture"

    goto :goto_0

    :pswitch_2
    const-string v0, "continuous-video"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "macro"

    goto :goto_0

    :pswitch_4
    const-string v0, "auto"

    goto :goto_0

    :pswitch_5
    const-string v1, "fixed"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "fixed"

    goto :goto_0

    :cond_1
    const-string v0, "infinity"

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "LegacyMetadataMapper"

    const-string v4, "convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string v0, "LegacyMetadataMapper"

    const-string v1, "No focus modes supported; API1 bug"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertAntiBandingMode(Ljava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1ad6f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v1, v2, :cond_4

    const v2, 0x18d8ed

    if-eq v1, v2, :cond_3

    const v2, 0x194d4c

    if-eq v1, v2, :cond_2

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v1, "60hz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v1, "50hz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAntiBandingMode - Unknown antibanding mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v6

    :pswitch_1
    return v5

    :pswitch_2
    return v4

    :pswitch_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static convertAntiBandingModeOrDefault(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method static convertEffectModeFromLegacy(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    aget v1, v1, v0

    return v1
.end method

.method static convertEffectModeToLegacy(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    return-void
.end method

.method static convertSceneModeFromLegacy(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    aget v1, v1, v0

    return v1
.end method

.method static convertSceneModeToLegacy(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "auto"

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3

    const-string/jumbo v0, "parameters must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "info must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/hardware/CameraInfo;

    invoke-direct {v1}, Landroid/hardware/CameraInfo;-><init>()V

    iput-object p1, v1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    return-object v2
.end method

.method public static createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3

    const-string/jumbo v0, "parameters must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "info must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    const-string v1, "info.info must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v1, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V

    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v2
.end method

.method public static createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 13

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    invoke-static {v0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    new-array v5, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v12, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v10, v6, -0x1

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v12, v5, v4

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible; keep in sync with sAllowedTemplates"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    nop

    :goto_0
    nop

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    :cond_0
    const/4 v6, 0x1

    if-eq p1, v3, :cond_3

    const/4 v7, 0x4

    if-ne p1, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v5, :cond_4

    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v7}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-static {v7, v3}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    :goto_2
    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    aget-object v3, v1, v4

    array-length v6, v1

    move-object v7, v3

    move v3, v4

    :goto_4
    if-ge v3, v6, :cond_7

    aget-object v8, v1, v3

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_5

    move-object v7, v8

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    if-ne v9, v10, :cond_6

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_6

    move-object v7, v8

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne p1, v5, :cond_8

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_6
    if-ne p1, v5, :cond_9

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    array-length v5, v1

    if-le v5, v2, :cond_a

    aget-object v2, v1, v2

    goto :goto_8

    :cond_a
    aget-object v2, v1, v4

    :goto_8
    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "templateId out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)[I"
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)[I"
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;)[I"
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    aput v7, v3, v4

    nop

    move v4, v8

    goto :goto_0

    :cond_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v4, v2, [I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    new-array v5, v4, [Landroid/util/Range;

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    add-int/lit8 v10, v6, 0x1

    aget v11, v8, v2

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget v9, v8, v9

    move-object v15, v3

    int-to-double v2, v9

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v5, v6

    nop

    move v6, v10

    move-object v3, v15

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move-object v15, v3

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "off"

    const-string v4, "auto"

    const-string/jumbo v5, "on"

    const-string/jumbo v6, "red-eye"

    const-string/jumbo v7, "torch"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-nez v6, :cond_4

    :cond_3
    new-array v6, v9, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    move-object v5, v6

    :cond_4
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Landroid/hardware/camera2/utils/ParamsUtils;->createRational(F)Landroid/util/Rational;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v15, v3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "At least one FPS range must be supported."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_6
    move-object v15, v3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Supported FPS ranges cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private static mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "continuous-picture"

    const-string v3, "continuous-video"

    const-string v4, "edof"

    const-string v5, "infinity"

    const-string/jumbo v6, "macro"

    const-string v7, "fixed"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x3
        0x5
        0x0
        0x2
        0x0
    .end array-data
.end method

.method private static mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 9

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "incandescent"

    const-string v3, "fluorescent"

    const-string/jumbo v4, "warm-fluorescent"

    const-string v5, "daylight"

    const-string v6, "cloudy-daylight"

    const-string/jumbo v7, "twilight"

    const-string/jumbo v8, "shade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private static mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    aput v4, v1, v4

    :goto_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    new-array v7, v7, [I

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v8

    aput v8, v7, v4

    aput v4, v7, v3

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v8

    aput v8, v7, v2

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    new-array v9, v4, [I

    goto :goto_1

    :cond_1
    sget-object v9, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    sget-object v10, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v8, v9, v10}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v9

    :goto_1
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    sget-object v13, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v11, v12, v13}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v12

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v3, :cond_2

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "auto"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x0

    :cond_2
    const/4 v13, 0x1

    if-nez v12, :cond_3

    if-nez v10, :cond_3

    const/4 v13, 0x0

    :cond_3
    if-eqz v13, :cond_7

    if-nez v12, :cond_4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    :cond_4
    if-lez v10, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :goto_2
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v12, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    :cond_6
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v12}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v15, v3, [I

    aput v4, v15, v4

    invoke-virtual {v0, v14, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :goto_3
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v13, :cond_8

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    goto :goto_4

    :cond_8
    new-array v2, v3, [I

    aput v3, v2, v4

    :goto_4
    invoke-virtual {v0, v14, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "off"

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ListUtils;->listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    const-string v0, "fixed"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v2

    aput v2, v0, v1

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v4, 0x24

    new-array v4, v4, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v5, v4, v3

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v5, v4, v1

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v8, 0x4

    aput-object v5, v4, v8

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v9, 0x5

    aput-object v5, v4, v9

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x6

    aput-object v5, v4, v10

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x7

    aput-object v5, v4, v11

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v12, 0x8

    aput-object v5, v4, v12

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v13, 0x9

    aput-object v5, v4, v13

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v14, 0xa

    aput-object v5, v4, v14

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v15, 0xb

    aput-object v5, v4, v15

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v16, 0xc

    aput-object v5, v4, v16

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v17, 0xd

    aput-object v5, v4, v17

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v18, 0xe

    aput-object v5, v4, v18

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0xf

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x10

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x11

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x12

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x13

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x14

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x15

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x16

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x17

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x18

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x19

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1a

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1b

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1c

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1d

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1e

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x1f

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x20

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x21

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x22

    aput-object v5, v4, v19

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x23

    aput-object v5, v4, v19

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v14, v3, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v5, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v14

    invoke-virtual {v0, v15, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v4, 0x1b

    new-array v4, v4, [Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v3

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v1

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v7

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v8

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v9

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v10

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v11

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v12

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v13

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v14, 0xa

    aput-object v5, v4, v14

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v14, 0xb

    aput-object v5, v4, v14

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v16

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v17

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v5, v4, v18

    const/16 v5, 0xf

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x10

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x11

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x12

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x13

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x14

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x15

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x16

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x17

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x18

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x19

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    const/16 v5, 0x1a

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v4, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v14

    if-lez v14, :cond_1

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v14

    if-lez v14, :cond_2

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    nop

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v4, 0x17

    new-array v4, v4, [Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v3

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v1

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v7

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v8

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v9

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v10

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v11

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v12

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v6, 0x9

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v6, 0xa

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v6, 0xb

    aput-object v5, v4, v6

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v16

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v17

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v5, v4, v18

    const/16 v5, 0xf

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v6, v4, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v6

    if-lez v6, :cond_3

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v6

    if-lez v6, :cond_4

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    nop

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
    .end array-data
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v4}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float v11, v6, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3c23d70a    # 0.01f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "LegacyMetadataMapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v4, 0x22

    invoke-static {v1, v4, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    const/16 v4, 0x23

    invoke-static {v1, v4, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x11

    if-eq v5, v6, :cond_2

    invoke-static {v1, v5, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    :cond_2
    goto :goto_1

    :cond_3
    const/16 v4, 0x21

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v0, v4, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v5, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J

    move-result-wide v16

    add-int/lit8 v18, v5, 0x1

    new-instance v19, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v11, 0x21

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v10, v19

    move-wide/from16 v14, v16

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    aput-object v19, v4, v5

    cmp-long v5, v6, v16

    if-gez v5, :cond_4

    move-wide/from16 v5, v16

    move-wide v6, v5

    :cond_4
    move/from16 v5, v18

    goto :goto_2

    :cond_5
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 14

    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v2

    float-to-double v10, v2

    mul-double/2addr v10, v6

    div-double/2addr v10, v8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v2, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v12, v10, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v2, v1

    float-to-double v12, v2

    div-double v7, v4, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-float v2, v7

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v8, Landroid/util/SizeF;

    invoke-direct {v8, v2, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {p0, v7, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method
