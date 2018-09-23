.class public final Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
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

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 6

    const-string v0, "p"

    const-string v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;-><init>(ILcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v1

    iget-object v3, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/content/GradientColor;

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    iget-object v5, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v4, v5, v3, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;)V

    return-object v4
.end method
