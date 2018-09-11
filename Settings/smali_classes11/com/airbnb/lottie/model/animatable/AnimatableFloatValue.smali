.class public Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;,
        Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;

    .line 14
    invoke-direct {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/Float;)V
    .locals 0
    .param p2, "initialValue"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 20
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Float;
    .param p3, "x2"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInitialValue()Ljava/lang/Float;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getInitialValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
