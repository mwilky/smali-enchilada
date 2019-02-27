.class Lcom/android/internal/widget/ResolverDrawerLayout$5;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;->animateTitleBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$5;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$5;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$500(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$5;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$600(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$5;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$700(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$5;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$800(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
