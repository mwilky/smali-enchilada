.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 15

    .line 87
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    .line 88
    .local v1, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    .line 89
    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v9

    .line 90
    .local v9, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 91
    .local v10, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v11

    .line 92
    .local v11, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    .line 93
    .local v12, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    .line 94
    .local v13, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/4 v8, 0x0

    move-object v0, v14

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v14
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 22
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 100
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 102
    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v3, 0x0

    .line 104
    .local v3, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v4, 0x0

    .line 105
    .local v4, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 106
    .local v5, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v6, "a"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    .local v6, "anchorJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 108
    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string v8, "k"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    .line 114
    .local v9, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    :goto_0
    move-object v9, v7

    goto :goto_1

    .line 112
    .end local v9    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    :cond_0
    const-string v7, "LOTTIE"

    const-string v8, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v7}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    goto :goto_0

    .line 117
    .restart local v9    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    :goto_1
    const-string v7, "p"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 118
    .local v7, "positionJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 119
    nop

    .line 120
    invoke-static {v7, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v2

    goto :goto_2

    .line 122
    :cond_1
    const-string v8, "position"

    invoke-static {v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    .line 125
    :goto_2
    const-string v8, "s"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 126
    .local v15, "scaleJson":Lorg/json/JSONObject;
    if-eqz v15, :cond_2

    .line 127
    invoke-static {v15, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v8

    .line 130
    .local v11, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    :goto_3
    move-object v11, v8

    goto :goto_4

    .end local v11    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    :cond_2
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/airbnb/lottie/model/ScaleXY;

    invoke-direct {v11}, Lcom/airbnb/lottie/model/ScaleXY;-><init>()V

    invoke-direct {v8, v10, v11}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/ScaleXY;)V

    goto :goto_3

    .line 133
    .restart local v11    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    :goto_4
    const-string v8, "r"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 134
    .local v8, "rotationJson":Lorg/json/JSONObject;
    if-nez v8, :cond_3

    .line 135
    const-string v10, "rz"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 137
    .end local v8    # "rotationJson":Lorg/json/JSONObject;
    .local v14, "rotationJson":Lorg/json/JSONObject;
    :cond_3
    move-object v14, v8

    const/4 v8, 0x0

    if-eqz v14, :cond_4

    .line 138
    invoke-static {v14, v1, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_5

    .line 140
    :cond_4
    const-string v10, "rotation"

    invoke-static {v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    .line 143
    :goto_5
    const-string v10, "o"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 144
    .local v12, "opacityJson":Lorg/json/JSONObject;
    if-eqz v12, :cond_5

    .line 145
    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v10

    .line 148
    .local v13, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_6
    move-object v13, v10

    goto :goto_7

    .end local v13    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :cond_5
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v13, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    goto :goto_6

    .line 151
    .restart local v13    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_7
    const-string v8, "so"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 152
    .local v10, "startOpacityJson":Lorg/json/JSONObject;
    if-eqz v10, :cond_6

    .line 153
    nop

    .line 154
    const/4 v8, 0x0

    invoke-static {v10, v1, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_8

    .line 157
    :cond_6
    const/4 v8, 0x0

    :goto_8
    const-string v8, "eo"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 158
    .local v8, "endOpacityJson":Lorg/json/JSONObject;
    if-eqz v8, :cond_7

    .line 159
    nop

    .line 160
    const/4 v0, 0x0

    invoke-static {v8, v1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    .line 163
    :cond_7
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/16 v16, 0x0

    move-object/from16 v17, v8

    move-object v8, v0

    .end local v8    # "endOpacityJson":Lorg/json/JSONObject;
    .local v17, "endOpacityJson":Lorg/json/JSONObject;
    move-object/from16 v18, v10

    move-object v10, v2

    .end local v10    # "startOpacityJson":Lorg/json/JSONObject;
    .local v18, "startOpacityJson":Lorg/json/JSONObject;
    move-object/from16 v19, v12

    move-object v12, v3

    .end local v12    # "opacityJson":Lorg/json/JSONObject;
    .local v19, "opacityJson":Lorg/json/JSONObject;
    move-object/from16 v20, v14

    move-object v14, v4

    .end local v14    # "rotationJson":Lorg/json/JSONObject;
    .local v20, "rotationJson":Lorg/json/JSONObject;
    move-object/from16 v21, v15

    move-object v15, v5

    .end local v15    # "scaleJson":Lorg/json/JSONObject;
    .local v21, "scaleJson":Lorg/json/JSONObject;
    invoke-direct/range {v8 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v0
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3
    .param p0, "missingProperty"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
