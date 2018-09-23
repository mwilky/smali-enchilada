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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "nm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "g"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "k"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "k"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :try_start_0
    const-string v0, "p"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    move-object v0, v4

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v3

    :cond_1
    move-object v15, v3

    const-string v3, "o"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v3, 0x0

    if-eqz v13, :cond_2

    invoke-static {v13, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    :cond_2
    move-object/from16 v16, v3

    const-string v3, "r"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v4, :cond_3

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    :goto_2
    const-string v3, "t"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_4

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_3
    move-object v5, v3

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_3

    :goto_4
    const-string v3, "s"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    if-eqz v10, :cond_5

    invoke-static {v10, v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    :cond_5
    move-object/from16 v17, v3

    const-string v3, "e"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_6

    invoke-static {v9, v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

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

    move-object/from16 v24, v10

    move-object/from16 v10, v18

    move/from16 v25, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v13

    move-object/from16 v13, v22

    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientFill$1;)V

    return-object v19
.end method
