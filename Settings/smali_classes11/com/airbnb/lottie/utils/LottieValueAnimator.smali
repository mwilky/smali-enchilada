.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "LottieValueAnimator.java"


# instance fields
.field private isReversed:Z

.field private maxProgress:F

.field private minProgress:F

.field private originalDuration:J

.field private progress:F

.field private systemAnimationsAreDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    .line 14
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFloatValues([F)V

    .line 28
    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;-><init>(Lcom/airbnb/lottie/utils/LottieValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;-><init>(Lcom/airbnb/lottie/utils/LottieValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 12
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 12
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/utils/LottieValueAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 12
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/lottie/utils/LottieValueAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/utils/LottieValueAnimator;
    .param p1, "x1"    # F

    .line 12
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    return p1
.end method

.method private setProgressInternal(F)V
    .locals 4
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 89
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 90
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 92
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    .line 94
    :cond_1
    :goto_0
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    .line 95
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 96
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 97
    .local v0, "offsetProgress":F
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setCurrentPlayTime(J)V

    .line 99
    .end local v0    # "offsetProgress":F
    :cond_2
    return-void
.end method


# virtual methods
.method public forceUpdate()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgressInternal(F)V

    .line 86
    return-void
.end method

.method public getMaxProgress()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    return v0
.end method

.method public resumeAnimation()V
    .locals 1

    .line 130
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    .line 131
    .local v0, "startingProgress":F
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->start()V

    .line 133
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    .line 134
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "duration"    # J

    .line 63
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->originalDuration:J

    .line 64
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 65
    return-object p0
.end method

.method public setIsReversed(Z)V
    .locals 2
    .param p1, "isReversed"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    .line 108
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 109
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "maxProgress"    # F

    .line 117
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    .line 118
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 119
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "minProgress"    # F

    .line 112
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    .line 113
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 114
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 75
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgressInternal(F)V

    .line 79
    return-void
.end method

.method public start()V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->end()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    :goto_0
    return-void
.end method

.method public systemAnimationsAreDisabled()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    .line 60
    return-void
.end method

.method public updateValues(FF)V
    .locals 5
    .param p1, "startProgress"    # F
    .param p2, "endProgress"    # F

    .line 143
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 144
    .local v0, "minValue":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 145
    .local v1, "maxValue":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-boolean v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFloatValues([F)V

    .line 149
    iget-wide v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->originalDuration:J

    long-to-float v2, v2

    sub-float v3, v1, v0

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    .line 151
    return-void
.end method
