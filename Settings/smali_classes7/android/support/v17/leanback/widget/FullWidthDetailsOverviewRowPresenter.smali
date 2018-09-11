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

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sTmpRect:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "detailsPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 401
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V
    .locals 2
    .param p1, "detailsPresenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p2, "logoPresenter"    # Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    .line 412
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    .line 384
    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    .line 385
    iput v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    .line 414
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setSelectEffectEnabled(Z)V

    .line 415
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 416
    iput-object p2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    .line 417
    return-void
.end method

.method private static getNonNegativeHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 575
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 576
    .local v1, "height":I
    :goto_0
    if-lez v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method private static getNonNegativeWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 570
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 571
    .local v1, "width":I
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
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 534
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 536
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;)V

    .line 537
    .local v1, "vh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v2, v3, v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->setContext(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    .line 538
    iget v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    .line 540
    new-instance v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 541
    iget-object v2, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    .line 542
    .local v2, "overview":Landroid/view/View;
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_0

    .line 543
    iget v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 545
    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    if-eqz v3, :cond_1

    .line 546
    sget v3, Landroid/support/v17/leanback/R$id;->details_overview_actions_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    .line 547
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    .line 551
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 552
    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_2
    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v4, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;

    invoke-direct {v4, p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    .line 566
    return-object v1
.end method

.method public final getActionsBackgroundColor()I
    .locals 1

    .line 463
    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    return v0
.end method

.method public final getAlignmentMode()I
    .locals 1

    .line 509
    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 446
    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    return v0
.end method

.method public final getInitialState()I
    .locals 1

    .line 491
    iget v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .line 529
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_fullwidth_details_overview:I

    return v0
.end method

.method public getOnActionClickedListener()Landroid/support/v17/leanback/widget/OnActionClickedListener;
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-object v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public final isParticipatingEntranceTransition()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyOnBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 637
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    .line 638
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    .line 639
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;->onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    .line 642
    :cond_0
    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 581
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 583
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 584
    .local v0, "row":Landroid/support/v17/leanback/widget/DetailsOverviewRow;
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 586
    .local v1, "vh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v2, v3, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 587
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 588
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onBind()V

    .line 589
    return-void
.end method

.method protected onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p2, "oldState"    # I
    .param p3, "logoChanged"    # Z

    .line 652
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    .line 653
    .local v0, "v":Landroid/view/View;
    nop

    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 655
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 660
    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 667
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 670
    nop

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 673
    goto :goto_1

    .line 682
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 676
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    .line 677
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_description_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 680
    nop

    .line 685
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    return-void
.end method

.method protected onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 12
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p2, "oldState"    # I
    .param p3, "logoChanged"    # Z

    .line 696
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 697
    .local v3, "wasBanner":Z
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v4

    if-ne v4, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 698
    .local v0, "isBanner":Z
    :goto_1
    if-ne v3, v0, :cond_2

    if-eqz p3, :cond_9

    .line 699
    :cond_2
    iget-object v4, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 702
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 703
    .local v5, "descriptionMarginStart":I
    const/4 v6, 0x0

    .line 704
    .local v6, "logoWidth":I
    iget-object v7, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v8

    .line 705
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 704
    invoke-virtual {v7, v8, v9}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 706
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 708
    :cond_3
    iget v7, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    if-eq v7, v1, :cond_5

    .line 711
    if-eqz v0, :cond_4

    .line 712
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 714
    .local v1, "frameMarginStart":I
    move v5, v6

    goto :goto_2

    .line 716
    .end local v1    # "frameMarginStart":I
    :cond_4
    const/4 v1, 0x0

    .line 717
    .restart local v1    # "frameMarginStart":I
    sget v7, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 720
    goto :goto_2

    .line 722
    .end local v1    # "frameMarginStart":I
    :cond_5
    if-eqz v0, :cond_6

    .line 723
    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v6

    .line 725
    .restart local v1    # "frameMarginStart":I
    move v5, v6

    goto :goto_2

    .line 727
    .end local v1    # "frameMarginStart":I
    :cond_6
    const/4 v1, 0x0

    .line 728
    .restart local v1    # "frameMarginStart":I
    sget v7, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 733
    :goto_2
    nop

    .line 734
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 735
    .local v7, "lpFrame":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_7

    .line 736
    move v8, v2

    goto :goto_3

    .line 735
    :cond_7
    sget v8, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_blank_height:I

    .line 736
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_3
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 737
    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 738
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object v8

    .line 741
    .local v8, "description":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 742
    .local v9, "lpDesc":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 743
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object v10

    .line 746
    .local v10, "action":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 747
    .local v11, "lpActions":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 748
    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_actions_height:I

    .line 749
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    iput v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 750
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    .end local v1    # "frameMarginStart":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "descriptionMarginStart":I
    .end local v6    # "logoWidth":I
    .end local v7    # "lpFrame":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "description":Landroid/view/View;
    .end local v9    # "lpDesc":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "action":Landroid/view/View;
    .end local v11    # "lpActions":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 617
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 618
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 619
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 620
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 621
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 625
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 626
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 627
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 628
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 629
    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 607
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 608
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 610
    .local v0, "vh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 611
    .local v1, "dimmedColor":I
    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 613
    .end local v0    # "vh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .end local v1    # "dimmedColor":I
    :cond_0
    return-void
.end method

.method protected onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p2, "oldState"    # I

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    .line 777
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    .line 778
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 593
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 594
    .local v0, "vh":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onUnbind()V

    .line 595
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 596
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 597
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 598
    return-void
.end method

.method public final setActionsBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 454
    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    .line 456
    return-void
.end method

.method public final setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .line 500
    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    .line 501
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 437
    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    .line 439
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "afterEntrance"    # Z

    .line 783
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 784
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    :cond_1
    return-void
.end method

.method public final setInitialState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 484
    iput p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    .line 485
    return-void
.end method

.method public final setListener(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    .line 522
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mListener:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;

    .line 523
    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnActionClickedListener;

    .line 423
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    .line 424
    return-void
.end method

.method public final setParticipatingEntranceTransition(Z)V
    .locals 0
    .param p1, "participating"    # Z

    .line 477
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    .line 478
    return-void
.end method

.method public final setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p2, "state"    # I

    .line 761
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 762
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    .line 763
    .local v0, "oldState":I
    iput p2, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    .line 764
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onStateChanged(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    .line 766
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method
