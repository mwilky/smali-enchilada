.class Lcom/airbnb/lottie/model/content/ShapeStroke$Factory;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 21
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 90
    move-object/from16 v1, p1

    const-string v2, "nm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 92
    .local v13, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    const-string v3, "c"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v14

    .line 94
    .local v14, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const-string v3, "w"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    .line 96
    .local v15, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v3, "o"

    .line 97
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 96
    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v16

    .line 98
    .local v16, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v3

    const-string v4, "lc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v17, v3, v4

    .line 99
    .local v17, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v3

    const-string v4, "lj"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v18, v3, v4

    .line 100
    .local v18, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v3, 0x0

    .line 102
    .local v3, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string v4, "d"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 103
    const-string v4, "d"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 104
    .local v4, "dashesJson":Lorg/json/JSONArray;
    const/4 v6, 0x0

    move-object v7, v3

    move v3, v6

    .local v3, "i":I
    .local v7, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 105
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 106
    .local v8, "dashJson":Lorg/json/JSONObject;
    const-string v9, "n"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "n":Ljava/lang/String;
    const-string v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    const-string v10, "v"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 109
    .local v10, "value":Lorg/json/JSONObject;
    invoke-static {v10, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 110
    .end local v10    # "value":Lorg/json/JSONObject;
    goto :goto_1

    :cond_0
    const-string v10, "d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    :cond_1
    const-string v10, "v"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 112
    .restart local v10    # "value":Lorg/json/JSONObject;
    invoke-static {v10, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v8    # "dashJson":Lorg/json/JSONObject;
    .end local v9    # "n":Ljava/lang/String;
    .end local v10    # "value":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 117
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "dashesJson":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v19, v7

    goto :goto_2

    .end local v7    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v3, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_5
    move-object/from16 v19, v3

    .end local v3    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v19, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_2
    new-instance v20, Lcom/airbnb/lottie/model/content/ShapeStroke;

    const/4 v12, 0x0

    move-object/from16 v3, v20

    move-object v4, v2

    move-object/from16 v5, v19

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v3 .. v12}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Lcom/airbnb/lottie/model/content/ShapeStroke$1;)V

    return-object v20
.end method
