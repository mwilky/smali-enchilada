.class Lcom/airbnb/lottie/model/content/GradientStroke$Factory;
.super Ljava/lang/Object;
.source "GradientStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/GradientStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 31
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 107
    move-object/from16 v1, p1

    const-string v2, "nm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "name":Ljava/lang/String;
    const-string v3, "g"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "jsonColor":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    .end local v3    # "jsonColor":Lorg/json/JSONObject;
    .local v15, "jsonColor":Lorg/json/JSONObject;
    :cond_0
    move-object v15, v3

    const/4 v3, 0x0

    .line 113
    .local v3, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    if-eqz v15, :cond_1

    .line 114
    invoke-static {v15, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v3

    .line 117
    .end local v3    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .local v16, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :cond_1
    move-object/from16 v16, v3

    const-string v3, "o"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 118
    .local v14, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 119
    .local v3, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    if-eqz v14, :cond_2

    .line 120
    invoke-static {v14, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 123
    .end local v3    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .local v17, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :cond_2
    move-object/from16 v17, v3

    const-string v3, "t"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 124
    .local v13, "gradientTypeInt":I
    if-ne v13, v4, :cond_3

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_0

    .line 126
    .local v5, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_1
    const-string v3, "s"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 127
    .local v12, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 128
    .local v3, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-eqz v12, :cond_4

    .line 129
    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    .line 132
    .end local v3    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .local v18, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :cond_4
    move-object/from16 v18, v3

    const-string v3, "e"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 133
    .local v11, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 134
    .local v3, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-eqz v11, :cond_5

    .line 135
    invoke-static {v11, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    .line 137
    .end local v3    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .local v19, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :cond_5
    move-object/from16 v19, v3

    const-string v3, "w"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    .line 141
    .local v20, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v3

    const-string v6, "lc"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v4

    aget-object v21, v3, v6

    .line 142
    .local v21, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v3

    const-string v6, "lj"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v4

    aget-object v22, v3, v6

    .line 144
    .local v22, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v3, 0x0

    .line 145
    .local v3, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v6

    .line 146
    .local v10, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    const-string v6, "d"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 147
    const-string v6, "d"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 148
    .local v6, "dashesJson":Lorg/json/JSONArray;
    move-object v8, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v8, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 149
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 150
    .local v9, "dashJson":Lorg/json/JSONObject;
    const-string v7, "n"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "n":Ljava/lang/String;
    const-string v4, "o"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 152
    const-string v4, "v"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    .local v4, "value":Lorg/json/JSONObject;
    invoke-static {v4, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 154
    .end local v8    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v4, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    nop

    .line 148
    move-object v8, v4

    goto :goto_3

    .line 154
    .end local v4    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v8    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_6
    const-string v4, "d"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "g"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 155
    :cond_7
    const-string v4, "v"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 156
    .local v4, "value":Lorg/json/JSONObject;
    invoke-static {v4, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v4    # "value":Lorg/json/JSONObject;
    .end local v7    # "n":Ljava/lang/String;
    .end local v9    # "dashJson":Lorg/json/JSONObject;
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto :goto_2

    .line 159
    .end local v3    # "i":I
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    .line 161
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v6    # "dashesJson":Lorg/json/JSONArray;
    :cond_a
    move-object v0, v8

    goto :goto_4

    .end local v8    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v3, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_b
    move-object v0, v3

    .end local v3    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v0, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_4
    new-instance v23, Lcom/airbnb/lottie/model/content/GradientStroke;

    const/16 v24, 0x0

    move-object/from16 v3, v23

    move-object v4, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v25, v10

    move-object/from16 v10, v20

    .end local v10    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    .local v25, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    move-object/from16 v26, v11

    move-object/from16 v11, v21

    .end local v11    # "jsonEndPoint":Lorg/json/JSONObject;
    .local v26, "jsonEndPoint":Lorg/json/JSONObject;
    move-object/from16 v27, v12

    move-object/from16 v12, v22

    .end local v12    # "jsonStartPoint":Lorg/json/JSONObject;
    .local v27, "jsonStartPoint":Lorg/json/JSONObject;
    move/from16 v28, v13

    move-object/from16 v13, v25

    .end local v13    # "gradientTypeInt":I
    .local v28, "gradientTypeInt":I
    move-object/from16 v29, v14

    move-object v14, v0

    .end local v14    # "jsonOpacity":Lorg/json/JSONObject;
    .local v29, "jsonOpacity":Lorg/json/JSONObject;
    move-object/from16 v30, v15

    move-object/from16 v15, v24

    .end local v15    # "jsonColor":Lorg/json/JSONObject;
    .local v30, "jsonColor":Lorg/json/JSONObject;
    invoke-direct/range {v3 .. v15}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientStroke$1;)V

    return-object v23
.end method
