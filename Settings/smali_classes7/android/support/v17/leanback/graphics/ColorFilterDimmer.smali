.class public final Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
.super Ljava/lang/Object;
.source "ColorFilterDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private final mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

.field private final mDimmedLevel:F

.field private mFilter:Landroid/graphics/ColorFilter;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

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
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    const/4 p3, 0x0

    :cond_3
    iput p2, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mActiveLevel:F

    iput p3, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static create(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;-><init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V

    return-object v0
.end method

.method public static createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
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

    new-instance v4, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;

    invoke-static {v1}, Landroid/support/v17/leanback/graphics/ColorFilterCache;->getColorFilterCache(I)Landroid/support/v17/leanback/graphics/ColorFilterCache;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;-><init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V

    return-object v4
.end method


# virtual methods
.method public applyFilterToView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setActiveLevel(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    iget v2, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mActiveLevel:F

    iget v3, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/ColorFilterCache;->getFilterForLevel(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
