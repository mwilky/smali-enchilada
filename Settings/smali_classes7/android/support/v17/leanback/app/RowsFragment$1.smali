.class Landroid/support/v17/leanback/app/RowsFragment$1;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/RowsFragment;

    .line 336
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p2, "type"    # I

    .line 339
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    .line 342
    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 375
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    .line 376
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 377
    .local v0, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 378
    .local v1, "rowVh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 381
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mFreezeRows:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 383
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 401
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 404
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 5
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 346
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 347
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setClipChildren(Z)V

    .line 351
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 352
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 353
    new-instance v2, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;

    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v2, v4, p1}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;-><init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->setExtraObject(Ljava/lang/Object;)V

    .line 357
    invoke-static {p1, v1, v3}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 358
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 362
    .local v1, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    .line 363
    .local v2, "rowVh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 364
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 365
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 390
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 391
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 392
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 397
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 408
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 409
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 412
    :cond_0
    return-void
.end method
