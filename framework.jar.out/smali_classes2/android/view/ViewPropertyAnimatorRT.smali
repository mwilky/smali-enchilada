.class Landroid/view/ViewPropertyAnimatorRT;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorRT.java"


# static fields
.field private static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimators:[Landroid/view/RenderNodeAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/RenderNodeAnimator;

    iput-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    iput-object p1, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    return-void
.end method

.method private canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->hasActions()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private cancelAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    iget v3, v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    invoke-static {v3}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/RenderNodeAnimator;->cancel()V

    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doStartAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 12

    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-static {v5}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/android/internal/view/animation/FallbackLUTInterpolator;

    invoke-direct {v6, v5, v3, v4}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;-><init>(Landroid/animation/TimeInterpolator;J)V

    move-object v5, v6

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    iget-object v7, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    iget v8, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    invoke-static {v8}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    move-result v8

    iget v9, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v10, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    add-float/2addr v9, v10

    new-instance v10, Landroid/view/RenderNodeAnimator;

    invoke-direct {v10, v8, v9}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v10, v1, v2}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v10, v3, v4}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v10, v5}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v11, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aput-object v10, v11, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startAnimation(Landroid/view/ViewPropertyAnimator;)Z
    .locals 1

    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/view/ViewPropertyAnimatorRT;->cancelAnimators(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->doStartAnimation(Landroid/view/ViewPropertyAnimator;)V

    const/4 v0, 0x1

    return v0
.end method
