.class public final Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;
.super Ljava/lang/Object;
.source "SfVsyncFrameCallbackProvider.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public postCommitCallback(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public setFrameDelay(J)V
    .locals 0

    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    return-void
.end method
