.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 10
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 32
    if-eqz p0, :cond_5

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    .local v0, "animatablePropertiesJson":Lorg/json/JSONObject;
    const-string v1, "fc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, "colorJson":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 38
    .local v2, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    if-eqz v1, :cond_1

    .line 39
    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v2

    .line 42
    :cond_1
    const-string v3, "sc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    .local v3, "strokeJson":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 44
    .local v4, "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    if-eqz v3, :cond_2

    .line 45
    invoke-static {v3, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v4

    .line 48
    :cond_2
    const-string v5, "sw"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 49
    .local v5, "strokeWidthJson":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 50
    .local v6, "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    if-eqz v5, :cond_3

    .line 51
    invoke-static {v5, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 54
    :cond_3
    const-string v7, "t"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 55
    .local v7, "trackingJson":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 56
    .local v8, "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    if-eqz v7, :cond_4

    .line 57
    invoke-static {v7, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    .line 60
    :cond_4
    new-instance v9, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    invoke-direct {v9, v2, v4, v6, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v9

    .line 33
    .end local v0    # "animatablePropertiesJson":Lorg/json/JSONObject;
    .end local v1    # "colorJson":Lorg/json/JSONObject;
    .end local v2    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .end local v3    # "strokeJson":Lorg/json/JSONObject;
    .end local v4    # "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .end local v5    # "strokeWidthJson":Lorg/json/JSONObject;
    .end local v6    # "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v7    # "trackingJson":Lorg/json/JSONObject;
    .end local v8    # "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_5
    :goto_0
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v0
.end method
