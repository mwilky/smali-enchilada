.class public final Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
.super Ljava/lang/Object;
.source "ColorOverlayDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private mAlpha:I

.field private mAlphaFloat:F

.field private final mDimmedLevel:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(IFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    const/4 p2, 0x0

    :cond_1
    cmpl-float v2, p3, v0

    if-lez v2, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    const/4 p3, 0x0

    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iput p3, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    return-void
.end method

.method public static createColorOverlayDimmer(IFF)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v0
.end method

.method public static createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
    .locals 7

    sget-object v0, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimMaskColor:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$color;->lb_view_dim_mask_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimActiveLevel:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_view_active_level:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    sget v3, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimDimmedLevel:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Landroid/support/v17/leanback/R$fraction;->lb_view_dimmed_level:I

    invoke-virtual {v4, v6, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v4, v1, v2, v3}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v4
.end method


# virtual methods
.method public applyToColor(I)I
    .locals 5

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public drawColorOverlay(Landroid/graphics/Canvas;Landroid/view/View;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v7, v2

    iget-object v8, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    return v0
.end method

.method public getAlphaFloat()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public needsDraw()Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActiveLevel(F)V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iget v2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
