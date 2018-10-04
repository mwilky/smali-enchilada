.class public final Landroid/media/MediaCodecInfo$CodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecCapabilities"
.end annotation


# static fields
.field public static final COLOR_Format12bitRGB444:I = 0x3

.field public static final COLOR_Format16bitARGB1555:I = 0x5

.field public static final COLOR_Format16bitARGB4444:I = 0x4

.field public static final COLOR_Format16bitBGR565:I = 0x7

.field public static final COLOR_Format16bitRGB565:I = 0x6

.field public static final COLOR_Format18BitBGR666:I = 0x29

.field public static final COLOR_Format18bitARGB1665:I = 0x9

.field public static final COLOR_Format18bitRGB666:I = 0x8

.field public static final COLOR_Format19bitARGB1666:I = 0xa

.field public static final COLOR_Format24BitABGR6666:I = 0x2b

.field public static final COLOR_Format24BitARGB6666:I = 0x2a

.field public static final COLOR_Format24bitARGB1887:I = 0xd

.field public static final COLOR_Format24bitBGR888:I = 0xc

.field public static final COLOR_Format24bitRGB888:I = 0xb

.field public static final COLOR_Format25bitARGB1888:I = 0xe

.field public static final COLOR_Format32bitABGR8888:I = 0x7f00a000

.field public static final COLOR_Format32bitARGB8888:I = 0x10

.field public static final COLOR_Format32bitBGRA8888:I = 0xf

.field public static final COLOR_Format8bitRGB332:I = 0x2

.field public static final COLOR_FormatCbYCrY:I = 0x1b

.field public static final COLOR_FormatCrYCbY:I = 0x1c

.field public static final COLOR_FormatL16:I = 0x24

.field public static final COLOR_FormatL2:I = 0x21

.field public static final COLOR_FormatL24:I = 0x25

.field public static final COLOR_FormatL32:I = 0x26

.field public static final COLOR_FormatL4:I = 0x22

.field public static final COLOR_FormatL8:I = 0x23

.field public static final COLOR_FormatMonochrome:I = 0x1

.field public static final COLOR_FormatRGBAFlexible:I = 0x7f36a888

.field public static final COLOR_FormatRGBFlexible:I = 0x7f36b888

.field public static final COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final COLOR_FormatSurface:I = 0x7f000789

.field public static final COLOR_FormatYCbYCr:I = 0x19

.field public static final COLOR_FormatYCrYCb:I = 0x1a

.field public static final COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final COLOR_FormatYUV411Planar:I = 0x11

.field public static final COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final COLOR_FormatYUV420Planar:I = 0x13

.field public static final COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final COLOR_FormatYUV422Flexible:I = 0x7f422888

.field public static final COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final COLOR_FormatYUV422Planar:I = 0x16

.field public static final COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final COLOR_FormatYUV444Flexible:I = 0x7f444888

.field public static final COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final FEATURE_IntraRefresh:Ljava/lang/String; = "intra-refresh"

.field public static final FEATURE_PartialFrame:Ljava/lang/String; = "partial-frame"

.field public static final FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field public static final FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final TAG:Ljava/lang/String; = "CodecCapabilities"

.field private static final decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

.field private static final encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field public colorFormats:[I

.field private mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private mDefaultFormat:Landroid/media/MediaFormat;

.field private mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field mError:I

.field private mFlagsRequired:I

.field private mFlagsSupported:I

.field private mFlagsVerified:I

.field private mMaxSupportedInstances:I

.field private mMime:Ljava/lang/String;

.field private mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v2, Landroid/media/MediaCodecInfo$Feature;

    const-string v3, "adaptive-playback"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v5, "secure-playback"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v5, "tunneled-playback"

    invoke-direct {v2, v5, v0, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v2, v1, v6

    new-instance v0, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "partial-frame"

    const/16 v5, 0x8

    invoke-direct {v0, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    new-array v0, v4, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "intra-refresh"

    invoke-direct {v1, v2, v4, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move/from16 v4, p4

    iput v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const-string/jumbo v7, "mime"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    move-object/from16 v6, p1

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v10, "video/x-vnd.on2.vp9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    iput v9, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static/range {p6 .. p6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->equivalentVP9Level(Landroid/media/MediaFormat;)I

    move-result v10

    iput v10, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array v10, v9, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v7, v10, v8

    move-object v6, v10

    :cond_0
    iput-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, "audio/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v7

    iput-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v7, v10}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "video/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v10, "image/vnd.android.heic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    iput-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v10

    iput-object v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v11, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v10, v11}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    :cond_4
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "max-concurrent-instances"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v11, v12}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v11

    iput v11, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    const-string/jumbo v11, "max-concurrent-instances"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    invoke-static {v11, v12}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v11

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v12

    array-length v13, v12

    :goto_1
    if-ge v8, v13, :cond_7

    aget-object v14, v12, v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "feature-"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_5

    nop

    move-object/from16 v17, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-lez v16, :cond_6

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    move-object/from16 v17, v2

    iget v2, v14, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    goto :goto_2

    :cond_6
    move-object/from16 v17, v2

    :goto_2
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget v2, v14, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v9, v2

    move-object/from16 v2, v17

    move-object/from16 v1, p6

    goto :goto_1

    :cond_7
    move-object/from16 v17, v2

    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6, p6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v0

    return v0
.end method

.method private checkFeature(Ljava/lang/String;I)Z
    .locals 6

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v0, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 10

    new-instance v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    iput p1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput p2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "mime"

    invoke-virtual {v1, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    new-array v4, v2, [I

    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    iget v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    return-object v2
.end method

.method private getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0

    :cond_0
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0
.end method

.method private isAudio()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEncoder()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideo()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "max-bitrate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "bitrate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    return v3

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private supportsProfileLevel(ILjava/lang/Integer;)Z
    .locals 9

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v4, v0, v3

    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v5, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x1

    if-eqz p2, :cond_a

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v7, "video/3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_2

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v7, "video/mp4v-es"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_3

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const v7, 0x2aaaaaa

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    move v7, v2

    :goto_2
    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_9

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iget v1, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-eqz v0, :cond_7

    move v2, v5

    nop

    :cond_7
    return v2

    :cond_8
    return v5

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_4
    return v5

    :cond_b
    return v2
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 3

    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>()V

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public getDefaultFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public final isFeatureRequired(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFormatSupported(Landroid/media/MediaFormat;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "mime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    aget-object v7, v3, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "feature-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_2

    iget-object v6, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    return v2

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "profile"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string/jumbo v4, "level"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsProfileLevel(ILjava/lang/Integer;)Z

    move-result v5

    if-nez v5, :cond_6

    return v2

    :cond_6
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v9, v8

    move v10, v7

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_8

    aget-object v11, v8, v7

    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_7

    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v12, v10, :cond_7

    iget v10, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v8, "profile"

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8, v7}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    if-eqz v5, :cond_9

    invoke-virtual {v5, v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v9

    if-nez v9, :cond_9

    return v2

    :cond_9
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_a

    return v2

    :cond_a
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_b

    return v2

    :cond_b
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_c

    return v2

    :cond_c
    return v6
.end method

.method public isRegular()Z
    .locals 6

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-boolean v5, v4, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public validFeatures()[Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
