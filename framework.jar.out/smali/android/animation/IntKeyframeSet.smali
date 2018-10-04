.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "IntKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/IntKeyframeSet;
    .locals 5

    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/animation/Keyframe$IntKeyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/animation/IntKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .locals 11

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v5

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    sub-float v7, p1, v4

    sub-float v8, v5, v4

    div-float/2addr v7, v8

    iget-object v8, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v8, :cond_1

    sub-int v8, v3, v2

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    add-int/2addr v8, v2

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v7, v9, v10}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    :goto_0
    return v8

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v5

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float v7, p1, v4

    sub-float v8, v5, v4

    div-float/2addr v7, v8

    iget-object v8, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v8, :cond_4

    sub-int v8, v3, v2

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    add-int/2addr v8, v2

    goto :goto_1

    :cond_4
    iget-object v8, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v7, v9, v10}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    :goto_1
    return v8

    :cond_5
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    move-object v1, v0

    move v0, v2

    :goto_2
    iget v3, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_8

    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    sub-float v4, p1, v4

    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v5

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v6

    if-eqz v2, :cond_6

    invoke-interface {v2, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    :cond_6
    iget-object v7, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v7, :cond_7

    sub-int v7, v6, v5

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v7, v5

    goto :goto_3

    :cond_7
    iget-object v7, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v4, v8, v9}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_3
    return v7

    :cond_8
    move-object v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
