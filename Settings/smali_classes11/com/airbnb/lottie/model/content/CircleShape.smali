.class public Lcom/airbnb/lottie/model/content/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/CircleShape$Factory;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            ")V"
        }
    .end annotation

    .line 22
    .local p2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 25
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/content/CircleShape$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .param p3, "x2"    # Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .param p4, "x3"    # Lcom/airbnb/lottie/model/content/CircleShape$1;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 29
    new-instance v0, Lcom/airbnb/lottie/animation/content/EllipseContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/EllipseContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V

    return-object v0
.end method
