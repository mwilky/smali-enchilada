.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_5

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v5, ""

    const-string v6, "BYTE"

    const-string v7, "STRING"

    const-string v8, "USHORT"

    const-string v9, "ULONG"

    const-string v10, "URATIONAL"

    const-string v11, "SBYTE"

    const-string v12, "UNDEFINED"

    const-string v13, "SSHORT"

    const-string v14, "SLONG"

    const-string v15, "SRATIONAL"

    const-string v16, "SINGLE"

    const-string v17, "DOUBLE"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v4, 0xe

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v5, 0x8

    new-array v6, v5, [B

    fill-array-data v6, :array_7

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    new-array v6, v0, [I

    fill-array-data v6, :array_8

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    new-array v7, v6, [I

    aput v5, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v7, 0x29

    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/4 v11, 0x0

    const/16 v12, 0xfe

    invoke-direct {v9, v10, v12, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v9, v10, v12, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageLength"

    const/16 v14, 0x101

    const/4 v15, 0x3

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v9

    invoke-direct/range {v12 .. v17}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v12, v13, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v12, v13, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/4 v12, 0x5

    aput-object v9, v7, v12

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v14, 0x9

    aput-object v9, v7, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v3, 0x112

    invoke-direct {v9, v15, v3, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v3, 0xb

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v3, 0x115

    invoke-direct {v9, v15, v3, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v3, 0xc

    aput-object v9, v7, v3

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "RowsPerStrip"

    const/16 v17, 0x116

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v9, 0xd

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripByteCounts"

    const/16 v17, 0x117

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v3, v9, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0xf

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v3, v9, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x10

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v3, v9, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x11

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v3, v9, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x12

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v3, v9, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x13

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Software"

    const/16 v15, 0x131

    invoke-direct {v3, v9, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x14

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v3, v9, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x15

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v3, v9, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x16

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v3, v9, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v9, 0x17

    aput-object v3, v7, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v4, 0x13f

    invoke-direct {v3, v15, v4, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x18

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v3, v4, v15, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x19

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v3, v4, v15, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1a

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v3, v4, v15, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1b

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v3, v4, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1c

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v3, v4, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1d

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v3, v4, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1e

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v3, v4, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x1f

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "Copyright"

    const v15, 0x8298

    invoke-direct {v3, v4, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x20

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v3, v4, v15, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x21

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v3, v4, v15, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x22

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SensorTopBorder"

    invoke-direct {v3, v4, v1, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x23

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SensorLeftBorder"

    invoke-direct {v3, v4, v12, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x24

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SensorBottomBorder"

    invoke-direct {v3, v4, v2, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x25

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SensorRightBorder"

    invoke-direct {v3, v4, v13, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x26

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "ISO"

    invoke-direct {v3, v4, v9, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x27

    aput-object v3, v7, v4

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v3, v4, v15, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v4, 0x28

    aput-object v3, v7, v4

    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v3, 0x3b

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v4, v7, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FNumber"

    const v15, 0x829d

    invoke-direct {v4, v7, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v4, v7, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v4, v7, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v4, v7, v15, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "OECF"

    const v15, 0x8828

    invoke-direct {v4, v7, v15, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v4, v7, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v4, v7, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v4, v7, v15, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v4, v7, v15, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v4, v7, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xa

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ShutterSpeedValue"

    const v14, 0x9201

    invoke-direct {v4, v15, v14, v7, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v14, 0xb

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v4, v14, v15, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v14, 0xc

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v4, v14, v15, v7, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v14, 0xd

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v4, v14, v15, v7, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xe

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xf

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x10

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x11

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "LightSource"

    const v14, 0x9208

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x12

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Flash"

    const v14, 0x9209

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x13

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FocalLength"

    const v14, 0x920a

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x14

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x15

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "MakerNote"

    const v14, 0x927c

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x16

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "UserComment"

    const v14, 0x9286

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v9

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x18

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x19

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1a

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1b

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1c

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PixelXDimension"

    const v16, 0xa002

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1d

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PixelYDimension"

    const v16, 0xa003

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1e

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1f

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v4, v7, v14, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x20

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x21

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x22

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x23

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x24

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x25

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x26

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x27

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x28

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FileSource"

    const v14, 0xa300

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x29

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SceneType"

    const v14, 0xa301

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2a

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2b

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2c

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2d

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2e

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x2f

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x30

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x31

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GainControl"

    const v14, 0xa407

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x32

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Contrast"

    const v14, 0xa408

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x33

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Saturation"

    const v14, 0xa409

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x34

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x35

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x36

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x37

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x38

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v4, v7, v14, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x39

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v16, 0xc620

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x3a

    aput-object v4, v3, v7

    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v3, 0x1f

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSVersionID"

    invoke-direct {v4, v7, v8, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v4, v7, v6, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSLatitude"

    invoke-direct {v4, v7, v10, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSLongitudeRef"

    invoke-direct {v4, v7, v0, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSLongitude"

    invoke-direct {v4, v7, v1, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSAltitudeRef"

    invoke-direct {v4, v7, v12, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSAltitude"

    invoke-direct {v4, v7, v2, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSTimeStamp"

    invoke-direct {v4, v7, v13, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSSatellites"

    invoke-direct {v4, v7, v5, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSStatus"

    const/16 v14, 0x9

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDOP"

    const/16 v14, 0xb

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSSpeedRef"

    const/16 v14, 0xc

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xc

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSSpeed"

    const/16 v14, 0xd

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xd

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSTrackRef"

    const/16 v14, 0xe

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSTrack"

    const/16 v14, 0xf

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xf

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSImgDirectionRef"

    const/16 v14, 0x10

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x10

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSImgDirection"

    const/16 v14, 0x11

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x11

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSMapDatum"

    const/16 v14, 0x12

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x12

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLatitudeRef"

    const/16 v14, 0x13

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x13

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLatitude"

    const/16 v14, 0x14

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x14

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLongitudeRef"

    const/16 v14, 0x15

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x15

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestLongitude"

    const/16 v14, 0x16

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x16

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestBearingRef"

    invoke-direct {v4, v7, v9, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v9

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestBearing"

    const/16 v14, 0x18

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x18

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestDistanceRef"

    const/16 v14, 0x19

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x19

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDestDistance"

    const/16 v14, 0x1a

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1a

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSProcessingMethod"

    const/16 v14, 0x1b

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1b

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSAreaInformation"

    const/16 v14, 0x1c

    invoke-direct {v4, v7, v14, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1c

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDateStamp"

    const/16 v14, 0x1d

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1d

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSDifferential"

    const/16 v14, 0x1e

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1e

    aput-object v4, v3, v7

    sput-object v3, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v3, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "InteroperabilityIndex"

    invoke-direct {v4, v7, v6, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    sput-object v3, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v3, 0x25

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "NewSubfileType"

    const/16 v14, 0xfe

    invoke-direct {v4, v7, v14, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v4, v7, v14, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "ThumbnailImageWidth"

    const/16 v17, 0x100

    const/16 v18, 0x3

    const/16 v19, 0x4

    move-object v15, v4

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v22, "ThumbnailImageLength"

    const/16 v23, 0x101

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v26}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Compression"

    const/16 v14, 0x103

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Make"

    const/16 v14, 0x10f

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Model"

    const/16 v14, 0x110

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x9

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "StripOffsets"

    const/16 v16, 0x111

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xa

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Orientation"

    const/16 v14, 0x112

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xb

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xc

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "RowsPerStrip"

    const/16 v16, 0x116

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xd

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "StripByteCounts"

    const/16 v16, 0x117

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xe

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0xf

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x10

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x11

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x12

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v4, v7, v14, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x13

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Software"

    const/16 v14, 0x131

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x14

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x15

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v4, v7, v14, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x16

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v4, v7, v14, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v9

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "PrimaryChromaticities"

    const/16 v9, 0x13f

    invoke-direct {v4, v7, v9, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x18

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x19

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "JPEGInterchangeFormat"

    const/16 v9, 0x201

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1a

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "JPEGInterchangeFormatLength"

    const/16 v9, 0x202

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1b

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrCoefficients"

    const/16 v9, 0x211

    invoke-direct {v4, v7, v9, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1c

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrSubSampling"

    const/16 v9, 0x212

    invoke-direct {v4, v7, v9, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1d

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "YCbCrPositioning"

    const/16 v9, 0x213

    invoke-direct {v4, v7, v9, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1e

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ReferenceBlackWhite"

    const/16 v9, 0x214

    invoke-direct {v4, v7, v9, v12, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x1f

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "Copyright"

    const v9, 0x8298

    invoke-direct {v4, v7, v9, v10, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x20

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x21

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x22

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "DNGVersion"

    const v9, 0xc612

    invoke-direct {v4, v7, v9, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x23

    aput-object v4, v3, v7

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v16, 0xc620

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    const/16 v7, 0x24

    aput-object v4, v3, v7

    sput-object v3, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v4, v7, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    sput-object v3, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    new-array v3, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ThumbnailImage"

    const/16 v9, 0x100

    invoke-direct {v4, v7, v9, v13, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "CameraSettingsIFDPointer"

    const/16 v9, 0x2020

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v10

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v3, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "PreviewImageStart"

    const/16 v9, 0x101

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "PreviewImageLength"

    const/16 v9, 0x102

    invoke-direct {v4, v7, v9, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v6

    sput-object v3, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v3, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "AspectFrame"

    const/16 v9, 0x1113

    invoke-direct {v4, v7, v9, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    sput-object v3, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v3, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v7, "ColorSpace"

    const/16 v9, 0x37

    invoke-direct {v4, v7, v9, v0, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v4, v3, v8

    sput-object v3, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v3, 0xa

    new-array v3, v3, [[Landroid/media/ExifInterface$ExifTag;

    sget-object v4, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v8

    sget-object v4, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v6

    sget-object v4, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v10

    sget-object v4, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v0

    sget-object v4, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v1

    sget-object v4, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v12

    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v2

    sget-object v4, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v13

    sget-object v4, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v4, v3, v5

    sget-object v4, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v7, 0x9

    aput-object v4, v3, v7

    sput-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    new-array v2, v2, [Landroid/media/ExifInterface$ExifTag;

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "SubIFDPointer"

    const/16 v7, 0x14a

    invoke-direct {v3, v4, v7, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "ExifIFDPointer"

    const v7, 0x8769

    invoke-direct {v3, v4, v7, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "GPSInfoIFDPointer"

    const v7, 0x8825

    invoke-direct {v3, v4, v7, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v10

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v3, v4, v7, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "CameraSettingsIFDPointer"

    const/16 v7, 0x2020

    invoke-direct {v3, v4, v7, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v1

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "ImageProcessingIFDPointer"

    const/16 v7, 0x2040

    invoke-direct {v3, v4, v7, v6, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v3, v2, v12

    sput-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormat"

    const/16 v4, 0x201

    invoke-direct {v2, v3, v4, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    sput-object v2, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormatLength"

    const/16 v4, 0x202

    invoke-direct {v2, v3, v4, v1, v11}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    sput-object v2, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    sput-object v2, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    sput-object v2, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "FNumber"

    const-string v4, "DigitalZoomRatio"

    const-string v7, "ExposureTime"

    const-string v9, "SubjectDistance"

    const-string v11, "GPSTimeStamp"

    filled-new-array {v3, v4, v7, v9, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v2, "Exif\u0000\u0000"

    sget-object v3, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object v2, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v2, v8

    :goto_0
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v2

    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v2

    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    array-length v4, v3

    move v7, v8

    :goto_1
    if-ge v7, v4, :cond_0

    aget-object v9, v3, v7

    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v11, v11, v2

    iget v14, v9, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v2

    iget-object v14, v9, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v10

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    nop

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 7

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v5, "ImageWidth"

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v5, "ImageLength"

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v5, "Orientation"

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "LightSource"

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private containsMatch([B[B)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    array-length v3, p2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    add-int v3, v1, v2

    aget-byte v3, p1, v3

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    array-length v3, p2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 14

    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v3, v6

    aget-object v6, v0, v5

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v6, v8

    const/4 v8, 0x2

    aget-object v8, v0, v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v6, v10

    add-double/2addr v10, v3

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double/2addr v10, v12

    const-string v1, "S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    double-to-float v1, v10

    return v1

    :cond_1
    :goto_0
    neg-double v12, v10

    double-to-float v1, v12

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 5

    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, [I

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, [J

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v3, v0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$1;

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 v0, 0x21

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "yes"

    const-string/jumbo v11, "yes"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x1d

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    const/16 v11, 0x1e

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    const/16 v11, 0x1f

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "yes"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x12

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    const/16 v11, 0x13

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    const/16 v11, 0x18

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    :cond_1
    :goto_0
    const/4 v11, 0x0

    if-eqz v7, :cond_2

    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v11

    const-string v13, "ImageWidth"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v8, :cond_3

    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v11

    const-string v13, "ImageLength"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v9, :cond_7

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_6

    const/16 v14, 0xb4

    if-eq v13, v14, :cond_5

    const/16 v14, 0x10e

    if-eq v13, v14, :cond_4

    goto :goto_1

    :cond_4
    const/16 v12, 0x8

    goto :goto_1

    :cond_5
    const/4 v12, 0x3

    goto :goto_1

    :cond_6
    const/4 v12, 0x6

    nop

    :goto_1
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v11

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_b

    int-to-long v14, v12

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/4 v14, 0x6

    new-array v15, v14, [B

    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11

    if-ne v11, v14, :cond_a

    add-int/2addr v12, v14

    add-int/lit8 v13, v13, -0x6

    sget-object v11, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    new-array v11, v13, [B

    invoke-virtual {v2, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-ne v14, v13, :cond_8

    const/4 v14, 0x0

    invoke-direct {v1, v11, v14}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_2

    :cond_8
    new-instance v14, Ljava/io/IOException;

    move-object/from16 v16, v0

    const-string v0, "Can\'t read exif"

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_9
    move-object/from16 v16, v0

    new-instance v0, Ljava/io/IOException;

    const-string v11, "Invalid identifier"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v16, v0

    new-instance v0, Ljava/io/IOException;

    const-string v11, "Can\'t read identifier"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v16, v0

    new-instance v0, Ljava/io/IOException;

    const-string v11, "Invalid exif length"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0
.end method

.method private getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move v0, p2

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v1

    move v2, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_10

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    add-int/2addr v0, v1

    const/16 v4, -0x27

    if-eq v2, v4, :cond_e

    const/16 v4, -0x26

    if-ne v2, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v0, v0, 0x2

    if-ltz v4, :cond_d

    const/16 v5, -0x1f

    if-eq v2, v5, :cond_4

    const/4 v5, -0x2

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageLength"

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageWidth"

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x5

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid SOFx"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-array v5, v4, [B

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v4, :cond_3

    const/4 v4, 0x0

    const-string v6, "UserComment"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    const-string v7, "UserComment"

    new-instance v8, Ljava/lang/String;

    sget-object v9, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v5, 0x6

    if-ge v4, v5, :cond_5

    goto :goto_1

    :cond_5
    new-array v6, v5, [B

    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_c

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v4, v4, -0x6

    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    if-lez v4, :cond_b

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    new-array v5, v4, [B

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v7

    if-ne v7, v4, :cond_a

    add-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-direct {p0, v5, p3}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    nop

    :cond_7
    :goto_1
    if-ltz v4, :cond_9

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v4, :cond_8

    add-int/2addr v0, v4

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid JPEG segment"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_2
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    return v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    return v1

    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    return v1

    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    return v1

    :cond_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_4

    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v4, v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v5, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v5, v5

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    :cond_0
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0xc

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 v6, 0x6

    invoke-direct {v0, v3, v6}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    const-string v8, "PreviewImageStart"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v8, v7

    const-string v8, "PreviewImageLength"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v8, :cond_4

    const/4 v9, 0x4

    new-array v9, v9, [I

    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_4

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_4

    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    if-ge v10, v11, :cond_3

    add-int/2addr v10, v11

    sub-int v11, v10, v11

    sub-int/2addr v10, v11

    :cond_3
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v2, 0x4

    new-array v3, v2, [B

    new-array v4, v2, [B

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v7

    const-string v7, "ImageLength"

    invoke-virtual {v15, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x0

    aget-object v7, v7, v15

    const-string v15, "ImageWidth"

    invoke-virtual {v7, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move v15, v7

    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v4, v1

    const-string v4, "ColorSpace"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_9

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    return-object v1

    :cond_0
    nop

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_8

    aget-object v5, v0, v2

    invoke-static {v5}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v8, v9, :cond_2

    :cond_1
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_2
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v4, :cond_4

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v8, v9, :cond_3

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v8, v9, :cond_4

    :cond_3
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_4
    if-ne v6, v4, :cond_5

    if-ne v7, v4, :cond_5

    new-instance v8, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v8, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    :cond_5
    if-ne v6, v4, :cond_6

    new-instance v8, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v8

    goto :goto_1

    :cond_6
    if-ne v7, v4, :cond_7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v8

    nop

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v1

    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_f

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-ne v7, v3, :cond_e

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    cmp-long v9, v7, v5

    const/16 v10, 0xa

    if-ltz v9, :cond_d

    cmp-long v5, v1, v5

    if-gez v5, :cond_a

    goto :goto_3

    :cond_a
    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v7, v5

    const/4 v11, 0x5

    if-gtz v9, :cond_c

    cmp-long v5, v1, v5

    if-lez v5, :cond_b

    goto :goto_2

    :cond_b
    new-instance v5, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_c
    :goto_2
    new-instance v5, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_d
    :goto_3
    new-instance v5, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0xffff

    cmp-long v1, v7, v9

    if-gtz v1, :cond_10

    new-instance v1, Landroid/util/Pair;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gez v1, :cond_11

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v4

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    if-lez v3, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    const/4 v4, 0x6

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v4, :cond_3

    new-array v4, v3, [B

    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    if-nez v5, :cond_0

    const-string v7, "ExifInterface"

    const-string/jumbo v8, "stripOffsets should not be null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v6, :cond_1

    const-string v7, "ExifInterface"

    const-string/jumbo v8, "stripByteCounts should not be null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    nop

    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_0
    array-length v12, v5

    if-ge v8, v12, :cond_3

    aget-wide v12, v5, v8

    long-to-int v12, v12

    aget-wide v13, v6, v8

    long-to-int v13, v13

    sub-int v14, v12, v9

    if-gez v14, :cond_2

    const-string v15, "ExifInterface"

    const-string v10, "Invalid strip offset value"

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v16, v3

    int-to-long v2, v14

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v9, v14

    new-array v2, v13, [B

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v9, v13

    array-length v3, v2

    const/4 v10, 0x0

    invoke-static {v2, v10, v7, v11, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    add-int/2addr v11, v3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, p2

    goto :goto_0

    :cond_3
    move-object/from16 v16, v3

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    iput-object v7, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v2, v7

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_1

    :cond_4
    move-object/from16 v16, v3

    :goto_1
    return-void
.end method

.method private isHeifFormat([B)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v0, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x4

    new-array v6, v0, [B

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_0
    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v14

    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_1

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_1
    add-long/2addr v7, v12

    :cond_2
    :try_start_2
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_3

    array-length v11, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v11

    :cond_3
    sub-long v14, v4, v7

    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_4
    :try_start_3
    new-array v0, v0, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    const-wide/16 v18, 0x4

    div-long v18, v14, v18

    cmp-long v13, v16, v18

    if-gez v13, :cond_a

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v13

    array-length v9, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v13, v9, :cond_5

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    return v3

    :cond_5
    const-wide/16 v9, 0x1

    cmp-long v13, v16, v9

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    :try_start_4
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_8

    const/4 v12, 0x1

    :cond_8
    :goto_1
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    const/4 v3, 0x1

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    return v3

    :cond_9
    :goto_2
    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    goto :goto_0

    :cond_a
    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    :cond_b
    throw v0

    :catch_0
    move-exception v0

    move-object v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    :cond_c
    :goto_3
    return v3
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    sget-object v3, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x4f52

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5352

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "PhotometricInterpretation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    if-ne v4, v3, :cond_1

    sget-object v5, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    sget-object v5, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    const/16 v4, 0x200

    if-gt v2, v4, :cond_0

    if-gt v3, v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v1

    iput v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v1, v0, v0}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    nop

    :goto_1
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "ExifInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    nop

    return-void

    :goto_3
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    if-ge v1, p2, :cond_4

    add-int/lit8 v1, v1, -0x8

    if-lez v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, "ExifInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of tag group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d4d

    if-ne v0, v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1
.end method

.method private readExifSegment([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-le v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    const/16 v5, 0xc

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-gt v4, v5, :cond_1e

    if-gtz v3, :cond_1

    move/from16 v19, v3

    goto/16 :goto_b

    :cond_1
    if-gtz v3, :cond_3

    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_2

    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readImageFileDirectory return on numberOfDirectoryEntry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v4, v3, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v11

    add-int/2addr v11, v7

    int-to-long v11, v11

    sget-object v13, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    if-nez v13, :cond_4

    const-string v7, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v17, v14

    goto :goto_3

    :cond_4
    if-lez v9, :cond_8

    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v5, v5

    if-lt v9, v5, :cond_5

    move-wide/from16 v17, v14

    goto :goto_2

    :cond_5
    int-to-long v5, v10

    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v7, v7, v9

    move-wide/from16 v17, v14

    int-to-long v14, v7

    mul-long/2addr v14, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v14, v5

    if-ltz v7, :cond_7

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v14, v5

    if-lez v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    :goto_1
    const-string v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move-wide/from16 v17, v14

    :goto_2
    const-string v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-wide/from16 v14, v17

    :goto_4
    if-nez v16, :cond_9

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    nop

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_9

    :cond_9
    const-wide/16 v5, 0x4

    cmp-long v5, v14, v5

    if-lez v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    iget-object v6, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v7, "MakerNote"

    if-ne v6, v7, :cond_a

    iput v5, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v22, v10

    goto/16 :goto_5

    :cond_a
    const/4 v6, 0x6

    if-ne v2, v6, :cond_b

    iget-object v7, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v6, "ThumbnailImage"

    if-ne v7, v6, :cond_b

    iput v5, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    iput v10, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v7, 0x6

    invoke-static {v7, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    iget v7, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v3

    move/from16 v20, v4

    int-to-long v3, v7

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    iget v4, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v21, v9

    move/from16 v22, v10

    int-to-long v9, v4

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v7, v7, v9

    const-string v10, "Compression"

    invoke-virtual {v7, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_5

    :cond_c
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v22, v10

    iget v3, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    iget-object v3, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v4, "JpgFromRaw"

    if-ne v3, v4, :cond_d

    iput v5, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_d
    :goto_5
    int-to-long v3, v5

    add-long/2addr v3, v14

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v3, v3, v6

    if-gtz v3, :cond_e

    int-to-long v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_6

    :cond_e
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_9

    :cond_f
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v22, v10

    :goto_6
    sget-object v3, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_12

    const-wide/16 v4, -0x1

    sparse-switch v21, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v4, v6

    goto :goto_7

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    int-to-long v4, v6

    goto :goto_7

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_7

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    int-to-long v4, v6

    nop

    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_11

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_11

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v1, v6}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_8

    :cond_10
    const-string v6, "ExifInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (at "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const-string v6, "ExifInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_9

    :cond_12
    long-to-int v4, v14

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v6, 0x0

    move/from16 v7, v21

    move/from16 v9, v22

    invoke-direct {v5, v7, v9, v4, v6}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$1;)V

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    iget-object v10, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v10, "DNGVersion"

    if-ne v6, v10, :cond_13

    const/4 v6, 0x3

    iput v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    :cond_13
    iget-object v6, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v10, "Make"

    if-eq v6, v10, :cond_14

    iget-object v6, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v10, "Model"

    if-ne v6, v10, :cond_15

    :cond_14
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "PENTAX"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    :cond_15
    iget-object v6, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v10, "Compression"

    if-ne v6, v10, :cond_17

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    const v10, 0xffff

    if-ne v6, v10, :cond_17

    :cond_16
    const/16 v6, 0x8

    iput v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v6

    move-object/from16 v23, v3

    int-to-long v2, v6

    cmp-long v2, v2, v11

    if-eqz v2, :cond_18

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_18
    :goto_9
    add-int/lit8 v4, v20, 0x1

    int-to-short v4, v4

    move/from16 v3, v19

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_19
    move/from16 v19, v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1c

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-ge v2, v3, :cond_1c

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_a

    :cond_1a
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_a

    :cond_1b
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1c
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_a
    return-void

    :cond_1e
    move/from16 v19, v3

    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v4, -0x28

    if-ne v2, v4, :cond_9

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v2, -0x1f

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    const/16 v5, 0x1000

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    if-ne v6, v3, :cond_8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v2, :cond_1

    packed-switch v6, :pswitch_data_0

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_0

    :goto_1
    if-lez v8, :cond_6

    array-length v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v0, v5, v7, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    move v10, v9

    if-ltz v9, :cond_6

    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v8, v10

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_7

    new-array v9, v4, [B

    if-lt v8, v4, :cond_4

    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    if-ne v10, v4, :cond_3

    sget-object v10, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v7, v8, -0x6

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    add-int/lit8 v10, v8, -0x6

    if-ne v7, v10, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v8, v4, :cond_5

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_5
    :goto_2
    if-lez v8, :cond_6

    array-length v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v0, v5, v7, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    move v11, v10

    if-ltz v10, :cond_6

    invoke-virtual {v1, v5, v7, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v8, v11

    goto :goto_2

    :cond_6
    :goto_3
    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch -0x27
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    if-ge v4, v6, :cond_3

    if-ge v5, v7, :cond_3

    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p1

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/ExifInterface$Rational;

    aget-object v7, v6, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v9}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    aget-object v8, v6, v8

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    goto :goto_0

    :cond_0
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v7, v6, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    aget v8, v6, v8

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    :goto_0
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    const-string v9, "ImageWidth"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    const-string v9, "ImageLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move-object v15, v1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    if-le v7, v6, :cond_2

    if-le v8, v9, :cond_2

    sub-int v10, v7, v6

    sub-int v11, v8, v9

    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v12

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, p2

    move-object v15, v1

    const-string v1, "ImageLength"

    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v14, "ImageWidth"

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v15, v1

    :goto_1
    goto :goto_2

    :cond_3
    move-object v15, v1

    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :goto_2
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v5, v0

    const-string v5, "ImageLength"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v1

    aput-object v5, v0, v2

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v0, v1

    :cond_1
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    sget-object v4, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    move v4, v6

    :goto_1
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v13, v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move v4, v6

    :goto_3
    sget-object v12, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_a

    const/4 v12, 0x0

    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v4

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v7

    if-le v7, v11, :cond_8

    add-int/2addr v12, v7

    :cond_8
    nop

    const-wide/16 v7, 0x0

    goto :goto_4

    :cond_9
    aget v7, v3, v4

    add-int/2addr v7, v12

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_a
    const/16 v4, 0x8

    move v7, v4

    move v4, v6

    :goto_5
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v4, v8, :cond_c

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    aput v7, v2, v4

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v11

    aget v12, v3, v4

    add-int/2addr v8, v12

    add-int/2addr v7, v8

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v4, :cond_d

    move v4, v7

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v13, v4

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v13, v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v12, p2, v4

    iput v12, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iget v12, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v7, v12

    :cond_d
    add-int/lit8 v4, v7, 0x8

    iget-object v12, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v5

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v14, v2, v5

    int-to-long v14, v14

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v6

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v9

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v13, v2, v9

    int-to-long v13, v13

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v13, v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v11, v5

    sget-object v11, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v10, v2, v10

    int-to-long v12, v10

    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v10, :cond_11

    const/16 v5, 0x4d4d

    goto :goto_6

    :cond_11
    const/16 v5, 0x4949

    :goto_6
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v5, 0x2a

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v10, 0x8

    invoke-virtual {v1, v10, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    move v5, v6

    :goto_7
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v5, v10, :cond_19

    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    aget v10, v2, v5

    add-int/2addr v10, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    mul-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    const/4 v11, 0x4

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    sget-object v13, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v5

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    iget v14, v13, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v9

    invoke-virtual {v1, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v6, 0x4

    if-le v9, v6, :cond_12

    move/from16 v16, v7

    int-to-long v6, v10

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v10, v9

    goto :goto_a

    :cond_12
    move/from16 v16, v7

    iget-object v6, v15, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/4 v6, 0x4

    if-ge v9, v6, :cond_13

    move v7, v9

    :goto_9
    if-ge v7, v6, :cond_13

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    goto :goto_9

    :cond_13
    :goto_a
    nop

    move/from16 v7, v16

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto :goto_8

    :cond_14
    move/from16 v16, v7

    if-nez v5, :cond_15

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    aget v6, v2, v7

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v6, 0x0

    goto :goto_b

    :cond_15
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    :goto_b
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v13, v12, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v13, v13

    const/4 v14, 0x4

    if-le v13, v14, :cond_16

    iget-object v13, v12, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v12, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v13, v6, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_d

    :cond_16
    const/4 v6, 0x0

    :goto_d
    const-wide/16 v6, 0x0

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    const/4 v14, 0x4

    goto :goto_e

    :cond_18
    move/from16 v16, v7

    const/4 v14, 0x4

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v16

    const/4 v9, 0x2

    goto/16 :goto_7

    :cond_19
    move/from16 v16, v7

    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_1a
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v4
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 6

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    return-object v1

    :cond_2
    const-string v1, "%02d:%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    return-object v1

    :cond_4
    return-object v1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    return p2
.end method

.method public getDateTime()J
    .locals 13

    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_6

    sget-object v3, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    const-string v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    const-string v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDateTime: set device default timezone ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] for datetime ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2
    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_3

    return-wide v1

    :cond_3
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "SubSecTime"

    invoke-virtual {p0, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_5

    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_0
    const-wide/16 v11, 0x3e8

    cmp-long v11, v9, v11

    if-lez v11, :cond_4

    const-wide/16 v11, 0xa

    div-long v11, v9, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v9, v11

    goto :goto_0

    :cond_4
    add-long/2addr v6, v9

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_5
    :goto_1
    return-wide v6

    :catch_1
    move-exception v5

    return-wide v1

    :cond_6
    :goto_2
    return-wide v1
.end method

.method public getGpsDateTime()J
    .locals 12

    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-boolean v6, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    const-string v6, "ExifInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGpsDateTime: Formatter TimeZone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_2

    return-wide v2

    :cond_2
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sget-boolean v9, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_3

    const-string v9, "ExifInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGpsDateTime: gpsTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-wide v7

    :catch_0
    move-exception v6

    return-wide v2

    :cond_4
    :goto_0
    return-wide v2
.end method

.method public getLatLong([F)Z
    .locals 7

    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v5

    :cond_0
    return v4
.end method

.method public getThumbnail()[B
    .locals 2

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 9

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_1
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    const/4 v4, 0x3

    div-int/2addr v0, v4

    new-array v0, v0, [I

    const/4 v5, 0x0

    nop

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v7, v4, v3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v8, v4, v3

    add-int/2addr v8, v2

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v8, v4, v3

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v4, "ImageLength"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 6

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v0

    :cond_1
    move-object v0, v1

    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    const-string v2, "ExifInterface"

    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2

    const-wide/16 v3, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    :cond_5
    :goto_0
    if-eqz v0, :cond_8

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v3, v4, :cond_6

    iput-object v2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :cond_6
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Corrupted image"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupted image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "ExifInterface"

    const-string v4, "Encountered exception while getting thumbnail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-object v1

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public getThumbnailRange()[J
    .locals 4

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could\'nt rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "temp"

    const-string/jumbo v7, "jpg"

    invoke-static {v4, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    nop

    iput-object v2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object v5, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "GPSTimeStamp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v8, v5

    double-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "/10000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_14

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_3

    nop

    :goto_2
    move/from16 v19, v5

    move/from16 v22, v6

    goto/16 :goto_f

    :cond_3
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_13

    if-nez v3, :cond_4

    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_6

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_7

    :cond_6
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_7

    :cond_7
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v4, :cond_b

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_b

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v10, "ExifInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Given tag ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v14, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v13, v11, :cond_9

    const-string v13, ""

    goto :goto_3

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v15, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (guess: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v11, :cond_a

    const-string v11, ""

    goto :goto_4

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    :goto_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_7

    :cond_c
    :goto_6
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_7
    nop

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move/from16 v19, v5

    move/from16 v22, v6

    const-string v0, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :pswitch_1
    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    new-array v12, v12, [D

    move v13, v5

    :goto_8
    array-length v14, v11

    if-ge v13, v14, :cond_d

    aget-object v14, v11, v13

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    aput-wide v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_d
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    iget-object v14, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    new-array v12, v12, [Landroid/media/ExifInterface$Rational;

    move v13, v5

    :goto_9
    array-length v14, v11

    if-ge v13, v14, :cond_e

    aget-object v14, v11, v13

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v21, Landroid/media/ExifInterface$Rational;

    aget-object v15, v14, v5

    move/from16 v22, v6

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    aget-object v15, v14, v4

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    const/16 v20, 0x0

    move-object/from16 v15, v21

    move-wide/from16 v16, v5

    move-wide/from16 v18, v0

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v21, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v22

    const/4 v0, 0x2

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto :goto_9

    :cond_e
    move/from16 v22, v6

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :pswitch_3
    move/from16 v22, v6

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_a
    array-length v11, v0

    if-ge v6, v11, :cond_f

    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v22

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_b
    const/16 v19, 0x0

    goto/16 :goto_f

    :pswitch_4
    move/from16 v22, v6

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    const/4 v6, 0x0

    :goto_c
    array-length v11, v0

    if-ge v6, v11, :cond_10

    aget-object v11, v0, v6

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v18, Landroid/media/ExifInterface$Rational;

    const/16 v19, 0x0

    aget-object v12, v11, v19

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-long v13, v12

    aget-object v12, v11, v4

    move-object/from16 v23, v5

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    const/16 v17, 0x0

    move-object/from16 v12, v18

    move-wide v15, v4

    invoke-direct/range {v12 .. v17}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v18, v23, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v23

    const/4 v4, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v23, v5

    const/16 v19, 0x0

    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v22

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v6, v23

    invoke-static {v6, v5}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :pswitch_5
    move/from16 v19, v5

    move/from16 v22, v6

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    new-array v4, v4, [J

    nop

    :goto_d
    array-length v6, v0

    if-ge v5, v6, :cond_11

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    iget-object v5, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v22

    iget-object v6, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :pswitch_6
    move/from16 v19, v5

    move/from16 v22, v6

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    new-array v4, v4, [I

    nop

    :goto_e
    array-length v6, v0

    if-ge v5, v6, :cond_12

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_12
    iget-object v5, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v22

    iget-object v6, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :pswitch_7
    move/from16 v19, v5

    move/from16 v22, v6

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :pswitch_8
    move/from16 v19, v5

    move/from16 v22, v6

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_13
    move/from16 v19, v5

    move/from16 v22, v6

    :goto_f
    add-int/lit8 v6, v22, 0x1

    move/from16 v5, v19

    const/4 v0, 0x2

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
