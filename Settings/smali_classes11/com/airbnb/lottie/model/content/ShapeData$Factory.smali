.class public Lcom/airbnb/lottie/model/content/ShapeData$Factory;
.super Ljava/lang/Object;
.source "ShapeData.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    instance-of v5, v2, Ljava/lang/Double;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " points."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    instance-of v2, v0, Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v2

    check-cast v1, Lorg/json/JSONObject;

    :cond_0
    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "v"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    const-string v4, "v"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "i"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "o"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "c"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v8, v9, :cond_8

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v8, v9, :cond_8

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v3, v10, v2}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v8

    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v3, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, p2

    iput v10, v9, Landroid/graphics/PointF;->x:F

    iget v10, v9, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, p2

    iput v10, v9, Landroid/graphics/PointF;->y:F

    move-object v10, v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x1

    :goto_1
    if-ge v12, v8, :cond_5

    invoke-static {v12, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    add-int/lit8 v13, v12, -0x1

    invoke-static {v13, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v13

    add-int/lit8 v14, v12, -0x1

    invoke-static {v14, v6}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v14

    invoke-static {v12, v5}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v13, v14}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v9, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    move-object v15, v2

    iget v2, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v3, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p2

    iput v2, v9, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v9, Landroid/graphics/PointF;->y:F

    new-instance v2, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v2, v3, v0, v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_7

    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    add-int/lit8 v2, v8, -0x1

    invoke-static {v2, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    invoke-static {v3, v6}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v0, v5}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    invoke-static {v9, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p2, v14

    if-eqz v14, :cond_6

    iget v14, v12, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v12, Landroid/graphics/PointF;->x:F

    iget v14, v12, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v12, Landroid/graphics/PointF;->y:F

    iget v14, v13, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v13, Landroid/graphics/PointF;->x:F

    iget v14, v13, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v13, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v9, Landroid/graphics/PointF;->y:F

    :cond_6
    new-instance v14, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v14, v12, v13, v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData;

    const/4 v2, 0x0

    invoke-direct {v0, v10, v7, v11, v2}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process points array or tangents. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object p1

    return-object p1
.end method
