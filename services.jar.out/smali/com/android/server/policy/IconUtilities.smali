.class public final Lcom/android/server/policy/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDisabledColorFilter:Landroid/graphics/ColorFilter;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIconHeight:I

.field private mIconTextureHeight:I

.field private mIconTextureWidth:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x1050000

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    iput v4, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    iget v4, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    iput v4, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12

    iget v0, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    iget v1, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_6

    if-lez v3, :cond_6

    if-lt v0, v2, :cond_3

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, v0, :cond_6

    if-ge v3, v1, :cond_6

    move v0, v2

    move v1, v3

    goto :goto_3

    :cond_3
    :goto_1
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    if-le v2, v3, :cond_4

    int-to-float v5, v0

    div-float/2addr v5, v4

    float-to-int v1, v5

    goto :goto_2

    :cond_4
    if-le v3, v2, :cond_5

    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-int v0, v5

    :cond_5
    :goto_2
    nop

    :cond_6
    :goto_3
    iget v4, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    iget v5, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v8, v4, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v1

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int v10, v8, v0

    add-int v11, v9, v1

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v10, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v6
.end method

.method public getDisabledColorFilter()Landroid/graphics/ColorFilter;
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/16 v5, 0xc

    aput v3, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v2

    aput v6, v4, v5

    const/16 v5, 0x9

    int-to-float v6, v2

    aput v6, v4, v5

    const/16 v5, 0xe

    int-to-float v6, v2

    aput v6, v4, v5

    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    return-object v6
.end method
