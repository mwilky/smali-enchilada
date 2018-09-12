.class public Lcom/oneplus/doze/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/doze/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/doze/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/doze/ScrimView;->mViewAlpha:F

    .line 43
    new-instance v0, Lcom/oneplus/doze/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/ScrimView$1;-><init>(Lcom/oneplus/doze/ScrimView;)V

    iput-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 51
    new-instance v0, Lcom/oneplus/doze/ScrimView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/ScrimView$2;-><init>(Lcom/oneplus/doze/ScrimView;)V

    iput-object v0, p0, Lcom/oneplus/doze/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/doze/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/doze/ScrimView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 39
    iput-object p1, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/doze/ScrimView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/doze/ScrimView;

    .line 39
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;

    .line 80
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 83
    :cond_0
    iput-object p5, p0, Lcom/oneplus/doze/ScrimView;->mEndRunnable:Ljava/lang/Runnable;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/doze/ScrimView;->mViewAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/doze/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/doze/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iput p1, p0, Lcom/oneplus/doze/ScrimView;->mViewAlpha:F

    .line 96
    return-void
.end method
