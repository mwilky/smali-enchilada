.class Landroid/widget/Editor$MagnifierMotionAnimator;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnifierMotionAnimator"
.end annotation


# static fields
.field private static final DURATION:J = 0x64L


# instance fields
.field private mAnimationCurrentX:F

.field private mAnimationCurrentY:F

.field private mAnimationStartX:F

.field private mAnimationStartY:F

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mLastX:F

.field private mLastY:F

.field private final mMagnifier:Landroid/widget/Magnifier;

.field private mMagnifierIsShowing:Z


# direct methods
.method private constructor <init>(Landroid/widget/Magnifier;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/-$$Lambda$Editor$MagnifierMotionAnimator$E-RaelOMgCHAzvKgSSZE-hDYeIg;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Editor$MagnifierMotionAnimator$E-RaelOMgCHAzvKgSSZE-hDYeIg;-><init>(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/widget/Magnifier;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->update()V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$MagnifierMotionAnimator;->show(FF)V

    return-void
.end method

.method static synthetic access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/widget/Editor$MagnifierMotionAnimator;Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/Magnifier;->show(FF)V

    return-void
.end method

.method private show(FF)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    :goto_1
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v2, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    :cond_3
    :goto_2
    iput p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iput p2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iput-boolean v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    return-void
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->update()V

    return-void
.end method
