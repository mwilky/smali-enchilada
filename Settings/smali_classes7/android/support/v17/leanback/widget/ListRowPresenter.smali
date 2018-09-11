.class public Landroid/support/v17/leanback/widget/ListRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_RECYCLED_POOL_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "ListRowPresenter"

.field private static sExpandedRowNoHovercardBottomPadding:I

.field private static sExpandedSelectedRowTopPadding:I

.field private static sSelectedRowTopPadding:I


# instance fields
.field private mBrowseRowsFadingEdgeLength:I

.field private mExpandedRowHeight:I

.field private mFocusZoomFactor:I

.field private mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mKeepChildForeground:Z

.field private mNumRows:I

.field private mRecycledPoolSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoundedCornersEnabled:Z

.field private mRowHeight:I

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 309
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(I)V

    .line 310
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "focusZoomFactor"    # I

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(IZ)V

    .line 325
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "focusZoomFactor"    # I
    .param p2, "useFocusDimmer"    # Z

    .line 338
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    .line 285
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    .line 291
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    .line 292
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    .line 293
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    .line 294
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    .line 339
    invoke-static {p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->isValidZoomIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    .line 343
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    .line 344
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unhandled zoom factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 536
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getHeaderViewHolder()Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    move-result-object v0

    .line 537
    .local v0, "headerViewHolder":Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)I

    move-result v1

    return v1

    .line 541
    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    return v1

    .line 543
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 525
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_row_no_hovercard_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    .line 533
    :cond_0
    return-void
.end method

.method private setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 5
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 549
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I

    move-result v0

    .line 552
    .local v0, "headerSpaceUnderBaseline":I
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingTop:I

    :goto_0
    sub-int/2addr v1, v0

    .line 554
    .local v1, "paddingTop":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-nez v2, :cond_1

    sget v2, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    .end local v0    # "headerSpaceUnderBaseline":I
    :goto_1
    move v0, v2

    .line 556
    .local v0, "paddingBottom":I
    goto :goto_2

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingTop":I
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    sub-int v1, v0, v1

    .line 558
    .restart local v1    # "paddingTop":I
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    .restart local v0    # "paddingBottom":I
    goto :goto_2

    .line 560
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingTop":I
    :cond_3
    const/4 v1, 0x0

    .line 561
    .restart local v1    # "paddingTop":I
    iget v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    .line 563
    .restart local v0    # "paddingBottom":I
    :goto_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    iget v3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingLeft:I

    iget v4, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingRight:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setPadding(IIII)V

    .line 565
    return-void
.end method

.method private setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V
    .locals 4
    .param p1, "rowView"    # Landroid/support/v17/leanback/widget/ListRowView;

    .line 630
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    .line 631
    .local v0, "gridView":Landroid/support/v17/leanback/widget/HorizontalGridView;
    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    if-gez v1, :cond_0

    .line 632
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    .line 633
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 634
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsFadingEdgeLength:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    .line 636
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 638
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    .line 639
    return-void
.end method

.method private updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 612
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->init(Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 617
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 619
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v1

    .line 618
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 620
    .local v0, "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v17/leanback/widget/ListRowPresenter;->selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V

    .line 621
    .end local v0    # "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    goto :goto_1

    .line 622
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    .line 626
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "rowViewHolder"    # Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    .param p2, "childView"    # Landroid/view/View;

    .line 836
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 838
    .local v0, "dimmedColor":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v1, p2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setOverlayColor(Landroid/view/View;I)V

    .line 840
    .end local v0    # "dimmedColor":I
    :cond_0
    return-void
.end method

.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 569
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->initStatics(Landroid/content/Context;)V

    .line 570
    new-instance v0, Landroid/support/v17/leanback/widget/ListRowView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "rowView":Landroid/support/v17/leanback/widget/ListRowView;
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V

    .line 572
    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 575
    :cond_0
    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/support/v17/leanback/widget/ListRowPresenter;)V

    return-object v1
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    .line 792
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "selected"    # Z

    .line 584
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 585
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 586
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 587
    .local v1, "itemViewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 588
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 589
    return-void

    .line 592
    :cond_0
    if-eqz p2, :cond_1

    .line 593
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v2

    .line 595
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v5

    .line 594
    invoke-interface {v2, v3, v4, v0, v5}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 598
    :cond_1
    return-void
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 744
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    .line 745
    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "freeze"    # Z

    .line 844
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 845
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setScrollEnabled(Z)V

    .line 846
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAnimateChildLayout(Z)V

    .line 847
    return-void
.end method

.method public getExpandedRowHeight()I
    .locals 1

    .line 380
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    :goto_0
    return v0
.end method

.method public final getFocusZoomFactor()I
    .locals 1

    .line 387
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method public final getHoverCardPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public getRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;)I
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 477
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    return v0
.end method

.method public getRowHeight()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    return v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    .line 736
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    return v0
.end method

.method public final getZoomFactor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 416
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 417
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 418
    .local v0, "rowViewHolder":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 419
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 420
    new-instance v2, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    .line 421
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultListSelectEffect()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultShadow()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 423
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingOutlineClipping(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->areChildRoundedCornersEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    move v5, v4

    goto :goto_0

    .line 424
    :cond_0
    nop

    .line 423
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 425
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    .line 426
    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    .line 429
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    new-instance v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v2, v5}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 434
    :cond_1
    new-instance v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    iput-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 436
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 437
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v5, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 439
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v5, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    invoke-static {v2, v5, v6}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 441
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 443
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v3, Landroid/support/v17/leanback/widget/ListRowPresenter$1;

    invoke-direct {v3, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 450
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v3, Landroid/support/v17/leanback/widget/ListRowPresenter$2;

    invoke-direct {v3, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    .line 459
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    .line 460
    return-void
.end method

.method public final isFocusDimmerUsed()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    return v0
.end method

.method public final isKeepChildForeground()Z
    .locals 1

    .line 779
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    return v0
.end method

.method public isUsingDefaultListSelectEffect()Z
    .locals 1

    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    .line 697
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingOutlineClipping(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 718
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/system/Settings;->isOutlineClippingDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 706
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/system/Settings;->preferStaticShadows()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final needsDefaultListSelectEffect()Z
    .locals 1

    .line 463
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultListSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needsDefaultShadow()Z
    .locals 1

    .line 755
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 655
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 656
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 657
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/ListRow;

    .line 658
    .local v1, "rowItem":Landroid/support/v17/leanback/widget/ListRow;
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 659
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 660
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ListRow;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "expanded"    # Z

    .line 643
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 644
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 645
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 646
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result v1

    .line 647
    .local v1, "newHeight":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 649
    .end local v1    # "newHeight":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 650
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 651
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "selected"    # Z

    .line 602
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 603
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 604
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 605
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 606
    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 811
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 812
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 813
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 814
    iget-object v3, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/ListRowPresenter;->applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 665
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 666
    .local v0, "vh":Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 667
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->clear()V

    .line 668
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 669
    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V
    .locals 5
    .param p1, "rowViewHolder"    # Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fireEvent"    # Z

    .line 499
    if-eqz p2, :cond_2

    .line 500
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 502
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 504
    .local v0, "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2, v3}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->select(Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/view/View;Ljava/lang/Object;)V

    .line 508
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v4, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-interface {v1, v2, v3, p1, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 512
    .end local v0    # "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    .line 517
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 518
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, p1, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 522
    :cond_4
    :goto_0
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "afterEntrance"    # Z

    .line 852
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 853
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setChildrenVisibility(I)V

    .line 855
    return-void
.end method

.method public setExpandedRowHeight(I)V
    .locals 0
    .param p1, "rowHeight"    # I

    .line 373
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    .line 374
    return-void
.end method

.method public final setHoverCardPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0
    .param p1, "selector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 485
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 486
    return-void
.end method

.method public final setKeepChildForeground(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .line 767
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    .line 768
    return-void
.end method

.method public setNumRows(I)V
    .locals 0
    .param p1, "numRows"    # I

    .line 411
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    .line 412
    return-void
.end method

.method public setRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p2, "size"    # I

    .line 470
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public setRowHeight(I)V
    .locals 0
    .param p1, "rowHeight"    # I

    .line 354
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    .line 355
    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 727
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    .line 728
    return-void
.end method
