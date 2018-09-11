.class public final Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 35
    sget-object v0, Lcom/airbnb/lottie/model/ColorFactory;->INSTANCE:Lcom/airbnb/lottie/model/ColorFactory;

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    .line 38
    .local v0, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    iget-object v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;Ljava/lang/Integer;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$1;)V

    return-object v1
.end method
