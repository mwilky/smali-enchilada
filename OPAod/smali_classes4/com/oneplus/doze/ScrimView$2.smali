.class Lcom/oneplus/doze/ScrimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/ScrimView;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/doze/ScrimView;->access$002(Lcom/oneplus/doze/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-static {v0}, Lcom/oneplus/doze/ScrimView;->access$100(Lcom/oneplus/doze/ScrimView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-static {v0}, Lcom/oneplus/doze/ScrimView;->access$100(Lcom/oneplus/doze/ScrimView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
