.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$IncompleteException;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$Source;
    }
.end annotation


# static fields
.field public static final ALLOCATOR_DEFAULT:I = 0x0

.field public static final ALLOCATOR_HARDWARE:I = 0x3

.field public static final ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final ALLOCATOR_SOFTWARE:I = 0x1

.field public static final ERROR_SOURCE_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_EXCEPTION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_INCOMPLETE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final MEMORY_POLICY_LOW_RAM:I

.field public static sApiLevel:I


# instance fields
.field private mAllocator:I

.field private final mAnimated:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConserveMemory:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mDecodeAsAlphaMask:Z

.field private mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private final mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mIsNinePatch:Z

.field private mMutable:Z

.field private mNativePtr:J

.field private mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private mOutPaddingRect:Landroid/graphics/Rect;

.field private mOwnsInputStream:Z

.field private mPostProcessor:Landroid/graphics/PostProcessor;

.field private mSource:Landroid/graphics/ImageDecoder$Source;

.field private mTempStorage:[B

.field private mUnpremultipliedRequired:Z

.field private final mWidth:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(JIIZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/graphics/ImageDecoder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/graphics/ImageDecoder;)Landroid/graphics/ColorSpace;
    .locals 1

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Landroid/graphics/ImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/graphics/ImageDecoder;)I
    .locals 1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    return v0
.end method

.method static synthetic access$900(Landroid/graphics/ImageDecoder;)I
    .locals 1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    return v0
.end method

.method private callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/ImageDecoder$ImageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$1;)V

    :try_start_0
    invoke-interface {p1, p0, v0, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->access$1402(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)Landroid/graphics/ImageDecoder;

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->access$1402(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)Landroid/graphics/ImageDecoder;

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method private checkState()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    instance-of v0, v0, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target color space must use an ICC parametric transfer function - provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target color space must use the RGB color model - provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closed ImageDecoder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSubset(IILandroid/graphics/Rect;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not contained by scaled image bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .locals 7

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    if-nez v0, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v2, v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v2

    if-ne v0, v2, :cond_4

    return v0

    :cond_4
    if-ge v0, v2, :cond_5

    sget v3, Landroid/graphics/ImageDecoder;->sApiLevel:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    return v0

    :cond_5
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    return v2
.end method

.method private static createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/graphics/ImageDecoder;->nCreate(JLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    if-nez v0, :cond_0

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    nop

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_1
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    :goto_1
    throw v2
.end method

.method private static createFromFile(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget v5, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v1, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, p1}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    if-nez v2, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_0
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    nop

    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_1
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    :goto_1
    throw v3

    :catch_0
    move-exception v2

    invoke-static {v0, v4, p1}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3

    return-object v3
.end method

.method private static createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_0
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    nop

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_2
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    :cond_3
    :goto_1
    throw v2
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .locals 2

    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .locals 2

    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .locals 1

    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createSource([B)Landroid/graphics/ImageDecoder$Source;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    return-object v0
.end method

.method public static createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset/length!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null byte[] in createSource!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder()Landroid/graphics/ImageDecoder;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v2

    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v4, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v6, v7, v4}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
.end method

.method private decodeBitmapInternal()Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->checkState()V

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget v4, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    iget-object v12, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    move-object v2, p0

    invoke-static/range {v0 .. v12}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder()Landroid/graphics/ImageDecoder;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iput-object v1, v2, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v2, v4, v1}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    iget-boolean v0, v2, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_8

    iget-boolean v0, v2, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_7

    invoke-direct {v2, v1}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v0

    iget-boolean v5, v2, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v5, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    new-instance v16, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v6, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v9, v2, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v10, v2, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v12

    iget-object v13, v2, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v14, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iget-object v15, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, v16

    move v11, v0

    invoke-direct/range {v5 .. v15}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    move-object/from16 v5, v16

    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v2, :cond_1

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-object v5

    :cond_2
    :try_start_2
    invoke-direct {v2}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v13, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    move-object v14, v6

    if-eqz v14, :cond_5

    invoke-static {v14}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v6

    invoke-virtual {v5, v15}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    iget-object v6, v2, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v7

    :cond_3
    move-object v12, v6

    iget-wide v6, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v6, v7, v12}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    new-instance v16, Landroid/graphics/drawable/NinePatchDrawable;

    const/16 v17, 0x0

    move-object/from16 v6, v16

    move-object v7, v13

    move-object v8, v5

    move-object v9, v14

    move-object v10, v12

    move-object v11, v15

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    return-object v16

    :cond_5
    :try_start_3
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v13, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    return-object v6

    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_1
    move-object v3, v0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v2, :cond_9

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9
    throw v0
.end method

.method private getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTargetDimension(III)I
    .locals 3

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    div-int v0, p1, p2

    if-ne p3, v0, :cond_1

    return p3

    :cond_1
    mul-int v1, p3, p2

    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p2, :cond_2

    return p3

    :cond_2
    return v0
.end method

.method private static native nClose(J)V
.end method

.method private static native nCreate(JLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/InputStream;[BLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private onPartialImage(ILjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    invoke-interface {v1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private postProcessAndRelease(Landroid/graphics/Canvas;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    throw v0
.end method

.method private requestedResize()Z
    .locals 2

    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

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
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
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

.method public getAllocator()I
    .locals 1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public getAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->getDecodeAsAlphaMask()Z

    move-result v0

    return v0
.end method

.method public getConserveMemory()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return v0
.end method

.method public getCrop()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDecodeAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public getMemorySizePolicy()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMutable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isMutableRequired()Z

    move-result v0

    return v0
.end method

.method public getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public getPostProcessor()Landroid/graphics/PostProcessor;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public getRequireUnpremultiplied()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isUnpremultipliedRequired()Z

    move-result v0

    return v0
.end method

.method public getSampledSize(I)Landroid/util/Size;
    .locals 4

    if-lez p1, :cond_1

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageDecoder is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDecodeAsAlphaMaskEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public isMutableRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public isUnpremultipliedRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public setAllocator(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;

    return-object p0
.end method

.method public setConserveMemory(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return-void
.end method

.method public setCrop(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMaskEnabled(Z)V

    return-object p0
.end method

.method public setDecodeAsAlphaMaskEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return-void
.end method

.method public setMemorySizePolicy(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return-void
.end method

.method public setMutable(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    return-object p0
.end method

.method public setMutableRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return-void
.end method

.method public setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-void
.end method

.method public setOutPaddingRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setPostProcessor(Landroid/graphics/PostProcessor;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-void
.end method

.method public setRequireUnpremultiplied(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    return-object p0
.end method

.method public setResize(I)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    return-object p0
.end method

.method public setResize(II)Landroid/graphics/ImageDecoder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    return-object p0
.end method

.method public setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public setTargetSampleSize(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    return-void
.end method

.method public setTargetSize(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnpremultipliedRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return-void
.end method
