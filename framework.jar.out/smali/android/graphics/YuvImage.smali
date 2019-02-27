.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([BIII[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez p3, :cond_4

    if-lez p4, :cond_4

    if-eqz p1, :cond_3

    if-nez p5, :cond_2

    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    and-int/lit8 v0, v0, -0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-ne p2, v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v2

    aput p1, v3, v1

    move-object v0, v3

    return-object v0

    :cond_0
    const/16 v3, 0x14

    if-ne p2, v3, :cond_1

    new-array v1, v1, [I

    mul-int/lit8 v3, p1, 0x2

    aput v3, v1, v2

    move-object v0, v1

    return-object v0

    :cond_1
    return-object v0
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method calculateOffsets(II)[I
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-ne v1, v4, :cond_0

    const/4 v1, 0x2

    new-array v4, v1, [I

    iget-object v5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v5, v5, v3

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    aput v5, v4, v3

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v6, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v3, v6, v3

    mul-int/2addr v5, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v6, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v6, v6, v2

    mul-int/2addr v3, v6

    add-int/2addr v5, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/2addr v3, v1

    add-int/2addr v5, v3

    aput v5, v4, v2

    move-object v0, v4

    return-object v0

    :cond_0
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v4, 0x14

    if-ne v1, v4, :cond_1

    new-array v1, v2, [I

    iget-object v2, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v2, v2, v3

    mul-int/2addr v2, p2

    div-int/lit8 v4, p1, 0x2

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    aput v2, v1, v3

    move-object v0, v1

    return-object v0

    :cond_1
    return-object v0
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz p2, :cond_1

    const/16 v1, 0x64

    if-gt p2, v1, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v1

    iget-object v3, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v4, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v2, 0x1000

    new-array v11, v2, [B

    move-object v7, v1

    move v9, p2

    move-object v10, p3

    invoke-static/range {v3 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result v2

    return v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "stream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "quality must be 0..100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rectangle is not inside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
