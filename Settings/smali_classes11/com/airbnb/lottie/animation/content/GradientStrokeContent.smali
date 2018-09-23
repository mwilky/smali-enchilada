.class public Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V
    .locals 10

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method private getGradientHash()I
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x11

    if-eqz v0, :cond_0

    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v0

    :cond_0
    if-eqz v1, :cond_1

    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v4, v3, 0x1f

    mul-int v3, v4, v2

    :cond_2
    return v3
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v1

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v14

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v15

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    float-to-int v13, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    float-to-int v12, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    float-to-int v11, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    float-to-int v10, v6

    new-instance v16, Landroid/graphics/LinearGradient;

    int-to-float v7, v13

    int-to-float v8, v12

    int-to-float v9, v11

    int-to-float v6, v10

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v18, v6

    move-object/from16 v6, v16

    move/from16 v19, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object v11, v14

    move/from16 v20, v12

    move-object v12, v15

    move/from16 v21, v13

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v16

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v2
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v1

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v13

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v14

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    float-to-int v15, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    float-to-int v12, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    float-to-int v11, v6

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    float-to-int v10, v6

    sub-int v6, v11, v15

    int-to-double v6, v6

    sub-int v8, v10, v12

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v9, v6

    new-instance v16, Landroid/graphics/RadialGradient;

    int-to-float v7, v15

    int-to-float v8, v12

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v16

    move/from16 v18, v9

    move/from16 v19, v10

    move-object v10, v13

    move/from16 v20, v11

    move-object v11, v14

    move/from16 v21, v12

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v16

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method
