.class public Landroid/support/v17/leanback/app/RowsFragment;
.super Landroid/support/v17/leanback/app/BaseRowFragment;
.source "RowsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;
.implements Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final ALIGN_TOP_NOT_SET:I = -0x80000000

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RowsFragment"


# instance fields
.field mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mExpand:Z

.field mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mFreezeRows:Z

.field private mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

.field mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private mPresenterMapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field mSelectAnimatorDuration:I

.field mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

.field private mSubPosition:I

.field mViewsCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    .line 150
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    .line 151
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    .line 161
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    .line 335
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$1;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 642
    return-void
.end method

.method private freezeRows(Z)V
    .locals 6
    .param p1, "freeze"    # Z

    .line 466
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mFreezeRows:Z

    .line 467
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 468
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 470
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 471
    nop

    .line 472
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 473
    .local v3, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 474
    .local v4, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    .line 475
    .local v5, "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    invoke-virtual {v4, v5, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 470
    .end local v3    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v4    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    .end local v5    # "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2
    .param p0, "ibvh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 544
    if-nez p0, :cond_0

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 548
    .local v0, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method static setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V
    .locals 2
    .param p0, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .param p1, "expanded"    # Z

    .line 325
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    .line 326
    return-void
.end method

.method static setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 3
    .param p0, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .param p1, "selected"    # Z
    .param p2, "immediate"    # Z

    .line 330
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;

    .line 331
    .local v0, "extra":Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;
    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->animateSelect(ZZ)V

    .line 332
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    .line 333
    return-void
.end method


# virtual methods
.method public enableRowScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    return-void
.end method

.method protected findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 170
    sget v0, Landroid/support/v17/leanback/R$id;->container_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 585
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 589
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 588
    invoke-static {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 285
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_rows_fragment:I

    return v0
.end method

.method public getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowViewHolder(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2
    .param p1, "position"    # I

    .line 275
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 276
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-nez v0, :cond_0

    .line 277
    const/4 v1, 0x0

    return-object v1

    .line 279
    :cond_0
    nop

    .line 280
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 279
    invoke-static {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .line 552
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 553
    return v1

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    .line 293
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 317
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onDestroyView()V

    .line 318
    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSubPosition:I

    if-eq v0, p4, :cond_2

    .line 251
    :cond_0
    iput p4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSubPosition:I

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v0, v2, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 255
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 256
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 262
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object v0

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;->showTitleView(Z)V

    .line 265
    :cond_4
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    .line 461
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionEnd()V

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/RowsFragment;->freezeRows(Z)V

    .line 463
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    .line 452
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    move-result v0

    .line 453
    .local v0, "prepared":Z
    if-eqz v0, :cond_0

    .line 454
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->freezeRows(Z)V

    .line 456
    :cond_0
    return v0
.end method

.method public bridge synthetic onTransitionStart()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 298
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentViewId(I)V

    .line 302
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSaveChildrenPolicy(I)V

    .line 304
    iget v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/RowsFragment;->setAlignment(I)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 307
    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    .line 308
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;->notifyViewCreated(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 4
    .param p1, "windowAlignOffsetFromTop"    # I

    .line 560
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 561
    return-void

    .line 563
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    .line 564
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 566
    .local v0, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_1

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 568
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 570
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetWithPadding(Z)V

    .line 571
    iget v3, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 573
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 575
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 577
    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 7
    .param p1, "afterTransition"    # Z

    .line 485
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    .line 486
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 487
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 489
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 490
    nop

    .line 491
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 492
    .local v3, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 493
    .local v4, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    .line 494
    .local v5, "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iget-boolean v6, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v4, v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 489
    .end local v3    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v4    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    .end local v5    # "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 6
    .param p1, "expand"    # Z

    .line 207
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    .line 208
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 209
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 212
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 213
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 214
    .local v3, "view":Landroid/view/View;
    nop

    .line 215
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 216
    .local v4, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    .line 212
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 321
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 322
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 180
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 181
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Item clicked listener must be set before views are created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 225
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 226
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 227
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 229
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 230
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 231
    .local v3, "view":Landroid/view/View;
    nop

    .line 232
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 233
    .local v4, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-static {v4}, Landroid/support/v17/leanback/app/RowsFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 229
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 3
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 512
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 513
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-nez v0, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    const/4 v1, 0x0

    .line 517
    .local v1, "task":Landroid/support/v17/leanback/widget/ViewHolderTask;
    if-eqz p3, :cond_1

    .line 522
    new-instance v2, Landroid/support/v17/leanback/app/RowsFragment$2;

    invoke-direct {v2, p0, p3}, Landroid/support/v17/leanback/app/RowsFragment$2;-><init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    move-object v1, v2

    .line 536
    :cond_1
    if-eqz p2, :cond_2

    .line 537
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 541
    :goto_0
    return-void
.end method

.method setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 5
    .param p1, "bridgeVh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 416
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 417
    .local v0, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 419
    .local v1, "rowVh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    instance-of v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v2, :cond_2

    .line 420
    move-object v2, v1

    check-cast v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    .line 422
    .local v2, "view":Landroid/support/v17/leanback/widget/HorizontalGridView;
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v3, :cond_0

    .line 423
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 428
    :goto_0
    move-object v3, v1

    check-cast v3, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 429
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v3

    .line 430
    .local v3, "bridgeAdapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 431
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    goto :goto_1

    .line 433
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    .line 436
    .end local v2    # "view":Landroid/support/v17/leanback/widget/HorizontalGridView;
    .end local v3    # "bridgeAdapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    :cond_2
    :goto_1
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 440
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 444
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    .line 445
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 448
    :cond_0
    return-void
.end method
