.class Landroid/support/v17/leanback/app/DetailsFragment$11;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsFragment;

    .line 474
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 477
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 479
    nop

    .line 481
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 482
    .local v0, "rowVh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->lb_parallax_source:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 485
    .end local v0    # "rowVh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    :cond_0
    return-void
.end method
