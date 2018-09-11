.class public Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

.field final mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

.field mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field final mListRowPresenter:Landroid/support/v17/leanback/widget/ListRowPresenter;

.field final mPaddingBottom:I

.field final mPaddingLeft:I

.field final mPaddingRight:I

.field final mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/support/v17/leanback/widget/ListRowPresenter;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "gridView"    # Landroid/support/v17/leanback/widget/HorizontalGridView;
    .param p3, "p"    # Landroid/support/v17/leanback/widget/ListRowPresenter;

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    new-instance v0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    .line 72
    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 73
    iput-object p3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mListRowPresenter:Landroid/support/v17/leanback/widget/ListRowPresenter;

    .line 74
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingTop:I

    .line 75
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingLeft:I

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingRight:I

    .line 78
    return-void
.end method


# virtual methods
.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method public final getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method

.method public getItemViewHolder(I)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 2
    .param p1, "position"    # I

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 120
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 121
    .local v0, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    return-object v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public final getListRowPresenter()Landroid/support/v17/leanback/widget/ListRowPresenter;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mListRowPresenter:Landroid/support/v17/leanback/widget/ListRowPresenter;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 135
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 136
    .local v0, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    return-object v1

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedItemViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getItemViewHolder(I)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method
