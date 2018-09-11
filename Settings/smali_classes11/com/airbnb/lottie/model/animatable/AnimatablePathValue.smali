.class public Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/AnimatablePathValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private initialPoint:Landroid/graphics/PointF;

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/Object;
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 44
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 45
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 46
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    .local v3, "jsonKeyframe":Lorg/json/JSONObject;
    nop

    .line 48
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue$ValueFactory;->access$000()Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;

    move-result-object v4

    .line 47
    invoke-static {v3, p2, v4}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-result-object v4

    .line 49
    .local v4, "keyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    iget-object v5, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v3    # "jsonKeyframe":Lorg/json/JSONObject;
    .end local v4    # "keyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-static {v2}, Lcom/airbnb/lottie/animation/Keyframe;->setEndFrames(Ljava/util/List;)V

    .line 52
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "length":I
    goto :goto_1

    .line 53
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    .line 55
    :goto_1
    return-void
.end method

.method public static createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 22
    const-string v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    const-string v1, "x"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    const-string v2, "y"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 25
    return-object v0
.end method

.method private hasKeyframes(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "json"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "firstObject":Ljava/lang/Object;
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
