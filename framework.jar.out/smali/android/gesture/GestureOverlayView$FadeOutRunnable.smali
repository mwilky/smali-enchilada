.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$100(Landroid/gesture/GestureOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$200(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    sub-long v7, v5, v7

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$102(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    const/4 v0, 0x0

    long-to-float v1, v7

    iget-object v2, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v2}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->access$1002(Landroid/gesture/GestureOverlayView;F)F

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const/high16 v2, 0x437f0000    # 255.0f

    iget-object v3, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v3}, Landroid/gesture/GestureOverlayView;->access$1000(Landroid/gesture/GestureOverlayView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->access$1202(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    :goto_1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    return-void
.end method
