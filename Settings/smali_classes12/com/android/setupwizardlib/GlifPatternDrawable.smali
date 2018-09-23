.class public Lcom/android/setupwizardlib/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field private static final ATTRS_PRIMARY_COLOR:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final COLOR_ALPHA:F = 0.8f

.field private static final COLOR_ALPHA_INT:I = 0xcc

.field private static final MAX_CACHED_BITMAP_SCALE:F = 1.5f

.field private static final NUM_PATHS:I = 0x7

.field private static final SCALE_FOCUS_X:F = 0.146f

.field private static final SCALE_FOCUS_Y:F = 0.228f

.field private static final VIEWBOX_HEIGHT:F = 768.0f

.field private static final VIEWBOX_WIDTH:F = 1366.0f

.field private static sBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sPatternLightness:[I

.field private static sPatternPaths:[Landroid/graphics/Path;


# instance fields
.field private mColor:I

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010433

    aput v2, v0, v1

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->setColor(I)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/GlifPatternDrawable;
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance v1, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    return-object v1
.end method

.method public static invalidatePattern()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private renderOnCanvas(Landroid/graphics/Canvas;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v2, p2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-nez v3, :cond_0

    new-array v3, v5, [Landroid/graphics/Path;

    sput-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    aput-object v6, v3, v4

    move-object v3, v6

    const v6, 0x4480accd    # 1029.4f

    const v7, 0x43b2c000    # 357.5f

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const v6, 0x443dc666    # 759.1f

    const v7, 0x44aac000    # 1366.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x448e3666    # 1137.7f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object v3, v8

    const v7, 0x448e4333    # 1138.1f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const v7, -0x3cef3333    # -144.8f

    const/high16 v8, 0x44400000    # 768.0f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    const v7, 0x43ba599a    # 372.7f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v7, -0x3bfd0000    # -524.0f

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    const v11, 0x44a15666    # 1290.7f

    const v12, 0x42f33333    # 121.6f

    const v13, 0x44986666    # 1219.2f

    const v14, 0x42246666    # 41.1f

    const v15, 0x44935666    # 1178.7f

    const/16 v16, 0x0

    move-object v10, v3

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x2

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    const v7, 0x446d7333    # 949.8f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v12, 0x42b93333    # 92.6f

    const v13, -0x3cd56666    # -170.6f

    const/high16 v14, 0x43550000    # 213.0f

    const v15, -0x3c23d99a    # -440.3f

    const v16, 0x4386b333    # 269.4f

    const/high16 v17, -0x3bc00000    # -768.0f

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    const v7, 0x44124000    # 585.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x40066666    # 2.1f

    const v9, 0x443f8000    # 766.0f

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x3

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    const v7, 0x43eb8ccd    # 471.1f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v7, 0x44302000    # 704.5f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    const v12, 0x448c7333    # 1123.6f

    const v13, 0x440cd333    # 563.3f

    const v14, 0x44806ccd    # 1027.4f

    const v15, 0x4389999a    # 275.2f

    const v16, 0x44560ccd    # 856.2f

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v7, 0x43ee3333    # 476.4f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, -0x3f566666    # -5.3f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x4

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    const v7, 0x43a18ccd    # 323.1f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v9, 0x44426000    # 777.5f

    invoke-virtual {v3, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v12, 0x4425799a    # 661.9f

    const v13, 0x43ae6666    # 348.8f

    const v14, 0x43d5999a    # 427.2f

    const v15, 0x41ab3333    # 21.4f

    const v16, 0x43c8999a    # 401.2f

    const v17, 0x41cb3333    # 25.4f

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x5

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    const v7, 0x4332715f

    const v9, 0x443fb6db

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v7, 0x439a599a    # 308.7f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const v12, 0x43bed99a    # 381.7f

    const v13, 0x44172666    # 604.6f

    const v14, 0x43f0cccd    # 481.6f

    const v15, 0x43ac2666    # 344.3f

    const v16, 0x440c8ccd    # 562.2f

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x6

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    const/high16 v7, 0x43120000    # 146.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const v6, 0x43c5199a    # 394.2f

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const v12, 0x43a3d99a    # 327.7f

    const v13, 0x43eda666    # 475.3f

    const v14, 0x43648000    # 228.5f

    const/high16 v15, 0x43490000    # 201.0f

    const/high16 v16, 0x43120000    # 146.0f

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :cond_0
    nop

    :goto_0
    move v3, v4

    if-ge v3, v5, :cond_1

    iget-object v4, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    aget v6, v6, v3

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    aget-object v4, v4, v3

    iget-object v6, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    return-void

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    int-to-float v0, p1

    const v1, 0x44aac000    # 1366.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    const/high16 v3, 0x44400000    # 768.0f

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v6, v4}, Lcom/android/setupwizardlib/GlifPatternDrawable;->renderOnCanvas(Landroid/graphics/Canvas;F)V

    return-object v5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v1, v4, :cond_1

    int-to-float v6, v4

    const v7, 0x45001000    # 2049.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-le v2, v5, :cond_2

    int-to-float v6, v5

    const/high16 v7, 0x44900000    # 1152.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p0, v1, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    const/high16 v4, -0x1000000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getColor()I
    .locals 4

    iget v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    cmpl-float v4, v3, v2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_0

    div-float v4, v3, v2

    const v7, 0x3e158106    # 0.146f

    int-to-float v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    div-float v4, v2, v3

    const v7, 0x3e6978d5    # 0.228f

    int-to-float v8, v1

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xcc

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
