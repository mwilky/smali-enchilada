.class public Landroid/support/v17/leanback/app/RowsSupportFragment;
.super Landroid/support/v17/leanback/app/BaseRowSupportFragment;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;
.implements Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;
    }
.end annotation


# static fields
.field static final ALIGN_TOP_NOT_SET:I = -0x80000000

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RowsSupportFragment"


# instance fields
.field mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mExpand:Z

.field mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mFreezeRows:Z

.field private mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

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

    .line 55
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    .line 145
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    .line 146
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    .line 156
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    .line 330
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 636
    return-void
.end method

.method private freezeRows(Z)V
    .locals 6
    .param p1, "freeze"    # Z

    .line 461
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mFreezeRows:Z

    .line 462
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 463
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 465
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 466
    nop

    .line 467
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 468
    .local v3, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 469
    .local v4, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    .line 470
    .local v5, "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    invoke-virtual {v4, v5, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 465
    .end local v3    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v4    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    .end local v5    # "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2
    .param p0, "ibvh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 539
    if-nez p0, :cond_0

    .line 540
    const/4 v0, 0x0

    return-object v0

    .line 542
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 543
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

    .line 320
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    .line 321
    return-void
.end method

.method static setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 3
    .param p0, "vh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .param p1, "selected"    # Z
    .param p2, "immediate"    # Z

    .line 325
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;

    .line 326
    .local v0, "extra":Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;
    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->animateSelect(ZZ)V

    .line 327
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    .line 328
    return-void
.end method


# virtual methods
.method public enableRowScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    return-void
.end method

.method protected findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 165
    sget v0, Landroid/support/v17/leanback/R$id;->container_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 580
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 584
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 583
    invoke-static {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 280
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_rows_fragment:I

    return v0
.end method

.method public getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowViewHolder(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2
    .param p1, "position"    # I

    .line 270
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 271
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-nez v0, :cond_0

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 274
    :cond_0
    nop

    .line 275
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 274
    invoke-static {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .line 547
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    return v1

    .line 550
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

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

    .line 285
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorDuration:I

    .line 288
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 312
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onDestroyView()V

    .line 313
    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 243
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSubPosition:I

    if-eq v0, p4, :cond_2

    .line 246
    :cond_0
    iput p4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSubPosition:I

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v0, v2, v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 250
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 251
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 257
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;->showTitleView(Z)V

    .line 260
    :cond_4
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    .line 456
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionEnd()V

    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    .line 458
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    .line 447
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    move-result v0

    .line 448
    .local v0, "prepared":Z
    if-eqz v0, :cond_0

    .line 449
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    .line 451
    :cond_0
    return v0
.end method

.method public bridge synthetic onTransitionStart()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionStart()V

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

    .line 293
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentViewId(I)V

    .line 297
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSaveChildrenPolicy(I)V

    .line 299
    iget v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAlignment(I)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 302
    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;->notifyViewCreated(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 4
    .param p1, "windowAlignOffsetFromTop"    # I

    .line 555
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    .line 559
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 561
    .local v0, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_1

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 563
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 565
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetWithPadding(Z)V

    .line 566
    iget v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 568
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 570
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 572
    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 7
    .param p1, "afterTransition"    # Z

    .line 480
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    .line 481
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 482
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 484
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 485
    nop

    .line 486
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 487
    .local v3, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 488
    .local v4, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    .line 489
    .local v5, "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    iget-boolean v6, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v4, v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 484
    .end local v3    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v4    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    .end local v5    # "vh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 6
    .param p1, "expand"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    .line 203
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 204
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 207
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 208
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 209
    .local v3, "view":Landroid/view/View;
    nop

    .line 210
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 211
    .local v4, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    .line 207
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 316
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 317
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 175
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 176
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Item clicked listener must be set before views are created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 220
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 222
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 224
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 225
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 226
    .local v3, "view":Landroid/view/View;
    nop

    .line 227
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 228
    .local v4, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-static {v4}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 224
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 3
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 507
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 508
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-nez v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    const/4 v1, 0x0

    .line 512
    .local v1, "task":Landroid/support/v17/leanback/widget/ViewHolderTask;
    if-eqz p3, :cond_1

    .line 517
    new-instance v2, Landroid/support/v17/leanback/app/RowsSupportFragment$2;

    invoke-direct {v2, p0, p3}, Landroid/support/v17/leanback/app/RowsSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    move-object v1, v2

    .line 531
    :cond_1
    if-eqz p2, :cond_2

    .line 532
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 536
    :goto_0
    return-void
.end method

.method setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 5
    .param p1, "bridgeVh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 411
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 412
    .local v0, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 414
    .local v1, "rowVh":Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    instance-of v2, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v2, :cond_2

    .line 415
    move-object v2, v1

    check-cast v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    .line 417
    .local v2, "view":Landroid/support/v17/leanback/widget/HorizontalGridView;
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v3, :cond_0

    .line 418
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    goto :goto_0

    .line 420
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 423
    :goto_0
    move-object v3, v1

    check-cast v3, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 424
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v3

    .line 425
    .local v3, "bridgeAdapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 426
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    goto :goto_1

    .line 428
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    .line 431
    .end local v2    # "view":Landroid/support/v17/leanback/widget/HorizontalGridView;
    .end local v3    # "bridgeAdapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    :cond_2
    :goto_1
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 435
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 439
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    .line 440
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 443
    :cond_0
    return-void
.end method
