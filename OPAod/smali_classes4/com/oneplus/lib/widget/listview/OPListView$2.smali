.class Lcom/oneplus/lib/widget/listview/OPListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    :cond_3
    :goto_1
    return-void
.end method
