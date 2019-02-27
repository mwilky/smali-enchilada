.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field public static volatile sPreloadTracingNumInstantiatedBitmaps:I

.field public static volatile sPreloadTracingTotalBitmapsSize:J


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;

.field public mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    iput v4, v0, Landroid/graphics/Bitmap;->mDensity:I

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    move/from16 v4, p3

    iput v4, v0, Landroid/graphics/Bitmap;->mWidth:I

    move/from16 v5, p4

    iput v5, v0, Landroid/graphics/Bitmap;->mHeight:I

    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/graphics/Bitmap;->mIsMutable:Z

    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-ltz v3, :cond_0

    iput v3, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    iput-wide v1, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    const-wide/16 v10, 0x20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    new-instance v12, Llibcore/util/NativeAllocationRegistry;

    const-class v13, Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v16

    move-object v14, v12

    move-wide/from16 v18, v10

    invoke-direct/range {v14 .. v19}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    invoke-virtual {v12, v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    sget-boolean v13, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v13, :cond_1

    sget v13, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sget-wide v13, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    add-long/2addr v13, v10

    sput-wide v13, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    :cond_1
    return-void

    :cond_2
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "internal error: native bitmap is 0"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkHardware(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPixelAccess(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 3

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    if-ltz p3, :cond_5

    if-ltz p4, :cond_4

    add-int v0, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p3, :cond_1

    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p6

    add-int/2addr v0, p5

    array-length v1, p7

    if-ltz p5, :cond_0

    add-int v2, p5, p3

    if-gt v2, v1, :cond_0

    if-ltz v0, :cond_0

    add-int v2, v0, p3

    if-gt v2, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkWidthHeight(II)V
    .locals 2

    if-lez p0, :cond_1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkXYSign(II)V
    .locals 2

    if-ltz p0, :cond_1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    add-int v6, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_d

    add-int v6, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v3, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v4, v6, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v10, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    move v7, v3

    move v10, v4

    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v1, v3

    add-int v13, v2, v4

    invoke-direct {v11, v1, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/RectF;

    int-to-float v13, v3

    int-to-float v14, v4

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    if-eqz v15, :cond_4

    sget-object v16, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v15}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :pswitch_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :pswitch_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :pswitch_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    :cond_4
    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object v8, v14

    if-eqz v16, :cond_6

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v8, v9, :cond_6

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v8, v9, :cond_6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_6
    if-nez v16, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v9, 0x1

    :goto_3
    invoke-static {v7, v10, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v16, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    invoke-static {v7, v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v1, 0x0

    :cond_a
    :goto_5
    iget-wide v2, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    move/from16 v18, v7

    iget-wide v7, v9, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v7, v8}, Landroid/graphics/Bitmap;->nativeCopyColorSpace(JJ)V

    iget v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v9, Landroid/graphics/Bitmap;->mDensity:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-boolean v2, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, v13, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v7, v13, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v0, v11, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_b

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :cond_b
    return-object v9

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "y + height must be <= bitmap.height()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "x + width must be <= bitmap.width()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    const-string v0, "GPU readback"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_3

    :cond_2
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->makeImmutable()V

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "BitmapTemporary"

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_6

    :cond_5
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayListCanvas;->scale(FF)V

    :cond_6
    invoke-virtual {v2, p0}, Landroid/view/DisplayListCanvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v4, :cond_7

    invoke-virtual {v3, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_7
    return-object v3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width & height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v4, :cond_8

    if-eqz v3, :cond_7

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v4, :cond_3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    instance-of v4, v3, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v4, :cond_2

    move-object v13, v3

    check-cast v13, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v13}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v14

    if-eqz v14, :cond_1

    sget-object v4, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v13, v4}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/graphics/ColorSpace$Rgb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v10, 0x1

    invoke-virtual {v12}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v11

    move/from16 v6, p1

    move/from16 v7, p1

    move/from16 v8, p2

    move-object v15, v12

    move-object v12, v14

    invoke-static/range {v4 .. v12}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "colorSpace must use an ICC parametric transfer function"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "colorSpace must be an RGB color space"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v6, p1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v4 .. v12}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    nop

    if-eqz v0, :cond_4

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v5, v4, Landroid/graphics/Bitmap;->mDensity:I

    :cond_4
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v5, :cond_5

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v5, :cond_6

    :cond_5
    if-nez v2, :cond_6

    iget-wide v5, v4, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v7, -0x1000000

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    :cond_6
    return-object v4

    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "can\'t create bitmap without a color space"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width and height must be > 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 15

    move-object v0, p0

    move/from16 v10, p4

    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v10, :cond_3

    add-int/lit8 v1, p5, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    move-object/from16 v12, p1

    array-length v9, v12

    if-ltz p2, :cond_2

    add-int v1, p2, v10

    if-gt v1, v9, :cond_2

    if-ltz v11, :cond_2

    add-int v1, v11, v10

    if-gt v1, v9, :cond_2

    if-lez v10, :cond_1

    if-lez p5, :cond_1

    move-object/from16 v8, p6

    iget v6, v8, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v10

    move/from16 v5, p5

    move-object v8, v13

    move v13, v9

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v1

    :cond_1
    move v13, v9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v13, v9

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    move-object/from16 v12, p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v8, p1, :cond_0

    if-eq v9, p2, :cond_1

    :cond_0
    int-to-float v1, p1

    int-to-float v2, v8

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v8

    move v5, v9

    move-object v6, v0

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getDefaultDensity()I
    .locals 1

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyColorSpace(JJ)V
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetAllocationByteCount(J)I
.end method

.method private static native nativeGetColorSpace(J[F[F)Z
.end method

.method private static native nativeGetNativeFinalizer()J
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativeIsSRGB(J)Z
.end method

.method private static native nativeIsSRGBLinear(J)Z
.end method

.method private static native nativePrepareToDraw(J)V
.end method

.method private static native nativeReconfigure(JIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method private noteHardwareBitmapSlowCall()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static scaleFromDensity(III)I
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static setDefaultDensity(I)V
    .locals 0

    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 9

    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    const-string v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    const-string v0, "Bitmap.compress"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v0, 0x1000

    new-array v8, v0, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hardware bitmaps are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_2
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 11

    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    nop

    int-to-long v2, v0

    shl-long/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11

    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    nop

    int-to-long v2, v0

    shl-long/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2

    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getAllocationByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final getByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getColorSpace()Landroid/graphics/ColorSpace;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v1, :cond_4

    iget-wide v1, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeIsSRGB(J)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    iget-wide v1, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeIsSRGBLinear(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x7

    new-array v2, v2, [F

    iget-wide v3, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Bitmap;->nativeGetColorSpace(J[F[F)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v19, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v4, 0x0

    aget v4, v2, v4

    float-to-double v5, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-double v7, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    float-to-double v9, v4

    const/4 v4, 0x3

    aget v4, v2, v4

    float-to-double v11, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    float-to-double v13, v4

    const/4 v4, 0x5

    aget v4, v2, v4

    move-object/from16 v20, v1

    float-to-double v0, v4

    const/4 v4, 0x6

    aget v4, v2, v4

    move-object/from16 v21, v2

    move/from16 v22, v3

    float-to-double v2, v4

    move-object/from16 v4, v19

    move-wide v15, v0

    move-wide/from16 v17, v2

    invoke-direct/range {v4 .. v18}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroid/graphics/ColorSpace;->match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v3, p0

    iput-object v2, v3, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1

    :cond_3
    move-object/from16 v3, p0

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const-string v5, "Unknown"

    invoke-direct {v4, v5, v1, v0}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    iput-object v4, v3, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1

    :cond_4
    :goto_0
    move-object v3, v0

    :goto_1
    iget-object v0, v3, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getPixel(II)I
    .locals 2

    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 19

    move-object/from16 v8, p0

    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v8

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public final makeImmutable()V
    .locals 0

    return-void
.end method

.method public prepareToDraw()V
    .locals 2

    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7

    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recycle()V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    :cond_1
    return-void
.end method

.method reinit(IIZ)V
    .locals 1

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4

    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p1}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3

    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2

    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method public setPixel(III)V
    .locals 2

    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setPixels([IIIIIII)V
    .locals 19

    move-object/from16 v8, p0

    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v8

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setPremultiplied(Z)V
    .locals 2

    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
