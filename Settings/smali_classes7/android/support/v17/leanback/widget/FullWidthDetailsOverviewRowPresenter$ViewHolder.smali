.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;
    }
.end annotation


# instance fields
.field mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field final mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

.field final mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field final mDetailsDescriptionFrame:Landroid/view/ViewGroup;

.field final mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

.field final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field mNumItems:I

.field final mOverviewFrame:Landroid/widget/FrameLayout;

.field final mOverviewRoot:Landroid/view/ViewGroup;

.field protected final mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

.field final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mState:I

.field final mUpdateDrawableCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V
    .locals 3
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "detailsPresenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p4, "logoPresenter"    # Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    .line 309
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 310
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->createRowListener()Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    .line 201
    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    .line 231
    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 242
    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 269
    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 311
    sget v1, Landroid/support/v17/leanback/R$id;->details_root:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    .line 312
    sget v1, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    .line 313
    sget v1, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    .line 314
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    .line 315
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    sget v2, Landroid/support/v17/leanback/R$id;->details_overview_actions:I

    .line 316
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 317
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasOverlappingRendering(Z)V

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 320
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 322
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_actions_fade_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 324
    .local v0, "fadeLength":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingRightEdgeLength(I)V

    .line 325
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    .line 326
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    .line 327
    invoke-virtual {p3, v1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 328
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 329
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    .line 330
    invoke-virtual {p4, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    .line 331
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 213
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    .line 217
    return-void
.end method

.method checkFirstAndLastPosition(Z)V
    .locals 5
    .param p1, "fromScroll"    # Z

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mNumItems:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 289
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 290
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

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

    .line 292
    .local v3, "showRight":Z
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 293
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

    .line 300
    .local v1, "showLeft":Z
    :goto_3
    return-void
.end method

.method protected createRowListener()Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    .locals 1

    .line 167
    new-instance v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$DetailsOverviewRowListener;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    return-object v0
.end method

.method dispatchItemSelection(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 250
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 254
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 255
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 256
    .local v0, "ibvh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v0, :cond_2

    .line 257
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    .line 258
    const/4 v3, 0x0

    invoke-interface {v1, v3, v3, p0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v3

    .line 264
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v4

    .line 263
    invoke-interface {v1, v2, v3, p0, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 267
    :cond_3
    :goto_1
    return-void
.end method

.method public final getActionsRow()Landroid/view/ViewGroup;
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method

.method public final getDetailsDescriptionFrame()Landroid/view/ViewGroup;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getDetailsDescriptionViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 352
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public final getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    return-object v0
.end method

.method public final getOverviewView()Landroid/view/ViewGroup;
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 374
    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    return v0
.end method

.method onBind()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 221
    .local v0, "row":Landroid/support/v17/leanback/widget/DetailsOverviewRow;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 222
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    .line 223
    return-void
.end method

.method onUnbind()V
    .locals 3

    .line 226
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 227
    .local v0, "row":Landroid/support/v17/leanback/widget/DetailsOverviewRow;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mRowListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    .line 228
    sget-object v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mUpdateDrawableCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
