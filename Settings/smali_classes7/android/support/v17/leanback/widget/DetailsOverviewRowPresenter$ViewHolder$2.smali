.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;
.super Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    .line 142
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionsAdapterChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V
    .locals 2
    .param p1, "row"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 160
    return-void
.end method

.method public onImageDrawableChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V
    .locals 2
    .param p1, "row"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 145
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onItemChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V
    .locals 3
    .param p1, "row"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 155
    return-void
.end method
