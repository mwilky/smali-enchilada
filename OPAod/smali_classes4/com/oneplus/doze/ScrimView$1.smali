.class Lcom/oneplus/doze/ScrimView$1;
.super Ljava/lang/Object;
.source "ScrimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/doze/ScrimView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-virtual {v0}, Lcom/oneplus/doze/ScrimView;->invalidate()V

    return-void
.end method
