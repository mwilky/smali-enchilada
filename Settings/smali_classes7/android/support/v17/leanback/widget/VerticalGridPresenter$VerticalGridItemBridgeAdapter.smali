.class Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalGridItemBridgeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    .line 33
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 72
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 73
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 48
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 50
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .end local v0    # "itemView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 36
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 40
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->onViewCreated(Landroid/view/View;)V

    .line 43
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 65
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_0
    return-void
.end method
