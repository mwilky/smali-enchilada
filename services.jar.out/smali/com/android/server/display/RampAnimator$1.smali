.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4, v5}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_3
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_4
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;Z)Z

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_6
    :goto_1
    return-void
.end method
