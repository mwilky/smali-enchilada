.class public Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field mEvaluator:Landroid/animation/TypeEvaluator;

.field mFirstKeyframe:Landroid/animation/Keyframe;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Landroid/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/KeyframeSet;
    .locals 7

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Landroid/animation/Keyframe$FloatKeyframe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aget v6, p0, v4

    invoke-static {v3, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v5

    aget v3, p0, v4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    aget v6, p0, v4

    invoke-static {v3, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v4

    nop

    :goto_0
    move v3, v5

    if-ge v3, v1, :cond_2

    int-to-float v4, v3

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v3

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "Animator"

    const-string v4, "Bad value (NaN) in float animator"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v3
.end method

.method public static varargs ofInt([I)Landroid/animation/KeyframeSet;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$IntKeyframe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aget v3, p0, v3

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v4

    goto :goto_1

    :cond_0
    aget v5, p0, v3

    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    nop

    :goto_0
    move v2, v4

    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v2

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Landroid/animation/IntKeyframeSet;

    invoke-direct {v2, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v2
.end method

.method public static varargs ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v6, p0, v1

    instance-of v6, v6, Landroid/animation/Keyframe$FloatKeyframe;

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    aget-object v6, p0, v1

    instance-of v6, v6, Landroid/animation/Keyframe$IntKeyframe;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    new-array v1, v0, [Landroid/animation/Keyframe$FloatKeyframe;

    nop

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object v6, p0, v4

    check-cast v6, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance v4, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v4, v1}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v4

    :cond_4
    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    new-array v1, v0, [Landroid/animation/Keyframe$IntKeyframe;

    nop

    :goto_3
    if-ge v4, v0, :cond_5

    aget-object v6, p0, v4

    check-cast v6, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/animation/IntKeyframeSet;

    invoke-direct {v4, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v4

    :cond_6
    new-instance v1, Landroid/animation/KeyframeSet;

    invoke-direct {v1, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v1
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$ObjectKeyframe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-static {v2}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v4

    goto :goto_1

    :cond_0
    aget-object v5, p0, v3

    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    nop

    :goto_0
    move v2, v4

    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Landroid/animation/KeyframeSet;

    invoke-direct {v2, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v2
.end method

.method public static ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-object v0
.end method


# virtual methods
.method public clone()Landroid/animation/KeyframeSet;
    .locals 5

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

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

    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_2
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float v3, p1, v2

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    iget-object v4, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v5, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float v3, p1, v2

    iget-object v4, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    iget-object v4, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_5
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    nop

    :goto_0
    move v1, v2

    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v5, p1, v4

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    sub-float/2addr v6, v4

    div-float/2addr v5, v6

    if-eqz v3, :cond_6

    invoke-interface {v3, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    :cond_6
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v5, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    :cond_7
    move-object v0, v2

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " "

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
