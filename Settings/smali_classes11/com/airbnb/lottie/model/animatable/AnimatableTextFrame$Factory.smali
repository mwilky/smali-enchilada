.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
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

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$ValueFactory;->access$000()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$ValueFactory;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    iget-object v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/DocumentData;)V

    return-object v1
.end method
