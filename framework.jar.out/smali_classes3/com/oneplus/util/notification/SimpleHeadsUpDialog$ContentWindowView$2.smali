.class Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;
.super Ljava/lang/Object;
.source "SimpleHeadsUpDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->applyExitAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iput-object p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
