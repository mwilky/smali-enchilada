.class Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerViewHolder"
.end annotation


# instance fields
.field final mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/RowContainerView;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1
    .param p1, "containerView"    # Landroid/support/v17/leanback/widget/RowContainerView;
    .param p2, "rowViewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 128
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    iget-object v0, p2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowContainerView;->addRowView(Landroid/view/View;)V

    .line 130
    iget-object v0, p2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowContainerView;->addHeaderView(Landroid/view/View;)V

    .line 133
    :cond_0
    iput-object p2, p0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 134
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    iput-object p0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    .line 135
    return-void
.end method
