.class Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->access$100(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->access$200(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->access$202(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v0}, Lcom/android/internal/widget/AutoScrollHelper;->access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2}, Lcom/android/internal/widget/AutoScrollHelper;->access$400(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2}, Lcom/android/internal/widget/AutoScrollHelper;->access$500(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->access$502(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v1}, Lcom/android/internal/widget/AutoScrollHelper;->access$600(Lcom/android/internal/widget/AutoScrollHelper;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$700(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->access$102(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    return-void
.end method
