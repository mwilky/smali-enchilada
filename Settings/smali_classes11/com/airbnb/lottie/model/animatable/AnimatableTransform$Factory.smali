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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 15

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v9

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v11

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v12

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "a"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string v8, "k"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    :goto_0
    move-object v9, v7

    goto :goto_1

    :cond_0
    const-string v7, "LOTTIE"

    const-string v8, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v7}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    goto :goto_0

    :goto_1
    const-string v7, "p"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1

    nop

    invoke-static {v7, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v8, "position"

    invoke-static {v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    :goto_2
    const-string v8, "s"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-static {v15, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v8

    :goto_3
    move-object v11, v8

    goto :goto_4

    :cond_2
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/airbnb/lottie/model/ScaleXY;

    invoke-direct {v11}, Lcom/airbnb/lottie/model/ScaleXY;-><init>()V

    invoke-direct {v8, v10, v11}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/ScaleXY;)V

    goto :goto_3

    :goto_4
    const-string v8, "r"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v10, "rz"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    :cond_3
    move-object v14, v8

    const/4 v8, 0x0

    if-eqz v14, :cond_4

    invoke-static {v14, v1, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_5

    :cond_4
    const-string v10, "rotation"

    invoke-static {v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    :goto_5
    const-string v10, "o"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v10

    :goto_6
    move-object v13, v10

    goto :goto_7

    :cond_5
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v13, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    goto :goto_6

    :goto_7
    const-string v8, "so"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_6

    nop

    const/4 v8, 0x0

    invoke-static {v10, v1, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_8

    :cond_6
    const/4 v8, 0x0

    :goto_8
    const-string v8, "eo"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    nop

    const/4 v0, 0x0

    invoke-static {v8, v1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    :cond_7
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/16 v16, 0x0

    move-object/from16 v17, v8

    move-object v8, v0

    move-object/from16 v18, v10

    move-object v10, v2

    move-object/from16 v19, v12

    move-object v12, v3

    move-object/from16 v20, v14

    move-object v14, v4

    move-object/from16 v21, v15

    move-object v15, v5

    invoke-direct/range {v8 .. v16}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v0
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3

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
