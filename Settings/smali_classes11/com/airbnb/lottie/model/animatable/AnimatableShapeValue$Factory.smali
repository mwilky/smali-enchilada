.class public final Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 43
    nop

    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v0

    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    .line 46
    .local v0, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/content/ShapeData;>;"
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    iget-object v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$1;)V

    return-object v1
.end method
