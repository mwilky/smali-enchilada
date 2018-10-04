.class public Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
    }
.end annotation


# static fields
.field private static final CENTRALIZED_CIRCLE_1:F = -2.0f

.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final GRADIENT_RADIUS:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "GradientDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mMainColor:I

.field private mMainColorTo:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondaryColor:I

.field private mSecondaryColorTo:I

.field private final mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43f00000    # 480.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private buildPaints()V
    .locals 14

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v3, v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v11, v4, v2

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    mul-float v12, v4, v5

    new-instance v13, Landroid/graphics/RadialGradient;

    iget v8, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    iget v9, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v13

    move v5, v3

    move v6, v11

    move v7, v12

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public static synthetic lambda$setColors$0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIIILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    invoke-static {p3, p4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v3, v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float/2addr v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v7, v3, v5

    sub-float v8, v4, v5

    add-float v9, v3, v5

    add-float v10, v4, v5

    iget-object v11, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call setScreenSize before drawing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(IIZ)V
    .locals 10

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColorTo:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColorTo:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColorTo:I

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColorTo:I

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    iget v7, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v1, 0x7d0

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;

    move-object v1, v9

    move-object v2, p0

    move v3, v0

    move v4, p1

    move v5, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIII)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    iput-object v8, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method
