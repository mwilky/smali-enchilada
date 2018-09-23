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

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object p3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mListRowPresenter:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingTop:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingLeft:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingRight:I

    return-void
.end method


# virtual methods
.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method public final getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method

.method public getItemViewHolder(I)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public final getListRowPresenter()Landroid/support/v17/leanback/widget/ListRowPresenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mListRowPresenter:Landroid/support/v17/leanback/widget/ListRowPresenter;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedItemViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getItemViewHolder(I)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method
