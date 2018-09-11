.class public Lcom/airbnb/lottie/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/Keyframe$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field public endFrame:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private endProgress:F

.field public final endValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/animation/Keyframe;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "startFrame"    # F
    .param p6, "endFrame"    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    .local p2, "startValue":Ljava/lang/Object;, "TT;"
    .local p3, "endValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->startProgress:F

    .line 62
    iput v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->endProgress:F

    .line 66
    iput-object p1, p0, Lcom/airbnb/lottie/animation/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 67
    iput-object p2, p0, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    .line 68
    iput-object p3, p0, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    .line 69
    iput-object p4, p0, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 70
    iput p5, p0, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    .line 71
    iput-object p6, p0, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    .line 72
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "*>;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/Keyframe;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/Keyframe;

    iget v3, v3, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/Keyframe;

    .line 45
    .local v1, "lastKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<*>;"
    iget-object v2, v1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 100
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/Keyframe;->getEndProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEndProgress()F
    .locals 4

    .line 82
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    iget v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->endProgress:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->endProgress:F

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v0

    .line 87
    .local v0, "startProgress":F
    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    sub-float/2addr v1, v2

    .line 88
    .local v1, "durationFrames":F
    iget-object v2, p0, Lcom/airbnb/lottie/animation/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float v2, v1, v2

    .line 89
    .local v2, "durationProgress":F
    add-float v3, v0, v2

    iput v3, p0, Lcom/airbnb/lottie/animation/Keyframe;->endProgress:F

    .line 92
    .end local v0    # "startProgress":F
    .end local v1    # "durationFrames":F
    .end local v2    # "durationProgress":F
    :cond_1
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->endProgress:F

    return v0
.end method

.method public getStartProgress()F
    .locals 3

    .line 75
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    iget v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->startProgress:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()J

    move-result-wide v1

    long-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->startProgress:F

    .line 78
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->startProgress:F

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 96
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    .local p0, "this":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
