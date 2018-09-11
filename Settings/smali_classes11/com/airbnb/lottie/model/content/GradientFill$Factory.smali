.class Lcom/airbnb/lottie/model/content/GradientFill$Factory;
.super Ljava/lang/Object;
.source "GradientFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/GradientFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 26
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v1, p0

    .line 92
    move-object/from16 v2, p1

    const-string v0, "nm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "name":Ljava/lang/String;
    const-string v0, "g"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, "jsonColor":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string v3, "k"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 99
    .local v3, "points":I
    const-string v4, "k"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 101
    .end local v0    # "jsonColor":Lorg/json/JSONObject;
    .local v4, "jsonColor":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "p"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 106
    .end local v3    # "points":I
    :goto_0
    move-object v0, v4

    .end local v4    # "jsonColor":Lorg/json/JSONObject;
    .restart local v0    # "jsonColor":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    .line 107
    .local v3, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    if-eqz v0, :cond_1

    .line 108
    invoke-static {v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v3

    .line 111
    .end local v3    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .local v15, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :cond_1
    move-object v15, v3

    const-string v3, "o"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 112
    .local v13, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 113
    .local v3, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    if-eqz v13, :cond_2

    .line 114
    invoke-static {v13, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 117
    .end local v3    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .local v16, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :cond_2
    move-object/from16 v16, v3

    const-string v3, "r"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 118
    .local v12, "fillTypeInt":I
    if-ne v12, v4, :cond_3

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    .line 120
    .local v6, "fillType":Landroid/graphics/Path$FillType;
    :goto_2
    const-string v3, "t"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 121
    .local v11, "gradientTypeInt":I
    if-ne v11, v4, :cond_4

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_3
    move-object v5, v3

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_3

    .line 123
    .local v5, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_4
    const-string v3, "s"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 124
    .local v10, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 125
    .local v3, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-eqz v10, :cond_5

    .line 126
    invoke-static {v10, v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    .line 129
    .end local v3    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .local v17, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :cond_5
    move-object/from16 v17, v3

    const-string v3, "e"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 130
    .local v9, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 131
    .local v3, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-eqz v9, :cond_6

    .line 132
    invoke-static {v9, v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    .line 135
    .end local v3    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .local v18, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :cond_6
    move-object/from16 v18, v3

    new-instance v19, Lcom/airbnb/lottie/model/content/GradientFill;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v3, v19

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v23, v9

    move-object/from16 v9, v17

    .end local v9    # "jsonEndPoint":Lorg/json/JSONObject;
    .local v23, "jsonEndPoint":Lorg/json/JSONObject;
    move-object/from16 v24, v10

    move-object/from16 v10, v18

    .end local v10    # "jsonStartPoint":Lorg/json/JSONObject;
    .local v24, "jsonStartPoint":Lorg/json/JSONObject;
    move/from16 v25, v11

    move-object/from16 v11, v20

    .end local v11    # "gradientTypeInt":I
    .local v25, "gradientTypeInt":I
    move/from16 v20, v12

    move-object/from16 v12, v21

    .end local v12    # "fillTypeInt":I
    .local v20, "fillTypeInt":I
    move-object/from16 v21, v13

    move-object/from16 v13, v22

    .end local v13    # "jsonOpacity":Lorg/json/JSONObject;
    .local v21, "jsonOpacity":Lorg/json/JSONObject;
    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientFill$1;)V

    return-object v19
.end method
