.class public Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$101(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$001(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    iput-object p1, v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput p2, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
