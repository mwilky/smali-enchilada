.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SQRT_2:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 11

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_9

    sub-float v2, p2, p1

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    mul-float v1, v0, p1

    mul-float v2, v0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v6, p3, v0

    add-float/2addr v4, v6

    add-float/2addr v5, v6

    cmpl-float v7, v4, v0

    if-ltz v7, :cond_2

    cmpl-float v7, v5, v0

    if-ltz v7, :cond_2

    invoke-static {v4, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    :cond_2
    cmpg-float v7, v4, v3

    if-gez v7, :cond_3

    invoke-static {v4, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    :cond_3
    cmpg-float v7, v5, v3

    if-gez v7, :cond_4

    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    :cond_4
    cmpl-float v7, v4, v5

    if-nez v7, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_5
    cmpl-float v7, v4, v5

    if-ltz v7, :cond_6

    sub-float/2addr v4, v0

    :cond_6
    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v7, v5, v0

    if-lez v7, :cond_7

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float v8, v5, v0

    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v8, v10, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float v3, v4, v3

    if-gez v3, :cond_8

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float v7, v0, v4

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v0, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_8
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_9
    :goto_1
    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    invoke-static {p0, v0, v2, v1}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "animator_duration_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "animator_duration_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x1

    aput v1, v0, v3

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    const/4 v4, 0x2

    aput v1, v0, v4

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    const/4 v5, 0x3

    aput v1, v0, v5

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v0, v0, v4

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v1, v1, v5

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static hashFor(FFFF)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    const/16 v3, 0x1f

    if-eqz v2, :cond_0

    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v0, v2

    :cond_0
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    :cond_1
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    :cond_2
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    mul-int/2addr v3, v0

    int-to-float v1, v3

    mul-float/2addr v1, p3

    float-to-int v0, v1

    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z
    .locals 3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v0

    if-ge v0, p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v0

    if-le v0, p2, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getPatchVersion()I

    move-result v0

    if-lt v0, p3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method
