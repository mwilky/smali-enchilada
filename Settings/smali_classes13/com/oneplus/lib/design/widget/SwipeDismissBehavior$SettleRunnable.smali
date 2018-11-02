.class Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
