.class Lcom/android/internal/widget/MessagingPropertyAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    const v1, 0x1020438

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$3;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->access$100(Landroid/view/View;Z)V

    return-void
.end method
