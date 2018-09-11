.class Lcom/airbnb/lottie/model/content/ShapeFill$Factory;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 17
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v0, p0

    .line 37
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 39
    .local v2, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v3, 0x0

    .line 40
    .local v3, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const-string v4, "nm"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "name":Ljava/lang/String;
    const-string v5, "c"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 43
    .local v12, "jsonColor":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 44
    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v2

    .line 47
    :cond_0
    const-string v5, "o"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 48
    .local v13, "jsonOpacity":Lorg/json/JSONObject;
    if-eqz v13, :cond_1

    .line 49
    invoke-static {v13, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 51
    :cond_1
    const-string v5, "fillEnabled"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 53
    .local v14, "fillEnabled":Z
    const-string v5, "r"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 54
    .local v15, "fillTypeInt":I
    if-ne v15, v6, :cond_2

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_0
    move-object v8, v5

    goto :goto_1

    :cond_2
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 56
    .local v8, "fillType":Landroid/graphics/Path$FillType;
    :goto_1
    new-instance v16, Lcom/airbnb/lottie/model/content/ShapeFill;

    const/4 v11, 0x0

    move-object/from16 v5, v16

    move-object v6, v4

    move v7, v14

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v5 .. v11}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/ShapeFill$1;)V

    return-object v16
.end method
