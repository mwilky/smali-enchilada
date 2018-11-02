.class Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPCircularBorderDrawable.java"


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintColor:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2

    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method private static compositeColors(II)I
    .locals 7

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeAlpha(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v1, v6, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3

    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xff

    mul-int v1, v0, p0

    mul-int/2addr v1, p1

    mul-int v2, p2, p3

    sub-int/2addr v0, p1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    mul-int/lit16 v0, p4, 0xff

    div-int/2addr v1, v0

    return v1
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 13

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x6

    new-array v11, v2, [I

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    iget v4, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v11, v4

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v5}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v11, v5

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v3

    iget v6, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v6}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v11, v6

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v3

    iget v7, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v7}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v11, v7

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    iget v8, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v8}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v8, 0x4

    aput v3, v11, v8

    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    iget v9, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v9}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v9, 0x5

    aput v3, v11, v9

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    aput v1, v2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v6

    aput v3, v2, v7

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v1

    aput v4, v2, v8

    aput v3, v2, v9

    new-instance v12, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v12
.end method

.method public static setAlphaComponent(II)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    return-void
.end method

.method setBorderWidth(F)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    iput p2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    iput p3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    iput p4, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    return-void
.end method

.method setTintColor(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->invalidateSelf()V

    return-void
.end method
