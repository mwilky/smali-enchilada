.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    }
.end annotation


# static fields
.field private static final CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FACE_LANDMARK_SIZE:I = 0x6

.field private static final GPS_PROCESS:Ljava/lang/String; = "GPS"

.field public static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$20;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$20;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/OisSample;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getOisSamples()[Landroid/hardware/camera2/params/OisSample;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    move-result-object v0

    return-object v0
.end method

.method private static varargs areValuesAllNull([Ljava/lang/Object;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private close()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-void
.end method

.method private getAvailableFormats()[I
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    const/16 v2, 0x100

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->access$000(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->access$000(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private getFaceRectangles()[Landroid/graphics/Rect;
    .locals 9

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getFaces()[Landroid/hardware/camera2/params/Face;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v5, v7, v12

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    if-nez v1, :cond_1

    const-string v7, "CameraMetadataJV"

    const-string v13, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v9, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_3

    const-string v6, "CameraMetadataJV"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown face detect mode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6

    :cond_3
    :goto_0
    if-eqz v2, :cond_f

    if-nez v3, :cond_4

    goto/16 :goto_6

    :cond_4
    array-length v7, v2

    array-length v13, v3

    if-eq v7, v13, :cond_5

    const-string v7, "CameraMetadataJV"

    const-string v13, "Face score size(%d) doesn match face rectangle size(%d)!"

    new-array v14, v10, [Ljava/lang/Object;

    array-length v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    array-length v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    array-length v7, v2

    array-length v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v10, :cond_a

    if-eqz v4, :cond_9

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    array-length v13, v4

    if-ne v13, v7, :cond_7

    array-length v13, v5

    mul-int/lit8 v14, v7, 0x6

    if-eq v13, v14, :cond_8

    :cond_7
    const-string v13, "CameraMetadataJV"

    const-string v14, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    new-array v15, v11, [Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v8

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    array-length v6, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    array-length v7, v5

    div-int/lit8 v7, v7, 0x6

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    :cond_9
    :goto_1
    const-string v6, "CameraMetadataJV"

    const-string v13, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_a
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x64

    if-ne v13, v9, :cond_c

    nop

    :goto_3
    if-ge v8, v7, :cond_e

    aget-byte v10, v2, v8

    if-gt v10, v14, :cond_b

    aget-byte v10, v2, v8

    if-lt v10, v9, :cond_b

    new-instance v10, Landroid/hardware/camera2/params/Face;

    aget-object v11, v3, v8

    aget-byte v12, v2, v8

    invoke-direct {v10, v11, v12}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    nop

    :goto_4
    if-ge v8, v7, :cond_e

    aget-byte v13, v2, v8

    if-gt v13, v14, :cond_d

    aget-byte v13, v2, v8

    if-lt v13, v9, :cond_d

    aget v13, v4, v8

    if-ltz v13, :cond_d

    new-instance v13, Landroid/graphics/Point;

    mul-int/lit8 v15, v8, 0x6

    aget v15, v5, v15

    mul-int/lit8 v17, v8, 0x6

    add-int/lit8 v17, v17, 0x1

    aget v9, v5, v17

    invoke-direct {v13, v15, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v13

    new-instance v9, Landroid/graphics/Point;

    mul-int/lit8 v13, v8, 0x6

    add-int/2addr v13, v10

    aget v13, v5, v13

    mul-int/lit8 v15, v8, 0x6

    add-int/2addr v15, v11

    aget v15, v5, v15

    invoke-direct {v9, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v22, v9

    new-instance v9, Landroid/graphics/Point;

    mul-int/lit8 v13, v8, 0x6

    add-int/2addr v13, v12

    aget v13, v5, v13

    mul-int/lit8 v15, v8, 0x6

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x5

    aget v15, v5, v15

    invoke-direct {v9, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v23, v9

    new-instance v9, Landroid/hardware/camera2/params/Face;

    aget-object v18, v3, v8

    aget-byte v19, v2, v8

    aget v20, v4, v8

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/16 v16, 0x5

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v8

    :cond_f
    :goto_6
    const-string v6, "CameraMetadataJV"

    const-string v7, "Expect face scores and rectangles to be non-null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6
.end method

.method private getGpsLocation()Landroid/location/Location;
    .locals 11

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Landroid/location/Location;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setTime(J)V

    goto :goto_0

    :cond_1
    const-string v7, "CameraMetadataJV"

    const-string v8, "getGpsLocation - No timestamp for GPS location."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_2

    aget-wide v7, v1, v4

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    aget-wide v4, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    aget-wide v4, v1, v6

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_1

    :cond_2
    const-string v4, "CameraMetadataJV"

    const-string v5, "getGpsLocation - No coordinates for GPS location"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3
.end method

.method private getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .locals 5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-nez v1, :cond_1

    const-string v3, "CameraMetadataJV"

    const-string v4, "getLensShadingMap - Lens shading map size was null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v2, Landroid/hardware/camera2/params/LensShadingMap;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    return-object v2
.end method

.method private static getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    return-object v0
.end method

.method private getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-nez v3, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-nez v3, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getNativeType(IJ)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result v0

    return v0
.end method

.method private getOisSamples()[Landroid/hardware/camera2/params/OisSample;
    .locals 10

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_X_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_Y_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is null but yShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is null but xShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_2
    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    array-length v3, v1

    array-length v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_5

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_4

    array-length v3, v0

    new-array v3, v3, [Landroid/hardware/camera2/params/OisSample;

    nop

    :goto_0
    move v4, v7

    array-length v5, v0

    if-ge v4, v5, :cond_3

    new-instance v5, Landroid/hardware/camera2/params/OisSample;

    aget-wide v6, v0, v4

    aget v8, v1, v4

    aget v9, v2, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/hardware/camera2/params/OisSample;-><init>(JFF)V

    aput-object v5, v3, v4

    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    new-array v4, v5, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "timestamps has %d entries but yShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    new-array v4, v5, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "timestamps has %d entries but xShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is not null but yShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is not null but xShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [I

    const/4 v2, 0x0

    array-length v3, v11

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v11, v4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move/from16 v19, v2

    new-instance v20, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v2, v20

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v21, v11

    move/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    return-object v20
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static getTag(Ljava/lang/String;J)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    return-object v3

    :cond_2
    :goto_0
    const-string v3, "CameraMetadataJV"

    const-string v5, "getTonemapCurve - missing tone curve components"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeDump()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
.end method

.method private synchronized native nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native nativeGetTagFromKeyLocal(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeGetTypeFromTag(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native nativeGetTypeFromTagLocal(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native nativeIsEmpty()Z
.end method

.method private synchronized native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeReadValues(I)[B
.end method

.method private static native nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private synchronized native nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeWriteValues(I[B)V
.end method

.method private static registerAllMarshalers()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 5

    move-object v0, p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    new-array v2, v2, [I

    nop

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget v3, v0, v1

    aput v3, v2, v1

    aget v3, v0, v1

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1

    const/16 v3, 0x21

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method private setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void
.end method

.method private setFaceRectangles([Landroid/graphics/Rect;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Rect;

    nop

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setFaces([Landroid/hardware/camera2/params/Face;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    array-length v3, p1

    move v4, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v5, p1, v1

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    const-string v6, "CameraMetadataJV"

    const-string/jumbo v7, "setFaces - null face detected, skipping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v2, [Landroid/graphics/Rect;

    new-array v3, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    new-array v5, v2, [I

    mul-int/lit8 v7, v2, 0x6

    new-array v6, v7, [I

    :cond_4
    const/4 v7, 0x0

    array-length v8, p1

    :goto_2
    if-ge v0, v8, :cond_7

    aget-object v9, p1, v0

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    aput-object v10, v1, v7

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    if-eqz v4, :cond_6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v10

    aput v10, v5, v7

    const/4 v10, 0x0

    mul-int/lit8 v11, v7, 0x6

    add-int/lit8 v12, v10, 0x1

    add-int/2addr v11, v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    aput v10, v6, v11

    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    :cond_6
    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setGpsLocation(Landroid/location/Location;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/4 v0, 0x1

    aput-wide v2, v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-nez v2, :cond_1

    const-string v5, "CameraMetadataJV"

    const-string/jumbo v6, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v5, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method private setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [[F

    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [F

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {p1, v2, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v0, v1, v0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    aget-object v4, v1, v2

    invoke-direct {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v3, v1, v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v2
.end method

.method public static setupGlobalVendorTagDescriptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string v2, "Failure to set up global vendor tags"

    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x190aa

    if-eq v2, v3, :cond_2

    const v3, 0x6de15a2e

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "network"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "CELLID"

    return-object v0

    :pswitch_1
    const-string v0, "GPS"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1148a

    if-eq v2, v3, :cond_2

    const v3, 0x7644b9fd

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CELLID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "GPS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "network"

    return-object v0

    :pswitch_1
    const-string v0, "gps"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpToLog()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraMetadataJV"

    const-string v2, "Dump logging failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "key must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getEntryCount()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public readValues(I)[B
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeValues(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    return-void
.end method
