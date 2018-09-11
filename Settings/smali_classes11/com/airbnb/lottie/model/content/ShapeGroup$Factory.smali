.class Lcom/airbnb/lottie/model/content/ShapeGroup$Factory;
.super Ljava/lang/Object;
.source "ShapeGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lcom/airbnb/lottie/LottieComposition;

    .line 67
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapeGroup$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 72
    const-string v0, "it"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .local v0, "jsonItems":Lorg/json/JSONArray;
    const-string v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 77
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/airbnb/lottie/model/content/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v4

    .line 78
    .local v4, "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v4    # "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-direct {v3, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method
