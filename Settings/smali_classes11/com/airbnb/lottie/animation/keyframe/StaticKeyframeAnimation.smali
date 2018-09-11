.class public Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "StaticKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TA;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 14
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    .line 23
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Ljava/lang/Object;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 19
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    return-void
.end method
