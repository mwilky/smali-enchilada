.class public Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J = 0x1388L

.field private static final MORE_ACTIONS_FADE_MS:I = 0x64

.field static final TAG:Ljava/lang/String; = "DetailsOverviewRowP"


# instance fields
.field mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field final mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mIsStyleLarge:Z

.field private mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mIsStyleLarge:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->setSelectEffectEnabled(Z)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-void
.end method

.method private getCardHeight(Landroid/content/Context;)I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mIsStyleLarge:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_height_large:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_height_small:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private getDefaultBackgroundColor(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->defaultBrandColor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_default_brand_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
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

.method private initDetailsOverview(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 4

    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ActionsItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iput-object v0, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getCardHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v3, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;

    invoke-direct {v3, p0, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    return-void
.end method


# virtual methods
.method bindImageDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 14

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getCardHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_image_margin_vertical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_details_overview_image_margin_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getNonNegativeWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getNonNegativeHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->isImageScaleUpAllowed()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    if-le v5, v6, :cond_0

    const/4 v9, 0x1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mIsStyleLarge:Z

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v9, :cond_1

    if-gt v5, v2, :cond_2

    :cond_1
    if-nez v9, :cond_3

    if-le v6, v2, :cond_3

    :cond_2
    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_6

    if-nez v7, :cond_6

    if-eqz v9, :cond_5

    sub-int v10, v2, v4

    if-le v5, v10, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    const/4 v10, 0x2

    mul-int/2addr v10, v3

    sub-int v10, v2, v10

    if-le v6, v10, :cond_6

    const/4 v7, 0x1

    :cond_6
    :goto_0
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColor:I

    goto :goto_1

    :cond_7
    iget-object v9, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v9

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v11, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    const/4 v11, -0x2

    if-eqz v7, :cond_9

    iget-object v10, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v10, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v10, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/4 v10, -0x1

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_9
    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v12, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_3
    iget-object v10, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-virtual {v10, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->onBindToDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    :cond_a
    return-void
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_details_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-direct {v1, p0, v0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->initDetailsOverview(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    return-object v1
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColor:I

    return v0
.end method

.method public getOnActionClickedListener()Landroid/support/v17/leanback/widget/OnActionClickedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-object v0
.end method

.method public isStyleLarge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mIsStyleLarge:Z

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->bindImageDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->bindActions(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->dispatchItemSelection(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V

    iget-object v2, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mDetailsPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-void
.end method

.method public final setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V

    return-void
.end method

.method public final setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mSharedElementHelper:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V

    return-void
.end method

.method public setStyleLarge(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->mIsStyleLarge:Z

    return-void
.end method
