.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "PathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->getPath()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    aget v3, v4, v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
