.class Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;
.super Ljava/lang/Object;
.source "OPFloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

.field final synthetic val$fromUser:Z


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v0, v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v0, v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method
