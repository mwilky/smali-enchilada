.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    mul-double v6, v0, v2

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_0
    if-ne p1, v5, :cond_1

    const/16 v7, 0x80

    goto :goto_1

    :cond_1
    int-to-double v7, p1

    div-double v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v2, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v7, v7

    :goto_1
    if-ge v7, v6, :cond_2

    return v6

    :cond_2
    if-ne p2, v5, :cond_3

    if-ne p1, v5, :cond_3

    return v4

    :cond_3
    if-ne p1, v5, :cond_4

    return v6

    :cond_4
    return v7
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/2addr v2, v1

    mul-int/2addr v1, v2

    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x60

    if-eqz v2, :cond_1

    const/16 v4, 0x140

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v2, :cond_2

    const/high16 v5, 0x30000

    goto :goto_2

    :cond_2
    const/16 v5, 0x4b00

    :goto_2
    new-instance v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v11, 0x1f

    if-eq v10, v11, :cond_4

    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v10}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v11, 0x25

    if-ne v10, v11, :cond_5

    invoke-static {p0, v4, v5}, Landroid/media/ThumbnailUtils;->createThumbnailFromMetadataRetriever(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {p0, v4, v5, v6}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    iget-object v8, v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_5
    :goto_4
    if-nez v8, :cond_a

    const-string v10, "ThumbnailUtils"

    const-string v11, "createImageThumbnail: decoding thumbnail here"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v7

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v11, v7, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v1, v12, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_8

    iget v1, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, -0x1

    if-eq v1, v13, :cond_8

    iget v1, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v13, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v12, v4, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v7, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    nop

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_7
    :goto_5
    goto :goto_b

    :cond_8
    :goto_6
    nop

    nop

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v1, "ThumbnailUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_7
    nop

    :goto_8
    return-object v7

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "ThumbnailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to decode file "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". OutOfMemoryError."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_7

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_5
    const-string v1, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_7

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :goto_9
    nop

    if-eqz v10, :cond_9

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    const-string v3, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_9
    :goto_a
    throw v0

    :cond_a
    :goto_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    const/4 v0, 0x2

    invoke-static {v8, v3, v3, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_b
    return-object v8
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThumbnailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailFromEXIF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ThumbnailUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v8, v1

    invoke-static {v1, v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v8

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v8, v9

    :cond_1
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v8

    if-eqz v1, :cond_3

    if-lt v4, v6, :cond_3

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v9, v1

    invoke-static {v1, v7, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    iput-object v1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    iput v5, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    iput v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    :cond_2
    goto :goto_1

    :cond_3
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    return-void
.end method

.method private static createThumbnailFromMetadataRetriever(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    new-instance v2, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2, p1, p2}, Landroid/media/MediaMetadataRetriever;->getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :goto_0
    nop

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    throw v2

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_2
    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x200

    if-le v5, v6, :cond_1

    const/high16 v6, 0x44000000    # 512.0f

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v4

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const/4 v2, 0x2

    const/16 v3, 0x60

    invoke-static {v0, v3, v3, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x1

    or-int/2addr v2, p3

    invoke-static {v1, p0, p1, p2, v2}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p4, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p5, v2

    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_4

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    nop

    return-object v0

    :cond_4
    :goto_1
    nop

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :goto_2
    nop

    :try_start_2
    const-string v3, "ThumbnailUtils"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :goto_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v12, v1

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    move v13, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v14, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v15, v1, v9

    if-nez v12, :cond_4

    if-ltz v14, :cond_2

    if-gez v15, :cond_4

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v3, v14, 0x2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v15, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v5, v3, v4, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v8, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    move/from16 v16, v3

    new-instance v3, Landroid/graphics/Rect;

    move/from16 v17, v4

    sub-int v4, v8, v6

    sub-int v10, v9, v11

    invoke-direct {v3, v6, v11, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v7, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v10, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v6, v1

    div-float v16, v10, v6

    int-to-float v1, v8

    int-to-float v2, v9

    div-float v17, v1, v2

    cmpl-float v1, v16, v17

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    if-lez v1, :cond_7

    int-to-float v1, v9

    div-float/2addr v1, v6

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_3
    goto :goto_5

    :cond_7
    int-to-float v1, v8

    div-float/2addr v1, v10

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_9

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_5
    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v19, 0x1

    move-object v0, v7

    move-object/from16 v5, v18

    move/from16 v20, v6

    move/from16 v6, v19

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_a
    move/from16 v20, v6

    move-object v0, v7

    :goto_6
    if-eqz v13, :cond_b

    if-eq v0, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    invoke-static {v0, v3, v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v0, :cond_d

    if-nez v13, :cond_c

    if-eq v0, v7, :cond_d

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    return-object v3
.end method
