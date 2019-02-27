.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    iget v5, v3, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    goto :goto_0

    :cond_0
    iget v5, v3, Landroid/util/TypedValue;->type:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v5, v3, Landroid/util/TypedValue;->data:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    :cond_1
    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    if-eqz v3, :cond_3

    iget v5, v3, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_2

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    goto :goto_1

    :cond_2
    iget v5, v3, Landroid/util/TypedValue;->type:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v5, v3, Landroid/util/TypedValue;->data:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    if-eqz v3, :cond_5

    iget v5, v3, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_4

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    goto :goto_2

    :cond_4
    iget v5, v3, Landroid/util/TypedValue;->type:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v5, v3, Landroid/util/TypedValue;->data:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    :cond_5
    :goto_2
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    if-eqz v3, :cond_7

    iget v1, v3, Landroid/util/TypedValue;->type:I

    if-ne v1, v4, :cond_6

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    goto :goto_3

    :cond_6
    iget v1, v3, Landroid/util/TypedValue;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v1, v3, Landroid/util/TypedValue;->data:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    :cond_7
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v6, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v0, v3, v5

    :cond_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    :cond_3
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr v4, v2

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v5, v2

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v1, p0

    move v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method resolveScale(FIIII)F
    .locals 2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    int-to-float v0, p4

    int-to-float v1, p5

    invoke-static {p3, v0, v1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    :goto_1
    nop

    if-nez p4, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    :cond_1
    int-to-float v1, p4

    div-float v1, v0, v1

    return v1

    :cond_2
    return p1
.end method
