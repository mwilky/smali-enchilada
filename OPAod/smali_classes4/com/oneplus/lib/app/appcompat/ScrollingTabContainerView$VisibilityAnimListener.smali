.class public Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 1

    iput p2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method
