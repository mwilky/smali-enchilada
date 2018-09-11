.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$Factory;
.super Ljava/lang/Object;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .locals 17
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;"
        }
    .end annotation

    .local p2, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<Landroid/graphics/PointF;>;"
    move-object/from16 v0, p0

    .line 32
    nop

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    .line 32
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static {v0, v10, v1, v11}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v1

    .line 34
    .local v1, "keyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 35
    .local v2, "cp1":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 36
    .local v3, "cp2":Landroid/graphics/PointF;
    const-string v4, "ti"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 37
    .local v12, "tiJson":Lorg/json/JSONArray;
    const-string v4, "to"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 38
    .local v13, "toJson":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    invoke-static {v13, v4}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    invoke-static {v12, v4}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 43
    .end local v2    # "cp1":Landroid/graphics/PointF;
    .end local v3    # "cp2":Landroid/graphics/PointF;
    .local v14, "cp1":Landroid/graphics/PointF;
    .local v15, "cp2":Landroid/graphics/PointF;
    :cond_0
    move-object v14, v2

    move-object v15, v3

    new-instance v16, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    iget-object v2, v1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/graphics/PointF;

    iget-object v2, v1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    iget-object v6, v1, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget v7, v1, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    iget-object v8, v1, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    const/4 v9, 0x0

    move-object/from16 v2, v16

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$1;)V

    .line 48
    .local v2, "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    iget-object v3, v1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 51
    .local v3, "equals":Z
    :goto_0
    iget-object v4, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 52
    iget-object v4, v1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    invoke-static {v4, v5, v14, v15}, Lcom/airbnb/lottie/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->access$102(Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 54
    :cond_2
    return-object v2
.end method
