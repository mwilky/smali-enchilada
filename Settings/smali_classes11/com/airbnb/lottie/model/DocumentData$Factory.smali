.class public final Lcom/airbnb/lottie/model/DocumentData$Factory;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/DocumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/DocumentData;
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "s"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "j"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "tr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v2, "lh"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-string v2, "fc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    nop

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v7, v7

    const/4 v8, 0x2

    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v5

    double-to-int v9, v9

    const/16 v10, 0xff

    invoke-static {v10, v3, v7, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    const-string v3, "sc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz v12, :cond_0

    nop

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v21

    mul-double v10, v21, v5

    double-to-int v2, v10

    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v5

    double-to-int v4, v9

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v5, v7

    const/16 v6, 0xff

    invoke-static {v6, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move/from16 v21, v2

    goto :goto_0

    :cond_0
    move/from16 v21, v3

    :goto_0
    const-string v2, "sw"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    const-string v2, "of"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v23

    new-instance v24, Lcom/airbnb/lottie/model/DocumentData;

    move-object/from16 v2, v24

    move-object v3, v1

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-wide/from16 v8, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v25, v12

    move/from16 v12, v22

    move-object/from16 v26, v13

    move/from16 v13, v23

    invoke-direct/range {v2 .. v13}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V

    return-object v24
.end method
