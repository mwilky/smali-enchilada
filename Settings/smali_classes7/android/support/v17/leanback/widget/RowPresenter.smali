.class public abstract Landroid/support/v17/leanback/widget/RowPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;
    }
.end annotation


# static fields
.field public static final SYNC_ACTIVATED_CUSTOM:I = 0x0

.field public static final SYNC_ACTIVATED_TO_EXPANDED:I = 0x1

.field public static final SYNC_ACTIVATED_TO_EXPANDED_AND_SELECTED:I = 0x3

.field public static final SYNC_ACTIVATED_TO_SELECTED:I = 0x2


# instance fields
.field private mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

.field mSelectEffectEnabled:Z

.field mSyncActivatePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 311
    new-instance v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    .line 314
    iput v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    .line 321
    iget-object v1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setNullItemVisibilityGone(Z)V

    .line 322
    return-void
.end method

.method private updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .line 454
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 462
    :pswitch_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_1

    .line 459
    :pswitch_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    .line 460
    goto :goto_1

    .line 456
    :pswitch_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    .line 457
    nop

    .line 465
    :goto_1
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->syncActivatedStatus(Landroid/view/View;)V

    .line 466
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 517
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    .line 519
    .local v0, "containerView":Landroid/support/v17/leanback/widget/RowContainerView;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->showHeader(Z)V

    .line 521
    .end local v0    # "containerView":Landroid/support/v17/leanback/widget/RowContainerView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "selected"    # Z

    .line 498
    if-eqz p2, :cond_0

    .line 499
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, p1, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 503
    :cond_0
    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "freeze"    # Z

    .line 669
    return-void
.end method

.method public final getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    return-object v0
.end method

.method public final getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 406
    instance-of v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_0

    .line 407
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object v0

    .line 409
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object v0
.end method

.method public final getSelectEffectEnabled()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return v0
.end method

.method public final getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 539
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    return v0
.end method

.method public final getSyncActivatePolicy()I
    .locals 1

    .line 487
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 374
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isClippingChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 379
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 383
    :cond_1
    return-void
.end method

.method protected isClippingChildren()Z
    .locals 1

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method final needsDefaultSelectEffect()Z
    .locals 1

    .line 591
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needsRowContainerView()Z
    .locals 1

    .line 595
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 610
    iput-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    .line 611
    instance-of v0, p2, Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Row;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 612
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 615
    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 600
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 326
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    .line 327
    .local v0, "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 329
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsRowContainerView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Landroid/support/v17/leanback/widget/RowContainerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, "containerView":Landroid/support/v17/leanback/widget/RowContainerView;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    .line 333
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iput-object v2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    .line 335
    :cond_0
    new-instance v2, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    invoke-direct {v2, v1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;-><init>(Landroid/support/v17/leanback/widget/RowContainerView;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .end local v1    # "containerView":Landroid/support/v17/leanback/widget/RowContainerView;
    move-object v1, v2

    .line 336
    .local v1, "result":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    goto :goto_0

    .line 337
    .end local v1    # "result":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    :cond_1
    move-object v1, v0

    .line 339
    .restart local v1    # "result":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 340
    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    if-eqz v2, :cond_2

    .line 343
    return-object v1

    .line 341
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "super.initializeRowViewHolder() must be called"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 644
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 647
    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 658
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 661
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/RowPresenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 662
    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "expanded"    # Z

    .line 445
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 446
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    .line 447
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "selected"    # Z

    .line 511
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 512
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 513
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    .line 514
    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 551
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    iget v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    .line 553
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    .line 558
    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 557
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->setForegroundColor(I)V

    .line 561
    :cond_1
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 628
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 631
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 632
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    .line 633
    return-void
.end method

.method public final onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 619
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 620
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 637
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 638
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 651
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 652
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "afterEntrance"    # Z

    .line 682
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    .line 683
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 684
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_1
    return-void
.end method

.method public final setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V
    .locals 0
    .param p1, "headerPresenter"    # Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    .line 390
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    .line 391
    return-void
.end method

.method public final setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "expanded"    # Z

    .line 420
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    .line 421
    .local v0, "rowViewHolder":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iput-boolean p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mExpanded:Z

    .line 422
    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 423
    return-void
.end method

.method public final setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "selected"    # Z

    .line 432
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    .line 433
    .local v0, "rowViewHolder":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iput-boolean p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelected:Z

    .line 434
    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 435
    return-void
.end method

.method public final setSelectEffectEnabled(Z)V
    .locals 0
    .param p1, "applyDimOnSelect"    # Z

    .line 569
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    .line 570
    return-void
.end method

.method public final setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "level"    # F

    .line 529
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    .line 530
    .local v0, "rowViewHolder":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iput p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    .line 531
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 532
    return-void
.end method

.method public final setSyncActivatePolicy(I)V
    .locals 0
    .param p1, "syncActivatePolicy"    # I

    .line 476
    iput p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    .line 477
    return-void
.end method
