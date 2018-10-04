.class Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private scheduleCallback()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    iget-object v1, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    return-void
.end method

.method public removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    const/4 v3, 0x0

    nop

    :goto_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RenderNodeAnimator;

    invoke-static {v4, v0, v1}, Landroid/view/RenderNodeAnimator;->access$000(Landroid/view/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v3, v2, :cond_0

    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    :cond_4
    return-void
.end method
