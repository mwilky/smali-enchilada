.class public Lcom/airbnb/lottie/model/layer/Layer$Factory;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
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

.method public static newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v26, Lcom/airbnb/lottie/model/layer/Layer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v4, "root"

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v12

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-wide/16 v5, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v1, v26

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v25}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    return-object v26
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "refId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v1, ".ai"

    invoke-virtual {v14, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_1
    const-string v1, "ind"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v27

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "ty"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v6

    if-ge v13, v6, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v6

    aget-object v6, v6, v13

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    :goto_0
    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Text:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_3

    const/4 v7, 0x4

    const/16 v9, 0x8

    invoke-static {v15, v7, v9, v8}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v7, "Text is only supported on bodymovin >= 4.8.0"

    invoke-virtual {v15, v7}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_3
    move-object v12, v6

    const-string v6, "parent"

    const-wide/16 v9, -0x1

    invoke-virtual {v0, v6, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Solid:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v12, v6, :cond_4

    const-string v6, "sw"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v1, v6

    const-string v6, "sh"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v2, v6

    const-string v6, "sc"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :cond_4
    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    const-string v1, "ks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v34

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v1

    const-string v2, "tt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    aget-object v35, v1, v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    const-string v1, "masksProperties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_5

    move v1, v8

    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/airbnb/lottie/model/content/Mask$Factory;->newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    const-string v1, "shapes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7

    move v1, v8

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/airbnb/lottie/model/content/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "t"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v8, "d"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v1

    const-string v8, "a"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v37, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v1

    move-object/from16 v38, v1

    goto :goto_3

    :cond_8
    move-object/from16 v37, v1

    move-object/from16 v38, v2

    :goto_3
    const-string v1, "ef"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_9
    const-string v1, "sr"

    move-object/from16 v39, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v8, v1

    const-string v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v3, v1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v40

    div-float v41, v3, v40

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v12, v1, :cond_a

    const-string v1, "w"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "h"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    move/from16 v42, v1

    move/from16 v43, v2

    goto :goto_4

    :cond_a
    move/from16 v42, v4

    move/from16 v43, v5

    :goto_4
    const-string v1, "ip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float v5, v1, v8

    const-string v1, "op"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float v16, v1, v8

    const/4 v4, 0x0

    cmpl-float v1, v5, v4

    if-lez v1, :cond_b

    new-instance v17, Lcom/airbnb/lottie/animation/Keyframe;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v1, v17

    move-object v2, v15

    move/from16 v44, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v46, v5

    move-object/from16 v5, v20

    move-object/from16 v47, v6

    move/from16 v6, v21

    move-object/from16 v48, v7

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    move/from16 v44, v3

    move/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v7

    :goto_5
    const/4 v7, 0x0

    cmpl-float v1, v16, v7

    if-lez v1, :cond_c

    move/from16 v1, v16

    goto :goto_6

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    :goto_6
    move v6, v1

    new-instance v16, Lcom/airbnb/lottie/animation/Keyframe;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v1, v16

    move-object v2, v15

    move/from16 v45, v6

    move/from16 v6, v46

    move/from16 v49, v8

    move v8, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v7, v16

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Lcom/airbnb/lottie/animation/Keyframe;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v1, v16

    move/from16 v6, v45

    move-object/from16 v50, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v8, v16

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const-string v2, "tm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "tm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    :cond_d
    move-object/from16 v36, v1

    new-instance v51, Lcom/airbnb/lottie/model/layer/Layer;

    const/16 v25, 0x0

    move-object/from16 v1, v51

    move-object/from16 v2, v48

    move-object v3, v15

    move-object v4, v14

    move-wide/from16 v5, v27

    move-object v7, v12

    move-object/from16 v53, v8

    move/from16 v52, v49

    move-object/from16 v49, v9

    move-wide/from16 v8, v29

    move-object/from16 v54, v10

    move-object/from16 v10, v26

    move-object/from16 v55, v11

    move-object/from16 v56, v12

    move-object/from16 v12, v34

    move/from16 v57, v13

    move/from16 v13, v31

    move-object/from16 v58, v14

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v52

    move/from16 v17, v41

    move/from16 v18, v42

    move/from16 v19, v43

    move-object/from16 v20, v37

    move-object/from16 v21, v38

    move-object/from16 v22, v54

    move-object/from16 v23, v35

    move-object/from16 v24, v36

    invoke-direct/range {v1 .. v25}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    return-object v51
.end method
