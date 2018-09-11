.class public Lcom/airbnb/lottie/model/FontCharacter$Factory;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/FontCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;
    .locals 18
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 59
    const-string v1, "ch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 60
    .local v1, "character":C
    const-string v3, "size"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 61
    .local v11, "size":I
    const-string v3, "w"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 62
    .local v12, "width":D
    const-string v3, "style"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 63
    .local v14, "style":Ljava/lang/String;
    const-string v3, "fFamily"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "fontFamily":Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 65
    .local v10, "data":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    if-eqz v10, :cond_0

    .line 68
    const-string v4, "shapes"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 69
    .local v4, "shapesJson":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 71
    nop

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 72
    nop

    .line 73
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v9, p1

    invoke-static {v5, v9}, Lcom/airbnb/lottie/model/content/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 72
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    .end local v4    # "shapesJson":Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v9, p1

    .end local v3    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    .local v2, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    move-object v2, v3

    new-instance v16, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v3, v16

    move-object v4, v2

    move v5, v1

    move v6, v11

    move-wide v7, v12

    move-object v9, v14

    move-object/from16 v17, v10

    move-object v10, v15

    .end local v10    # "data":Lorg/json/JSONObject;
    .local v17, "data":Lorg/json/JSONObject;
    invoke-direct/range {v3 .. v10}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method
