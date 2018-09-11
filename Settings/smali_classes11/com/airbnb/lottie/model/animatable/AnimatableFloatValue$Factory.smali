.class public final Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    .line 52
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "isDp"    # Z

    .line 61
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .local v0, "scale":F
    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 65
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;

    .line 66
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v1

    .line 68
    .local v1, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Float;>;"
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iget-object v3, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v4, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V

    return-object v2
.end method
