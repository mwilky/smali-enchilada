.class public Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final convertTypePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;)V
    .locals 1
    .param p2, "initialValue"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ">;>;",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            ")V"
        }
    .end annotation

    .line 21
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p3, "x2"    # Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$1;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/ShapeData;)V

    return-void
.end method


# virtual methods
.method convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;
    .locals 1
    .param p1, "shapeData"    # Lcom/airbnb/lottie/model/content/ShapeData;

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    return-object v0
.end method

.method bridge synthetic convertType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/model/content/ShapeData;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
