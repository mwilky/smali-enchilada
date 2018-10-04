.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private final mScalingMode:I

.field private mTimestamp:J

.field private final mTransform:I

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    const/16 v5, 0x23

    iput v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v8

    iput-boolean v8, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x68

    if-ne v9, v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    if-ne v9, v7, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    iget v11, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    if-lt v11, v7, :cond_7

    iget v11, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    if-lt v11, v7, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    if-ne v13, v12, :cond_5

    new-array v14, v10, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    move v14, v4

    :goto_0
    if-ge v14, v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-ne v7, v5, :cond_2

    if-nez v14, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    :goto_1
    if-ne v7, v6, :cond_2

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-lt v12, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v15

    div-int v17, v2, v7

    mul-int v17, v17, v4

    add-int v6, v6, v17

    div-int v17, v3, v5

    mul-int v17, v17, v12

    add-int v6, v6, v17

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move/from16 v18, v15

    const/16 v15, 0x8

    invoke-static {v11, v15}, Landroid/media/Utils;->divUp(II)I

    move-result v16

    add-int v6, v6, v16

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v15, v5

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v12

    add-int/2addr v6, v15

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v15, v7

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v4

    add-int/2addr v6, v15

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v15, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v15, v0, v8, v12, v4}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v15, v6, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    move-wide/from16 v5, p4

    move-object/from16 v8, p2

    const/16 v12, 0x8

    goto :goto_0

    :cond_1
    move/from16 v18, v15

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected strides: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " pixel, "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " row on plane "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move/from16 v18, v15

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected subsampling: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "x"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " on plane "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    nop

    if-nez p8, :cond_4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object/from16 v4, p8

    :goto_2
    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-super {v0, v4}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported allocated bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected number of planes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported info length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getScalingMode()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public getTransform()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
