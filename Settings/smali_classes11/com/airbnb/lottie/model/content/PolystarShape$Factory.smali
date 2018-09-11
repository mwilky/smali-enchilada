.class Lcom/airbnb/lottie/model/content/PolystarShape$Factory;
.super Ljava/lang/Object;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/PolystarShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .locals 22
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 108
    move-object/from16 v1, p1

    const-string v2, "nm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "name":Ljava/lang/String;
    const-string v3, "sy"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v14

    .line 110
    .local v14, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    const-string v3, "pt"

    .line 111
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    .line 112
    .local v15, "points":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v3, "p"

    .line 113
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v16

    .line 114
    .local v16, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const-string v3, "r"

    .line 115
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v17

    .line 116
    .local v17, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v3, "or"

    .line 117
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    .line 118
    .local v18, "outerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v3, "os"

    .line 119
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v19

    .line 123
    .local v19, "outerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    sget-object v3, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->Star:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v14, v3, :cond_0

    .line 124
    const-string v3, "ir"

    .line 125
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    .line 126
    .local v3, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v5, "is"

    .line 127
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 130
    .end local v3    # "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v11, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v20, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_0
    move-object/from16 v20, v3

    move-object v11, v4

    goto :goto_1

    .line 129
    .end local v11    # "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v20    # "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_0
    const/4 v3, 0x0

    .line 130
    .restart local v3    # "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v4, 0x0

    goto :goto_0

    .line 132
    .end local v3    # "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v11    # "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v20    # "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_1
    new-instance v21, Lcom/airbnb/lottie/model/content/PolystarShape;

    const/4 v13, 0x0

    move-object/from16 v3, v21

    move-object v4, v2

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/PolystarShape$1;)V

    return-object v21
.end method
