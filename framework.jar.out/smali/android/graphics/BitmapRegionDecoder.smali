.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    invoke-static {v1, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :cond_0
    :goto_2
    throw v2
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-wide v3, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v1, v2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v1, v2

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
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

.method public getHeight()I
    .locals 3

    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidth()I
    .locals 3

    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
