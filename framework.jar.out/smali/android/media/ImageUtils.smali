.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 6

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .locals 4

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Invalid image format %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_1
    if-nez p1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_2
    if-nez p1, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_3
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x14 -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x100 -> :sswitch_3
        0x1002 -> :sswitch_3
        0x20203859 -> :sswitch_3
        0x20363159 -> :sswitch_3
        0x32315659 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 6

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid format specified %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :sswitch_1
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :sswitch_2
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_0

    :sswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :sswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :sswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_0

    :sswitch_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    nop

    :goto_0
    nop

    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x14 -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x24 -> :sswitch_4
        0x25 -> :sswitch_2
        0x26 -> :sswitch_3
        0x100 -> :sswitch_1
        0x101 -> :sswitch_1
        0x1002 -> :sswitch_4
        0x20203859 -> :sswitch_0
        0x20363159 -> :sswitch_4
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Invalid format specified %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x3

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x14 -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x24 -> :sswitch_3
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x100 -> :sswitch_3
        0x101 -> :sswitch_3
        0x1002 -> :sswitch_3
        0x20203859 -> :sswitch_3
        0x20363159 -> :sswitch_3
        0x32315659 -> :sswitch_1
        0x44363159 -> :sswitch_3
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    if-eq v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x1002

    if-eq v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/media/ImageWriter;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v7

    move-object v7, v6

    const/4 v6, 0x0

    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_5

    aget-object v10, v4, v6

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object v11, v5, v6

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget-object v12, v4, v6

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v12, v5, v6

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v12

    if-eqz v12, :cond_4

    aget-object v12, v4, v6

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    aget-object v13, v5, v6

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    if-ne v12, v13, :cond_3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-ne v10, v11, :cond_0

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    invoke-static {v0, v6}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v16

    aget-object v8, v4, v6

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    mul-int v16, v16, v8

    move/from16 v0, v16

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v8, v1, :cond_2

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v1, v13

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v7, v13, v9, v14, v0}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v13, v10

    add-int/2addr v14, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source plane image pixel stride "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " must be same as destination image pixel stride "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source image size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is different with destination image size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_DEPTH format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PRIVATE format images are not copyable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src and dst images should have the same format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Images should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
