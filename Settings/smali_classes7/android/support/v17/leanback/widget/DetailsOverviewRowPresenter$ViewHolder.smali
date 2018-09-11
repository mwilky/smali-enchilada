.class public final Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field final mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

.field final mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field final mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

.field public final mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mHandler:Landroid/os/Handler;

.field final mImageView:Landroid/widget/ImageView;

.field final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

.field mNumItems:I

.field final mOverviewFrame:Landroid/widget/FrameLayout;

.field final mOverviewView:Landroid/view/ViewGroup;

.field final mRightPanel:Landroid/view/ViewGroup;

.field final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mShowMoreLeft:Z

.field mShowMoreRight:Z

.field final mUpdateDrawableCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 3
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "detailsPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 266
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    .line 267
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 173
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 184
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 211
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 268
    sget v0, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    .line 269
    sget v0, Landroid/support/v17/leanback/R$id;->details_overview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewView:Landroid/view/ViewGroup;

    .line 270
    sget v0, Landroid/support/v17/leanback/R$id;->details_overview_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 271
    sget v0, Landroid/support/v17/leanback/R$id;->details_overview_right_panel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    .line 274
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_actions:I

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasOverlappingRendering(Z)V

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_actions_fade_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 283
    .local v0, "fadeLength":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdgeLength(I)V

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    .line 285
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    .line 286
    invoke-virtual {p3, v1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 287
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 288
    return-void
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private showMoreLeft(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 247
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    if-eq p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdge(Z)V

    .line 249
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    .line 251
    :cond_0
    return-void
.end method

.method private showMoreRight(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 254
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdge(Z)V

    .line 256
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 164
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 165
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 166
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreRight:Z

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mShowMoreLeft:Z

    .line 170
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

    .line 171
    return-void
.end method

.method checkFirstAndLastPosition(Z)V
    .locals 5
    .param p1, "fromScroll"    # Z

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 231
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 234
    .local v3, "showRight":Z
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    .line 242
    .local v1, "showLeft":Z
    :goto_3
    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreRight(Z)V

    .line 243
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->showMoreLeft(Z)V

    .line 244
    return-void
.end method

.method dispatchItemSelection(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 196
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 197
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 198
    .local v0, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    .line 200
    const/4 v3, 0x0

    invoke-interface {v1, v3, v3, p0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v4

    .line 205
    invoke-interface {v1, v2, v3, p0, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 209
    :cond_3
    :goto_1
    return-void
.end method
