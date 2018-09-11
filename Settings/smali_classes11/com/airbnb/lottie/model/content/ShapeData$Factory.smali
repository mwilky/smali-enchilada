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

    .line 106
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "idx"    # I
    .param p1, "points"    # Lorg/json/JSONArray;

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 194
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    .local v0, "pointArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "x":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "y":Ljava/lang/Object;
    new-instance v3, Landroid/graphics/PointF;

    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    .line 198
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

    .line 199
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

    .line 197
    return-object v3

    .line 190
    .end local v0    # "pointArray":Lorg/json/JSONArray;
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "y":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
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
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    move-object/from16 v0, p1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "pointsData":Lorg/json/JSONObject;
    instance-of v2, v0, Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 114
    move-object v2, v0

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "firstObject":Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    move-object v1, v2

    check-cast v1, Lorg/json/JSONObject;

    .line 118
    .end local v2    # "firstObject":Ljava/lang/Object;
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

    .line 119
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 122
    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 123
    return-object v2

    .line 126
    :cond_3
    const-string v4, "v"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 127
    .local v4, "pointsArray":Lorg/json/JSONArray;
    const-string v5, "i"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 128
    .local v5, "inTangents":Lorg/json/JSONArray;
    const-string v6, "o"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 129
    .local v6, "outTangents":Lorg/json/JSONArray;
    const-string v7, "c"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 131
    .local v7, "closed":Z
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 132
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 133
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 136
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 137
    new-instance v8, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v3, v10, v2}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v8

    .line 140
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 141
    .local v8, "length":I
    invoke-static {v3, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    .line 142
    .local v9, "vertex":Landroid/graphics/PointF;
    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, p2

    iput v10, v9, Landroid/graphics/PointF;->x:F

    .line 143
    iget v10, v9, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, p2

    iput v10, v9, Landroid/graphics/PointF;->y:F

    .line 144
    move-object v10, v9

    .line 145
    .local v10, "initialPoint":Landroid/graphics/PointF;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v11, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_5

    .line 148
    invoke-static {v12, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    .line 149
    add-int/lit8 v13, v12, -0x1

    invoke-static {v13, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v13

    .line 150
    .local v13, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v14, v12, -0x1

    invoke-static {v14, v6}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v14

    .line 151
    .local v14, "cp1":Landroid/graphics/PointF;
    invoke-static {v12, v5}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 152
    .local v2, "cp2":Landroid/graphics/PointF;
    invoke-static {v13, v14}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 153
    .local v3, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v9, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 155
    .local v0, "shapeCp2":Landroid/graphics/PointF;
    move-object v15, v2

    iget v2, v3, Landroid/graphics/PointF;->x:F

    .end local v2    # "cp2":Landroid/graphics/PointF;
    .local v15, "cp2":Landroid/graphics/PointF;
    mul-float v2, v2, p2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 156
    iget v2, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 157
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 158
    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 159
    iget v2, v9, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p2

    iput v2, v9, Landroid/graphics/PointF;->x:F

    .line 160
    iget v2, v9, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iput v2, v9, Landroid/graphics/PointF;->y:F

    .line 162
    new-instance v2, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v2, v3, v0, v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v0    # "shapeCp2":Landroid/graphics/PointF;
    .end local v3    # "shapeCp1":Landroid/graphics/PointF;
    .end local v13    # "previousVertex":Landroid/graphics/PointF;
    .end local v14    # "cp1":Landroid/graphics/PointF;
    .end local v15    # "cp2":Landroid/graphics/PointF;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    .line 165
    .end local v12    # "i":I
    :cond_5
    if-eqz v7, :cond_7

    .line 166
    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    .line 167
    add-int/lit8 v2, v8, -0x1

    invoke-static {v2, v4}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 168
    .local v2, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v3, v8, -0x1

    invoke-static {v3, v6}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 169
    .local v3, "cp1":Landroid/graphics/PointF;
    invoke-static {v0, v5}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 171
    .local v0, "cp2":Landroid/graphics/PointF;
    invoke-static {v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 172
    .local v12, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v9, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    .line 174
    .local v13, "shapeCp2":Landroid/graphics/PointF;
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p2, v14

    if-eqz v14, :cond_6

    .line 175
    iget v14, v12, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v12, Landroid/graphics/PointF;->x:F

    .line 176
    iget v14, v12, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v12, Landroid/graphics/PointF;->y:F

    .line 177
    iget v14, v13, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 178
    iget v14, v13, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 179
    iget v14, v9, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, p2

    iput v14, v9, Landroid/graphics/PointF;->x:F

    .line 180
    iget v14, v9, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, p2

    iput v14, v9, Landroid/graphics/PointF;->y:F

    .line 183
    :cond_6
    new-instance v14, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v14, v12, v13, v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "cp2":Landroid/graphics/PointF;
    .end local v2    # "previousVertex":Landroid/graphics/PointF;
    .end local v3    # "cp1":Landroid/graphics/PointF;
    .end local v12    # "shapeCp1":Landroid/graphics/PointF;
    .end local v13    # "shapeCp2":Landroid/graphics/PointF;
    :cond_7
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData;

    const/4 v2, 0x0

    invoke-direct {v0, v10, v7, v11, v2}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v0

    .line 134
    .end local v8    # "length":I
    .end local v9    # "vertex":Landroid/graphics/PointF;
    .end local v10    # "initialPoint":Landroid/graphics/PointF;
    .end local v11    # "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
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

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object p1

    return-object p1
.end method
