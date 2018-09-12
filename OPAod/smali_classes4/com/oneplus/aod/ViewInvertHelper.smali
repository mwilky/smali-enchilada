.class public Lcom/oneplus/aod/ViewInvertHelper;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"


# instance fields
.field private final mDarkPaint:Landroid/graphics/Paint;

.field private final mFadeDuration:J

.field private final mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

.field private final mMatrix:Landroid/graphics/ColorMatrix;

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fadeDuration"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 39
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    .line 48
    iput-wide p2, p0, Lcom/oneplus/aod/ViewInvertHelper;->mFadeDuration:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/View;J)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "fadeDuration"    # J

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/aod/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/ViewInvertHelper;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/ViewInvertHelper;
    .param p1, "x1"    # F

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/aod/ViewInvertHelper;->updateInvertPaint(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/ViewInvertHelper;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/ViewInvertHelper;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/ViewInvertHelper;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private static constructArray(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v0
.end method

.method private updateInvertPaint(F)V
    .locals 7
    .param p1, "intensity"    # F

    .line 108
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 109
    .local v0, "components":F
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v4, 0x3

    aput v3, v2, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v4, p1

    const/4 v6, 0x4

    aput v5, v2, v6

    const/4 v5, 0x5

    aput v3, v2, v5

    const/4 v5, 0x6

    aput v0, v2, v5

    const/4 v5, 0x7

    aput v3, v2, v5

    const/16 v5, 0x8

    aput v3, v2, v5

    mul-float v5, v4, p1

    const/16 v6, 0x9

    aput v5, v2, v6

    const/16 v5, 0xa

    aput v3, v2, v5

    const/16 v5, 0xb

    aput v3, v2, v5

    const/16 v5, 0xc

    aput v0, v2, v5

    const/16 v5, 0xd

    aput v3, v2, v5

    mul-float/2addr v4, p1

    const/16 v5, 0xe

    aput v4, v2, v5

    const/16 v4, 0xf

    aput v3, v2, v4

    const/16 v4, 0x10

    aput v3, v2, v4

    const/16 v4, 0x11

    aput v3, v2, v4

    const/16 v4, 0x12

    aput v1, v2, v4

    const/16 v4, 0x13

    aput v3, v2, v4

    .line 115
    .local v2, "invert":[F
    iget-object v3, p0, Lcom/oneplus/aod/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 116
    iget-object v3, p0, Lcom/oneplus/aod/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    sub-float/2addr v1, p1

    invoke-virtual {v3, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 117
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Lcom/oneplus/aod/ViewInvertHelper;->mGrayscaleMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 118
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Lcom/oneplus/aod/ViewInvertHelper;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public clearTargets()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method public fade(ZJ)V
    .locals 5
    .param p1, "invert"    # Z
    .param p2, "delay"    # J

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 67
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 68
    .local v0, "endIntensity":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 69
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/oneplus/aod/ViewInvertHelper$1;

    invoke-direct {v3, p0}, Lcom/oneplus/aod/ViewInvertHelper$1;-><init>(Lcom/oneplus/aod/ViewInvertHelper;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    new-instance v3, Lcom/oneplus/aod/ViewInvertHelper$2;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/aod/ViewInvertHelper$2;-><init>(Lcom/oneplus/aod/ViewInvertHelper;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    iget-wide v3, p0, Lcom/oneplus/aod/ViewInvertHelper;->mFadeDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    sget-object v3, Lcom/oneplus/doze/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 91
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 92
    return-void
.end method

.method public setInverted(ZZJ)V
    .locals 0
    .param p1, "invert"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 122
    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p0, p1, p3, p4}, Lcom/oneplus/aod/ViewInvertHelper;->fade(ZJ)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/ViewInvertHelper;->update(Z)V

    .line 127
    :goto_0
    return-void
.end method

.method public update(Z)V
    .locals 4
    .param p1, "invert"    # Z

    .line 95
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 96
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/oneplus/aod/ViewInvertHelper;->updateInvertPaint(F)V

    .line 97
    nop

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/oneplus/aod/ViewInvertHelper;->mDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
