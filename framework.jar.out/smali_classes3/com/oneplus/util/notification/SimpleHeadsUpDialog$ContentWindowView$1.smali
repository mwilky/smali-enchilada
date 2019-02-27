.class Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;
.super Ljava/lang/Object;
.source "SimpleHeadsUpDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->applyEnterAnimation(Landroid/view/View;)V
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
    .param p1, "this$1"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    .line 129
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iput-object p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 140
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-static {v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->access$200(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    .line 141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 135
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v0, v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;->this$1:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-static {v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->access$200(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 144
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 131
    return-void
.end method
