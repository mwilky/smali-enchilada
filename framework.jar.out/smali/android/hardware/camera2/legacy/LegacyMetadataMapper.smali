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

.field static final OpCameraName:Ljava/lang/String; = "com.oneplus.camera"

.field static final OpProductName:Ljava/lang/String; = "OnePlus3"

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

    .line 1062
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

    .line 1082
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    .line 1126
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

    .line 1138
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    .line 1249
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V
    .locals 6
    .param p1, "format"    # I
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

    .line 1055
    .local p0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1056
    .local v1, "size":Landroid/hardware/Camera$Size;
    new-instance v2, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 1058
    .local v2, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_0

    .line 1060
    :cond_0
    return-void
.end method

.method private static calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J
    .locals 8
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .line 1230
    const-wide/32 v0, 0xbebc200

    .line 1231
    .local v0, "baseDuration":J
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 1232
    .local v2, "area":J
    const-wide/16 v4, 0x47

    .line 1234
    .local v4, "stallPerArea":J
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

    .line 1218
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1219
    .local v0, "legacyFps":[I
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1220
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1221
    return-object v0
.end method

.method static convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1501
    .local p1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1506
    :cond_0
    const/4 v0, 0x0

    .line 1507
    .local v0, "param":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1518
    :pswitch_0
    const-string v0, "edof"

    .line 1519
    goto :goto_0

    .line 1512
    :pswitch_1
    const-string v0, "continuous-picture"

    .line 1513
    goto :goto_0

    .line 1515
    :pswitch_2
    const-string v0, "continuous-video"

    .line 1516
    goto :goto_0

    .line 1521
    :pswitch_3
    const-string/jumbo v0, "macro"

    .line 1522
    goto :goto_0

    .line 1509
    :pswitch_4
    const-string v0, "auto"

    .line 1510
    goto :goto_0

    .line 1524
    :pswitch_5
    const-string v1, "fixed"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    const-string v0, "fixed"

    goto :goto_0

    .line 1527
    :cond_1
    const-string v0, "infinity"

    .line 1531
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1533
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1534
    .local v2, "defaultMode":Ljava/lang/String;
    const-string v3, "LegacyMetadataMapper"

    const-string v4, "convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1537
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    aput-object v2, v5, v1

    .line 1535
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    move-object v0, v2

    .line 1541
    .end local v2    # "defaultMode":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 1502
    .end local v0    # "param":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v0, "LegacyMetadataMapper"

    const-string v1, "No focus modes supported; API1 bug"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
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
    .param p0, "mode"    # Ljava/lang/String;

    .line 1177
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1178
    return v0

    .line 1181
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

    .line 1195
    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAntiBandingMode - Unknown antibanding mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v0

    .line 1192
    :pswitch_0
    return v6

    .line 1189
    :pswitch_1
    return v5

    .line 1186
    :pswitch_2
    return v4

    .line 1183
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
    .param p0, "mode"    # Ljava/lang/String;

    .line 1209
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v0

    .line 1210
    .local v0, "antiBandingMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1211
    const/4 v1, 0x0

    return v1

    .line 1214
    :cond_0
    return v0
.end method

.method static convertEffectModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .line 1151
    if-nez p0, :cond_0

    .line 1152
    const/4 v0, 0x0

    return v0

    .line 1154
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1155
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1156
    const/4 v1, -0x1

    return v1

    .line 1158
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    aget v1, v1, v0

    return v1
.end method

.method static convertEffectModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 1162
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .line 1163
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1164
    const/4 v1, 0x0

    return-object v1

    .line 1166
    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 0
    .param p0, "request"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 1246
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 1247
    return-void
.end method

.method static convertSceneModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .line 1103
    if-nez p0, :cond_0

    .line 1104
    const/4 v0, 0x0

    return v0

    .line 1106
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1107
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1108
    const/4 v1, -0x1

    return v1

    .line 1110
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    aget v1, v1, v0

    return v1
.end method

.method static convertSceneModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 1114
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1116
    const-string v0, "auto"

    return-object v0

    .line 1119
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .line 1120
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1121
    const/4 v1, 0x0

    return-object v1

    .line 1123
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;

    .line 130
    const-string/jumbo v0, "parameters must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "info must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "paramStr":Ljava/lang/String;
    new-instance v1, Landroid/hardware/CameraInfo;

    invoke-direct {v1}, Landroid/hardware/CameraInfo;-><init>()V

    .line 135
    .local v1, "outerInfo":Landroid/hardware/CameraInfo;
    iput-object p1, v1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    .line 137
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    return-object v2
.end method

.method public static createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .param p0, "parameters"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/hardware/CameraInfo;

    .line 152
    const-string/jumbo v0, "parameters must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "info must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    const-string v1, "info.info must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 158
    .local v0, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v1, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V

    .line 160
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 161
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 162
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 171
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v2
.end method

.method public static createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 13
    .param p0, "c"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "templateId"    # I

    .line 1273
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    invoke-static {v0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1277
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1290
    .local v0, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1294
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1297
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1300
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1303
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1309
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1312
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1316
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1317
    .local v1, "activeArray":Landroid/graphics/Rect;
    new-array v5, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v12, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1318
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    .line 1319
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v10, v6, -0x1

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v12, v5, v4

    .line 1320
    .local v5, "activeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1321
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1322
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1328
    .end local v1    # "activeArray":Landroid/graphics/Rect;
    .end local v5    # "activeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    packed-switch p1, :pswitch_data_0

    .line 1340
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible; keep in sync with sAllowedTemplates"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1336
    :pswitch_0
    const/4 v1, 0x3

    .line 1337
    .local v1, "captureIntent":I
    goto :goto_0

    .line 1333
    .end local v1    # "captureIntent":I
    :pswitch_1
    const/4 v1, 0x2

    .line 1334
    .restart local v1    # "captureIntent":I
    goto :goto_0

    .line 1330
    .end local v1    # "captureIntent":I
    :pswitch_2
    const/4 v1, 0x1

    .line 1331
    .restart local v1    # "captureIntent":I
    nop

    .line 1340
    :goto_0
    nop

    .line 1342
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1346
    .end local v1    # "captureIntent":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1350
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1354
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1357
    .local v1, "minimumFocusDistance":Ljava/lang/Float;
    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 1358
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 1360
    const/4 v3, 0x0

    .line 1360
    .local v3, "afMode":I
    goto :goto_3

    .line 1363
    .end local v3    # "afMode":I
    :cond_0
    const/4 v6, 0x1

    .line 1365
    .local v6, "afMode":I
    if-eq p1, v3, :cond_3

    const/4 v7, 0x4

    if-ne p1, v7, :cond_1

    goto :goto_1

    .line 1371
    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v5, :cond_4

    .line 1373
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v7}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1375
    const/4 v3, 0x4

    goto :goto_2

    .line 1367
    :cond_3
    :goto_1
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-static {v7, v3}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1369
    const/4 v3, 0x3

    .line 1369
    .end local v6    # "afMode":I
    .restart local v3    # "afMode":I
    :goto_2
    goto :goto_3

    .line 1385
    .end local v3    # "afMode":I
    .restart local v6    # "afMode":I
    :cond_4
    move v3, v6

    .line 1385
    .end local v6    # "afMode":I
    .restart local v3    # "afMode":I
    :goto_3
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1390
    .end local v1    # "minimumFocusDistance":Ljava/lang/Float;
    .end local v3    # "afMode":I
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1391
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    .line 1394
    .local v1, "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    aget-object v3, v1, v4

    .line 1395
    .local v3, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v6, v1

    move-object v7, v3

    move v3, v4

    .line 1395
    .end local v3    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v7, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_4
    if-ge v3, v6, :cond_7

    aget-object v8, v1, v3

    .line 1396
    .local v8, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
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

    .line 1397
    move-object v7, v8

    goto :goto_5

    .line 1398
    :cond_5
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    if-ne v9, v10, :cond_6

    .line 1399
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

    .line 1400
    move-object v7, v8

    .line 1395
    .end local v8    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1403
    :cond_7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1407
    .end local v1    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1414
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1421
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1426
    if-ne p1, v5, :cond_8

    .line 1427
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    .line 1429
    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1435
    :goto_6
    if-ne p1, v5, :cond_9

    .line 1436
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1436
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    .line 1439
    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1439
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1448
    :goto_7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1449
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1448
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1456
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    .line 1457
    .local v1, "sizes":[Landroid/util/Size;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    array-length v5, v1

    if-le v5, v2, :cond_a

    aget-object v2, v1, v2

    goto :goto_8

    :cond_a
    aget-object v2, v1, v4

    :goto_8
    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1460
    return-object v0

    .line 1274
    .end local v0    # "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v1    # "sizes":[Landroid/util/Size;
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

    .line 1464
    .local p0, "keys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    array-length v0, p0

    new-array v0, v0, [I

    .line 1466
    .local v0, "tags":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1467
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1470
    .end local v1    # "i":I
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

    .line 1474
    .local p0, "keys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    array-length v0, p0

    new-array v0, v0, [I

    .line 1476
    .local v0, "tags":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1477
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    .end local v1    # "i":I
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

    .line 1484
    .local p0, "keys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    array-length v0, p0

    new-array v0, v0, [I

    .line 1486
    .local v0, "tags":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1487
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1490
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "i"    # Landroid/hardware/Camera$CameraInfo;

    .line 175
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 176
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 177
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method private static mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 186
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 192
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 196
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 200
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 205
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 209
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 213
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 217
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 222
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 229
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 234
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 239
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 244
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 249
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 254
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 261
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 263
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
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "antiBandingModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 398
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 399
    .local v3, "modes":[I
    const/4 v4, 0x0

    .line 400
    .local v4, "j":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 401
    .local v6, "mode":Ljava/lang/String;
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v7

    .line 406
    .local v7, "convertedMode":I
    add-int/lit8 v8, v4, 0x1

    .line 406
    .local v8, "j":I
    aput v7, v3, v4

    .line 408
    .end local v4    # "j":I
    .end local v6    # "mode":Ljava/lang/String;
    .end local v7    # "convertedMode":I
    nop

    .line 400
    move v4, v8

    goto :goto_0

    .line 409
    .end local v8    # "j":I
    .restart local v4    # "j":I
    :cond_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 410
    .end local v3    # "modes":[I
    .end local v4    # "j":I
    goto :goto_1

    .line 411
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v4, v2, [I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 418
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 419
    .local v3, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v3, :cond_6

    .line 422
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 423
    .local v4, "rangesSize":I
    if-lez v4, :cond_5

    .line 426
    new-array v5, v4, [Landroid/util/Range;

    .line 427
    .local v5, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 428
    .local v6, "i":I
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

    .line 429
    .local v8, "r":[I
    add-int/lit8 v10, v6, 0x1

    .line 429
    .local v10, "i":I
    aget v11, v8, v2

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    .line 430
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget v9, v8, v9

    move-object v15, v3

    int-to-double v2, v9

    .line 430
    .end local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local v15, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    div-double/2addr v2, v13

    .line 431
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 429
    invoke-static {v11, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v5, v6

    .line 432
    .end local v6    # "i":I
    .end local v8    # "r":[I
    nop

    .line 428
    move v6, v10

    move-object v3, v15

    const/4 v2, 0x0

    goto :goto_2

    .line 433
    .end local v10    # "i":I
    .end local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v6    # "i":I
    :cond_2
    move-object v15, v3

    .line 433
    .end local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 440
    .end local v4    # "rangesSize":I
    .end local v5    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .end local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "off"

    const-string v4, "auto"

    const-string/jumbo v5, "on"

    const-string/jumbo v6, "red-eye"

    const-string/jumbo v7, "torch"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "flashModeStrings":[Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 456
    .local v4, "flashModeInts":[I
    invoke-static {v2, v3, v4}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v5

    .line 460
    .local v5, "aeAvail":[I
    if-eqz v5, :cond_3

    array-length v6, v5

    if-nez v6, :cond_4

    .line 461
    :cond_3
    new-array v6, v9, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    move-object v5, v6

    .line 467
    :cond_4
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 474
    .end local v2    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "flashModeStrings":[Ljava/lang/String;
    .end local v4    # "flashModeInts":[I
    .end local v5    # "aeAvail":[I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 475
    .local v2, "min":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    .line 477
    .local v3, "max":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 484
    .end local v2    # "min":I
    .end local v3    # "max":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 486
    .local v2, "step":F
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Landroid/hardware/camera2/utils/ParamsUtils;->createRational(F)Landroid/util/Rational;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 493
    .end local v2    # "step":F
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    .line 495
    .local v2, "aeLockAvailable":Z
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 497
    .end local v2    # "aeLockAvailable":Z
    return-void

    .line 424
    .local v3, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local v4, "rangesSize":I
    :cond_5
    move-object v15, v3

    .line 424
    .end local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "At least one FPS range must be supported."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 420
    .end local v4    # "rangesSize":I
    .end local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_6
    move-object v15, v3

    .line 420
    .end local v3    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v15    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
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
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 506
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 508
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "auto"

    const-string v2, "continuous-picture"

    const-string v3, "continuous-video"

    const-string v4, "edof"

    const-string v5, "infinity"

    const-string/jumbo v6, "macro"

    const-string v7, "fixed"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "focusModeStrings":[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 528
    .local v2, "focusModeInts":[I
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    .line 532
    .local v3, "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 533
    :cond_0
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 535
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 545
    .end local v0    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "focusModeStrings":[Ljava/lang/String;
    .end local v2    # "focusModeInts":[I
    .end local v3    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
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
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 553
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 555
    .local v0, "wbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 566
    .local v1, "wbModeStrings":[Ljava/lang/String;
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 578
    .local v2, "wbModeInts":[I
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    .line 582
    .local v3, "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 583
    :cond_0
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 585
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v4

    .line 602
    .local v4, "awbLockAvailable":Z
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 605
    .end local v0    # "wbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "wbModeStrings":[Ljava/lang/String;
    .end local v2    # "wbModeInts":[I
    .end local v3    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "awbLockAvailable":Z
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
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 613
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    goto :goto_0

    .line 615
    :cond_0
    new-array v1, v3, [I

    aput v4, v1, v4

    .line 617
    .local v1, "stabModes":[I
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 623
    .end local v1    # "stabModes":[I
    const/4 v1, 0x0

    .local v1, "AE":I
    const/4 v5, 0x1

    .local v5, "AWB":I
    const/4 v6, 0x2

    .line 625
    .local v6, "AF":I
    const/4 v7, 0x3

    new-array v7, v7, [I

    .line 626
    .local v7, "maxRegions":[I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v8

    aput v8, v7, v4

    .line 627
    aput v4, v7, v3

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v8

    aput v8, v7, v2

    .line 637
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v8

    .line 643
    .local v8, "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_1

    new-array v9, v4, [I

    goto :goto_1

    .line 644
    :cond_1
    sget-object v9, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    sget-object v10, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v8, v9, v10}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v9

    .line 646
    .local v9, "supportedEffectModes":[I
    :goto_1
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v10

    .line 652
    .local v10, "maxNumDetectedFaces":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    .line 653
    .local v11, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    sget-object v13, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    .line 654
    invoke-static {v11, v12, v13}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v12

    .line 657
    .local v12, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v3, :cond_2

    .line 658
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "auto"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 659
    const/4 v12, 0x0

    .line 662
    :cond_2
    const/4 v13, 0x1

    .line 663
    .local v13, "sceneModeSupported":Z
    if-nez v12, :cond_3

    if-nez v10, :cond_3

    .line 664
    const/4 v13, 0x0

    .line 667
    :cond_3
    if-eqz v13, :cond_7

    .line 668
    if-nez v12, :cond_4

    .line 669
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    .line 671
    :cond_4
    if-lez v10, :cond_5

    .line 672
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 676
    :goto_2
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v12, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    .line 678
    :cond_6
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v12}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 680
    :cond_7
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v15, v3, [I

    aput v4, v15, v4

    invoke-virtual {v0, v14, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 686
    :goto_3
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v13, :cond_8

    .line 687
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    goto :goto_4

    .line 688
    :cond_8
    new-array v2, v3, [I

    aput v3, v2, v4

    .line 686
    :goto_4
    invoke-virtual {v0, v14, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 689
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
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "flashAvailable":Z
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 723
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 725
    const-string/jumbo v2, "off"

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ListUtils;->listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 732
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 733
    return-void
.end method

.method private static mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 736
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    .line 738
    .local v0, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v0, :cond_0

    .line 739
    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;

    move-result-object v1

    .line 740
    .local v1, "sizes":[Landroid/util/Size;
    new-instance v2, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 741
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 743
    .end local v1    # "sizes":[Landroid/util/Size;
    :cond_0
    return-void
.end method

.method private static mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 700
    const-string v0, "fixed"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 715
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v2

    aput v2, v0, v1

    .line 716
    .local v0, "focalLengths":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method private static mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 23
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    .line 750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v1, "capList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "com.oneplus.camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const-string v4, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 760
    .local v4, "capabilities":[I
    move v7, v2

    .local v7, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 761
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v7

    .line 760
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 765
    .end local v7    # "i":I
    :cond_1
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 775
    const/16 v7, 0x24

    new-array v7, v7, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v8, v7, v2

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v8, v7, v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v8, v7, v5

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x4

    aput-object v8, v7, v10

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x5

    aput-object v8, v7, v11

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v12, 0x6

    aput-object v8, v7, v12

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v13, 0x7

    aput-object v8, v7, v13

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v14, 0x8

    aput-object v8, v7, v14

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v15, 0x9

    aput-object v8, v7, v15

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v16, 0xa

    aput-object v8, v7, v16

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v17, 0xb

    aput-object v8, v7, v17

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v18, 0xc

    aput-object v8, v7, v18

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0xd

    aput-object v8, v7, v19

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v20, 0xe

    aput-object v8, v7, v20

    const/16 v8, 0xf

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x10

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x11

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x12

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x13

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x14

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x15

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x16

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x17

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x18

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x19

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1a

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1b

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1c

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1d

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1e

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x1f

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x20

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x21

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x22

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    const/16 v8, 0x23

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v21, v7, v8

    .line 814
    .local v7, "availableKeys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 819
    .local v8, "characteristicsKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 820
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_2
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v14, v2, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 824
    invoke-interface {v8, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v14

    .line 823
    invoke-virtual {v0, v15, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 831
    .end local v7    # "availableKeys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    .end local v8    # "characteristicsKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    const/16 v7, 0x1b

    new-array v7, v7, [Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v2

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v6

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v5

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v10

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v11

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v12

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v13

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v14, 0x8

    aput-object v8, v7, v14

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v14, 0x9

    aput-object v8, v7, v14

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v16

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v17

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v18

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v19

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v8, v7, v20

    const/16 v8, 0xf

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x10

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x11

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x12

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x13

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x14

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x15

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x16

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x17

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x18

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x19

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    const/16 v8, 0x1a

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v14, v7, v8

    .line 860
    .local v7, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v8, Ljava/util/ArrayList;

    .line 861
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 863
    .local v8, "availableKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v14

    if-lez v14, :cond_3

    .line 864
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v14

    if-lez v14, :cond_4

    .line 867
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_4
    nop

    .line 871
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/hardware/camera2/CaptureRequest$Key;

    .line 872
    .local v14, "availableRequestKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 873
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 880
    .end local v7    # "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    .end local v8    # "availableKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    .end local v14    # "availableRequestKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    const/16 v7, 0x17

    new-array v7, v7, [Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v2

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v6

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v5

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v10

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v11

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v12

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v9, 0x7

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v9, 0x8

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v9, 0x9

    aput-object v8, v7, v9

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v16

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v17

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v18

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v19

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v8, v7, v20

    const/16 v8, 0xf

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x10

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x11

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x12

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x13

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x14

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x15

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    const/16 v8, 0x16

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v7, v8

    .line 906
    .local v7, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    new-instance v8, Ljava/util/ArrayList;

    .line 907
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 909
    .local v8, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v9

    if-lez v9, :cond_5

    .line 910
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v9

    if-lez v9, :cond_6

    .line 913
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_6
    nop

    .line 917
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/hardware/camera2/CaptureResult$Key;

    .line 918
    .local v9, "availableResultKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 919
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 925
    .end local v7    # "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    .end local v8    # "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    .end local v9    # "availableResultKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 933
    .local v5, "outputStreams":[I
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 938
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 943
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 948
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 949
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 948
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 950
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
    .end array-data
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 956
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 961
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 962
    return-void
.end method

.method private static mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 20
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, "availableStreamConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 278
    .local v2, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "jpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v4}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    .line 293
    .local v4, "areaComparator":Landroid/hardware/camera2/legacy/SizeAreaComparator;
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    invoke-static {v3}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 296
    .local v5, "maxJpegSize":Landroid/hardware/Camera$Size;
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    .line 304
    .local v6, "jpegAspectRatio":F
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 305
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 306
    .local v8, "index":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 308
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 310
    .local v10, "previewAspectRatio":F
    sub-float v11, v6, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3c23d70a    # 0.01f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_0

    .line 312
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    .end local v8    # "index":I
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    .end local v10    # "previewAspectRatio":F
    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 327
    const-string v7, "LegacyMetadataMapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 333
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 336
    .end local v4    # "areaComparator":Landroid/hardware/camera2/legacy/SizeAreaComparator;
    .end local v5    # "maxJpegSize":Landroid/hardware/Camera$Size;
    .end local v6    # "jpegAspectRatio":F
    const/16 v4, 0x22

    invoke-static {v1, v4, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 338
    const/16 v4, 0x23

    invoke-static {v1, v4, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 340
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

    .line 341
    .local v5, "format":I
    invoke-static {v5}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x11

    if-eq v5, v6, :cond_2

    .line 342
    invoke-static {v1, v5, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 351
    .end local v5    # "format":I
    :cond_2
    goto :goto_1

    .line 353
    :cond_3
    const/16 v4, 0x21

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 353
    invoke-static {v1, v4, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    .line 358
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 359
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 358
    invoke-virtual {v0, v4, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 365
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v5, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 367
    nop

    .line 368
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 369
    .local v4, "jpegStalls":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v5, 0x0

    .line 370
    .local v5, "i":I
    const-wide/16 v6, -0x1

    .line 371
    .local v6, "longestStallDuration":J
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 372
    .local v9, "s":Landroid/hardware/Camera$Size;
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J

    move-result-wide v16

    .line 373
    .local v16, "stallDuration":J
    add-int/lit8 v18, v5, 0x1

    .line 373
    .local v18, "i":I
    new-instance v19, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v11, 0x21

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v10, v19

    move-wide/from16 v14, v16

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    aput-object v19, v4, v5

    .line 375
    .end local v5    # "i":I
    cmp-long v5, v6, v16

    if-gez v5, :cond_4

    .line 376
    move-wide/from16 v5, v16

    .line 378
    .end local v6    # "longestStallDuration":J
    .end local v9    # "s":Landroid/hardware/Camera$Size;
    .end local v16    # "stallDuration":J
    .local v5, "longestStallDuration":J
    move-wide v6, v5

    .line 371
    .end local v5    # "longestStallDuration":J
    .restart local v6    # "longestStallDuration":J
    :cond_4
    move/from16 v5, v18

    goto :goto_2

    .line 383
    .end local v18    # "i":I
    .local v5, "i":I
    :cond_5
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 388
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method private static mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 16
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    .line 966
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v1

    .line 969
    .local v1, "largestJpegSize":Landroid/util/Size;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.oneplus.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 971
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getSensorActiveSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v1

    .line 979
    :cond_0
    invoke-static {v1}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    .line 980
    .local v3, "activeArrayRect":Landroid/graphics/Rect;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 988
    .end local v3    # "activeArrayRect":Landroid/graphics/Rect;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 994
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v3

    .line 1004
    .local v3, "focalLength":F
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v4

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    .line 1005
    .local v6, "angleHor":D
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v4

    float-to-double v12, v4

    mul-double/2addr v12, v8

    div-double/2addr v12, v10

    .line 1007
    .local v12, "angleVer":D
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v8, v4, v3

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v14, v12, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1008
    .local v8, "height":F
    mul-float/2addr v4, v3

    float-to-double v14, v4

    div-double v9, v6, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v4, v9

    .line 1010
    .local v4, "width":F
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v10, Landroid/util/SizeF;

    invoke-direct {v10, v4, v8}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1017
    .end local v3    # "focalLength":F
    .end local v4    # "width":F
    .end local v6    # "angleHor":D
    .end local v8    # "height":F
    .end local v12    # "angleVer":D
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1019
    return-void
.end method

.method private static mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 1027
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1028
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .local v0, "fdModes":[I
    goto :goto_0

    .line 1034
    .end local v0    # "fdModes":[I
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1038
    .restart local v0    # "fdModes":[I
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1043
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1044
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 1050
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1051
    return-void
.end method
