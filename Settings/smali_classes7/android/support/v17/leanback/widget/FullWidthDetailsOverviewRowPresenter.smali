.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;
    }
.end annotation


# static fields
.field public static final ALIGN_MODE_MIDDLE:I = 0x1

.field public static final ALIGN_MODE_START:I = 0x0

.field static final DEBUG:Z = false

.field public static final STATE_FULL:I = 0x1

.field public static final STATE_HALF:I = 0x0

.field public static final STATE_SMALL:I = 0x2

.field static final TAG:Ljava/lang/String; = "FullWidthDetailsRP"

.field static final sHandler:Landroid/os/Handler;

.field private static sTmpRect:Landroid/graphics/Rect;


# instance fields
.field mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private mActionsBackgroundColor:I

.field private mActionsBackgroundColorSet:Z

.field private mAlignmentMode:I

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field final mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

.field final mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field protected mInitialState:I

.field private mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

.field private mParticipatingEntranceTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setSelectEffectEnabled(Z)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    return-void
.end method

.method private static getNonNegativeHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method private static getNonNegativeWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v2, v3, v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->setContext(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    iget v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    new-instance v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/support/v17/leanback/R$id;->details_overview_actions_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v4, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;

    invoke-direct {v4, p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    return-object v1
.end method

.method public final getActionsBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    return v0
.end method

.method public final getAlignmentMode()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    return v0
.end method

.method public final getInitialState()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_fullwidth_details_overview:I

    return v0
.end method

.method public getOnActionClickedListener()Landroid/support/v17/leanback/widget/OnActionClickedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-object v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isParticipatingEntranceTransition()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyOnBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;->onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v2, v3, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onBind()V

    return-void
.end method

.method protected onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    nop

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_description_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v4

    if-ne v4, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-ne v3, v0, :cond_2

    if-eqz p3, :cond_9

    :cond_2
    iget-object v4, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    invoke-virtual {v7, v8, v9}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    iget v7, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    if-eq v7, v1, :cond_5

    if-eqz v0, :cond_4

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    sget v7, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v6

    move v5, v6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    sget v7, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_2
    nop

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    move v8, v2

    goto :goto_3

    :cond_7
    sget v8, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_3
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    iput v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onUnbind()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final setActionsBackgroundColor(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    return-void
.end method

.method public final setAlignmentMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setInitialState(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    return-void
.end method

.method public final setListener(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-void
.end method

.method public final setParticipatingEntranceTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    return-void
.end method

.method public final setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    iput p2, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :cond_0
    return-void
.end method
