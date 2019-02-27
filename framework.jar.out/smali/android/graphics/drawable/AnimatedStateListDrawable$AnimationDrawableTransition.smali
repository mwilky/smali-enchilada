.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, -0x1

    :goto_1
    new-instance v4, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;

    invoke-direct {v4, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    const-string v5, "currentIndex"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v2, v6, v1

    const/4 v1, 0x1

    aput v3, v6, v1

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    iput-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public reverse()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method
