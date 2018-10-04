.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final FILE_TYPE_3GPA:I = 0xd3

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xd4

.field public static final FILE_TYPE_AIFF:I = 0xd8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0xd9

.field public static final FILE_TYPE_ARW:I = 0x130

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CR2:I = 0x12d

.field public static final FILE_TYPE_DIVX:I = 0xca

.field public static final FILE_TYPE_DNG:I = 0x12c

.field public static final FILE_TYPE_DSD:I = 0xda

.field public static final FILE_TYPE_DTS:I = 0xd2

.field public static final FILE_TYPE_EC3:I = 0xd7

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xcb

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HEIF:I = 0x25

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MHAS:I = 0xdb

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_NEF:I = 0x12e

.field public static final FILE_TYPE_NRW:I = 0x12f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_ORF:I = 0x132

.field public static final FILE_TYPE_PCM:I = 0xd6

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PEF:I = 0x134

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QCP:I = 0xd5

.field public static final FILE_TYPE_QT:I = 0xc9

.field public static final FILE_TYPE_RAF:I = 0x133

.field public static final FILE_TYPE_RW2:I = 0x131

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SRW:I = 0x135

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE_EXT:I = 0xd2

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x12c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_AUDIO_FILE_TYPE_EXT:I = 0xdb

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x135

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "MediaFile"

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/MediaFile;->DBG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    const-string v0, "MP3"

    const-string v1, "audio/mpeg"

    const/16 v2, 0x3009

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPGA"

    const-string v1, "audio/mpeg"

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4A"

    const-string v1, "audio/mp4"

    const/4 v5, 0x2

    const/16 v6, 0x300b

    invoke-static {v0, v5, v1, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WAV"

    const-string v1, "audio/x-wav"

    const/4 v7, 0x3

    const/16 v8, 0x3008

    invoke-static {v0, v7, v1, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MP3"

    const-string v1, "audio/mp3"

    invoke-static {v0, v3, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4A"

    const-string v1, "audio/mp4a-latm"

    invoke-static {v0, v5, v1, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AMR"

    const-string v1, "audio/amr"

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const-string v1, "audio/amr-wb"

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v5, 0xb901

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    :cond_0
    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    const v2, 0xb902

    const/4 v5, 0x7

    invoke-static {v0, v5, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "OGG"

    const-string v1, "application/ogg"

    invoke-static {v0, v5, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "OGA"

    const-string v1, "application/ogg"

    invoke-static {v0, v5, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AAC"

    const-string v1, "audio/aac"

    const v2, 0xb903

    const/16 v5, 0x8

    invoke-static {v0, v5, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AAC"

    const-string v1, "audio/aac-adts"

    invoke-static {v0, v5, v1, v2, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const-string v1, "audio/midi"

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const/16 v1, 0xc

    const-string v5, "audio/sp-midi"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const/16 v1, 0xd

    const-string v5, "audio/imelody"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const-string/jumbo v1, "video/mpeg"

    const/16 v2, 0x15

    invoke-static {v0, v2, v1, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPG"

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v2, v1, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MP4"

    const-string/jumbo v1, "video/mp4"

    invoke-static {v0, v2, v1, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string/jumbo v5, "video/mp4"

    invoke-static {v0, v1, v5, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MOV"

    const/16 v1, 0xc9

    const-string/jumbo v5, "video/quicktime"

    invoke-static {v0, v1, v5, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MP4"

    const-string v1, "audio/mhas"

    invoke-static {v0, v2, v1, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string/jumbo v5, "video/3gpp"

    const v6, 0xb984

    invoke-static {v0, v1, v5, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GPP"

    const-string/jumbo v5, "video/3gpp"

    invoke-static {v0, v1, v5, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string/jumbo v5, "video/3gpp2"

    invoke-static {v0, v1, v5, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GPP2"

    const-string/jumbo v5, "video/3gpp2"

    invoke-static {v0, v1, v5, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MKV"

    const/16 v1, 0x1b

    const-string/jumbo v5, "video/x-matroska"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBM"

    const/16 v1, 0x1e

    const-string/jumbo v5, "video/webm"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TS"

    const/16 v1, 0x1c

    const-string/jumbo v5, "video/mp2ts"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string/jumbo v5, "video/avi"

    invoke-static {v0, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4V"

    const-string/jumbo v1, "video/x-f4v"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string/jumbo v2, "video/x-ms-wmv"

    const v5, 0xb981

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const-string v0, "JPG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v5, 0x3801

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "JPEG"

    const-string v2, "image/jpeg"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "GIF"

    const/16 v1, 0x20

    const-string v2, "image/gif"

    const/16 v5, 0x3807

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PNG"

    const/16 v1, 0x21

    const-string v2, "image/png"

    const/16 v5, 0x380b

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "BMP"

    const/16 v1, 0x22

    const-string v2, "image/x-ms-bmp"

    const/16 v5, 0x3804

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WBMP"

    const/16 v1, 0x23

    const-string v2, "image/vnd.wap.wbmp"

    const/16 v5, 0x3800

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WEBP"

    const/16 v1, 0x24

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HEIC"

    const/16 v1, 0x25

    const-string v2, "image/heif"

    const/16 v6, 0x3812

    invoke-static {v0, v1, v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HEIF"

    const-string v2, "image/heif"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "DNG"

    const/16 v1, 0x12c

    const-string v2, "image/x-adobe-dng"

    const/16 v6, 0x3811

    invoke-static {v0, v1, v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "CR2"

    const/16 v1, 0x12d

    const-string v2, "image/x-canon-cr2"

    const/16 v6, 0x380d

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "NEF"

    const/16 v1, 0x12e

    const-string v2, "image/x-nikon-nef"

    const/16 v7, 0x3802

    invoke-static {v0, v1, v2, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "NRW"

    const/16 v1, 0x12f

    const-string v2, "image/x-nikon-nrw"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ARW"

    const/16 v1, 0x130

    const-string v2, "image/x-sony-arw"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "RW2"

    const/16 v1, 0x131

    const-string v2, "image/x-panasonic-rw2"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ORF"

    const/16 v1, 0x132

    const-string v2, "image/x-olympus-orf"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "RAF"

    const/16 v1, 0x133

    const-string v2, "image/x-fuji-raf"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PEF"

    const/16 v1, 0x134

    const-string v2, "image/x-pentax-pef"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "SRW"

    const/16 v1, 0x135

    const-string v2, "image/x-samsung-srw"

    invoke-static {v0, v1, v2, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "audio/x-mpegurl"

    const v5, 0xba11

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U"

    const-string v2, "application/x-mpegurl"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PLS"

    const/16 v1, 0x2a

    const-string v2, "audio/x-scpls"

    const v5, 0xba14

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WPL"

    const/16 v1, 0x2b

    const-string v2, "application/vnd.ms-wpl"

    const v5, 0xba10

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U8"

    const-string v1, "application/vnd.apple.mpegurl"

    const/16 v2, 0x2c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const-string v1, "audio/mpegurl"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const-string v1, "audio/x-mpegurl"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TXT"

    const/16 v1, 0x64

    const-string/jumbo v2, "text/plain"

    const/16 v5, 0x3004

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HTM"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v5, 0x3005

    invoke-static {v0, v1, v2, v5, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HTML"

    const-string/jumbo v2, "text/html"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v4, 0xba83

    invoke-static {v0, v1, v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v4, 0xba85

    invoke-static {v0, v1, v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v2, "application/vnd.ms-powerpoint"

    const v4, 0xba86

    invoke-static {v0, v1, v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    const v4, 0xb906

    invoke-static {v0, v1, v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DIVX"

    const/16 v1, 0xca

    const-string/jumbo v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLV"

    const/16 v1, 0xcb

    const-string/jumbo v2, "video/flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QCP"

    const/16 v1, 0xd5

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AC3"

    const/16 v1, 0xd4

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "EC3"

    const/16 v1, 0xd7

    const-string v2, "audio/eac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AIF"

    const/16 v1, 0xd8

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AIFF"

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "APE"

    const/16 v1, 0xd9

    const-string v2, "audio/x-ape"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DSF"

    const-string v1, "audio/x-dsf"

    const/16 v2, 0xda

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DFF"

    const-string v1, "audio/x-dff"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DSD"

    const-string v1, "audio/dsd"

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MHAS"

    const/16 v1, 0xdb

    const-string v2, "audio/mhas"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    return-object v1
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/media/MediaFile;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MediaFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFormatCode: folder was confirmed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, 0x3001

    return v2

    :cond_3
    const/16 v2, 0x3000

    return v2
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0xd2

    if-lt p0, v1, :cond_3

    const/16 v1, 0xdb

    if-gt p0, v1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x135

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRawImageFileType(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x135

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    const/16 v0, 0xcb

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isWMAEnabled()Z
    .locals 6

    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$AudioDecoder;

    sget-object v5, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isWMVEnabled()Z
    .locals 6

    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$VideoDecoder;

    sget-object v5, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
