.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_5POINT1:I = 0xfc

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODING_AAC_ELD:I = 0xf

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AAC_XHE:I = 0x10

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AC4:I = 0x11

.field public static final ENCODING_AMRNB:I = 0x64

.field public static final ENCODING_AMRWB:I = 0x65

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_EVRC:I = 0x66

.field public static final ENCODING_EVRCB:I = 0x67

.field public static final ENCODING_EVRCNW:I = 0x69

.field public static final ENCODING_EVRCWB:I = 0x68

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_E_AC3_JOC:I = 0x12

.field public static final ENCODING_IEC61937:I = 0xd

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4

.field public static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field public static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final SAMPLE_RATE_UNSPECIFIED:I

.field public static final SURROUND_SOUND_ENCODING:[I


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iput p4, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    const/16 v0, 0xf

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioFormat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method public static channelCountFromInChannelMask(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static filterPublicFormats([I)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v1, v2, :cond_1

    aget v3, v0, v2

    aput v3, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public static getBytesPerSample(I)I
    .locals 3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x17

    return v0

    :pswitch_1
    const/16 v0, 0x3d

    return v0

    :pswitch_2
    const/16 v0, 0x20

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :cond_0
    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static inChannelMaskFromOutChannelMask(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0xc

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEncodingLinearFrames(I)Z
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isPublicEncoding(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static toDisplayName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown surround sound format"

    return-object v0

    :pswitch_0
    const-string v0, "DTS HD"

    return-object v0

    :pswitch_1
    const-string v0, "DTS"

    return-object v0

    :pswitch_2
    const-string v0, "Dolby Digital Plus (E_AC3)"

    return-object v0

    :pswitch_3
    const-string v0, "Dolby Digital (AC3)"

    return-object v0

    :cond_0
    const-string v0, "Dolby Atmos"

    return-object v0

    :cond_1
    const-string v0, "Dolby TrueHD"

    return-object v0

    :cond_2
    const-string v0, "AAC"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toLogFriendlyEncoding(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ENCODING_AC4"

    return-object v0

    :pswitch_1
    const-string v0, "ENCODING_AAC_XHE"

    return-object v0

    :pswitch_2
    const-string v0, "ENCODING_AAC_ELD"

    return-object v0

    :pswitch_3
    const-string v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    :pswitch_4
    const-string v0, "ENCODING_IEC61937"

    return-object v0

    :pswitch_5
    const-string v0, "ENCODING_AAC_HE_V2"

    return-object v0

    :pswitch_6
    const-string v0, "ENCODING_AAC_HE_V1"

    return-object v0

    :pswitch_7
    const-string v0, "ENCODING_AAC_LC"

    return-object v0

    :pswitch_8
    const-string v0, "ENCODING_MP3"

    return-object v0

    :pswitch_9
    const-string v0, "ENCODING_DTS_HD"

    return-object v0

    :pswitch_a
    const-string v0, "ENCODING_DTS"

    return-object v0

    :pswitch_b
    const-string v0, "ENCODING_E_AC3"

    return-object v0

    :pswitch_c
    const-string v0, "ENCODING_AC3"

    return-object v0

    :pswitch_d
    const-string v0, "ENCODING_PCM_FLOAT"

    return-object v0

    :pswitch_e
    const-string v0, "ENCODING_PCM_8BIT"

    return-object v0

    :pswitch_f
    const-string v0, "ENCODING_PCM_16BIT"

    return-object v0

    :cond_0
    const-string v0, "ENCODING_INVALID"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v4, v2, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v3, v4, :cond_6

    :cond_3
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v4, v2, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v3, v4, :cond_6

    :cond_4
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v3, v4, :cond_6

    :cond_5
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    nop

    :cond_7
    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getChannelCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getChannelIndexMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public getChannelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public getPropertySetMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .locals 4

    const-string v0, "%dch %dHz %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v2}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
