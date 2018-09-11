.class public final Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .line 41
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 46
    if-eqz p0, :cond_0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 49
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;->access$100()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    .line 52
    .local v0, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 53
    .local v1, "initialValue":Ljava/lang/Integer;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2
.end method
